package com.ori.project.system.mutual_evaluation.controller;

import com.ori.project.system.mutual_evaluation.domain.Student;
import com.ori.project.system.mutual_evaluation.service.IUploadExcelService;
import io.swagger.annotations.ApiOperation;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * @author : Ori
 * @date : 2019/10/8
 */
@RestController
public class UploadExcelController {

    @Autowired
    private IUploadExcelService iUploadExcelService;

    @ApiOperation(value = "导入excel数据")
    @RequestMapping(value = "/uploadExcel", method = RequestMethod.POST)
    public ModelAndView uploadExcel(@RequestParam MultipartFile file, HttpServletRequest request) throws Exception {

        ModelAndView mav = new ModelAndView(new MappingJackson2JsonView());
        try {
//            if(file==null)
//                return BaseCode.retCode(1, "上传文件不能为空").toString();
            String fileName = file.getOriginalFilename();
//            if (!fileName.matches("^.+\\.(?i)(xls)$") && !fileName.matches("^.+\\.(?i)(xlsx)$")) {
//                return BaseCode.retCode(1, "上传文件格式错误，请上传后缀为.xls或.xlsx的文件").toString();
//            }

            boolean isExcel2003 = true;
            if (fileName.matches("^.+\\.(?i)(xlsx)$")) {
                isExcel2003 = false;
            }
            InputStream is = file.getInputStream();
            Workbook wb = null;
            if (isExcel2003) {
                wb = new HSSFWorkbook(is);
            } else {
                wb = new XSSFWorkbook(is);
            }
            Sheet sheet = wb.getSheetAt(0);
            if (sheet != null) {
                //notNull = true;
            }
            //识别导入身份为学生或者老师
            if (sheet.getRow(1).getCell(0).getStringCellValue().equals("老师")) {
                List<Student> list = new ArrayList<Student>();

                for (int r = 1; r <= this.getRealRow(sheet); r++) {
                    Row row = sheet.getRow(r);
                    if (row == null) {
                        continue;
                    }
                    Student student = new Student();
                    //获取表中某一行值存入 list中
                    student.setSchool(row.getCell(1).getStringCellValue());
                    student.setDepartment(row.getCell(2).getStringCellValue());
                    // 将区域编号的cell中的内容当做字符串处理
                    row.getCell(3).setCellType(HSSFCell.CELL_TYPE_STRING);
                    student.setId(row.getCell(3).getStringCellValue());
                    student.setName(row.getCell(4).getStringCellValue());
                    student.setSex(row.getCell(5).getStringCellValue());
                    // 将区域编号的cell中的内容当做字符串处理
                    row.getCell(6).setCellType(HSSFCell.CELL_TYPE_STRING);
                    student.setPhone(row.getCell(6).getStringCellValue());
                    // 将区域编号的cell中的内容当做字符串处理
                    row.getCell(7).setCellType(HSSFCell.CELL_TYPE_STRING);
                    student.setGroupNum(row.getCell(7).getStringCellValue());
                    student.setIdentity(row.getCell(0).getStringCellValue());


                    list.add(student);
                }
                mav.addObject("message", iUploadExcelService.IdComparison1(list));
            }else{
                List<Student> list = new ArrayList<Student>();

                for (int r = 1; r <= this.getRealRow(sheet); r++) {
                    Row row = sheet.getRow(r);
                    if (row == null) {
                        continue;
                    }
                    Student student = new Student();
                    //获取表中某一行值存入 list中
                    student.setSchool(row.getCell(1).getStringCellValue());
                    student.setDepartment(row.getCell(2).getStringCellValue());
                    student.setGrade(row.getCell(3).getStringCellValue());
                    // 将区域编号的cell中的内容当做字符串处理
                    row.getCell(4).setCellType(HSSFCell.CELL_TYPE_STRING);
                    student.setId(row.getCell(4).getStringCellValue());
                    student.setName(row.getCell(5).getStringCellValue());
                    student.setSex(row.getCell(6).getStringCellValue());
                    // 将区域编号的cell中的内容当做字符串处理
                    row.getCell(7).setCellType(HSSFCell.CELL_TYPE_STRING);
                    student.setPhone(row.getCell(7).getStringCellValue());
                    // 将区域编号的cell中的内容当做字符串处理
                    row.getCell(8).setCellType(HSSFCell.CELL_TYPE_STRING);
                    student.setGroupNum(row.getCell(8).getStringCellValue());
                    student.setIdentity(row.getCell(0).getStringCellValue());
                    student.setTerm(row.getCell(9).getStringCellValue());


                    list.add(student);
                }
                mav.addObject("message", iUploadExcelService.IdComparison(list));
            }

            return mav;
        } catch (Exception e) {
            mav.addObject("message","提交失败,请检查！");
            return mav;
        }
//        return BaseCode.retCode(ResultCode.success).toString();
    }

    //获取真实行数
    private int getRealRow(Sheet sheet) {
        CellReference cellReference = new CellReference("A4");
        boolean flag = false;
        for (int i = cellReference.getRow(); i <= sheet.getLastRowNum(); ) {
            Row r = sheet.getRow(i);
            if (r == null) {
                //如果是空行（即没有任何数据、格式），直接把它以下的数据往上移动
                sheet.shiftRows(i + 1, sheet.getLastRowNum(), -1);
                continue;
            }
            flag = false;
            for (Cell c : r) {
                if (c.getCellType() != Cell.CELL_TYPE_BLANK) {
                    flag = true;
                    break;
                }
            }
            if (flag) {
                i++;
                continue;
            } else {//如果是空白行（即可能没有数据，但是有一定格式）
                if (i == sheet.getLastRowNum()) {
                    //如果到了最后一行，直接将那一行remove掉
                    sheet.removeRow(r);
                } else {
                    //如果还没到最后一行，则数据往上移一行
                    sheet.shiftRows(i + 1, sheet.getLastRowNum(), -1);
                }
            }
        }
        return (sheet.getLastRowNum() + 1);
    }
}
