package com.ori.project.system.mutual_evaluation.tool;

/**
 * @author : Ori
 * @date : 2019/10/11
 */
public class ScoreCalculation {

    /**
     * A 项 二级指标计算
     * @param A_group_sum
     * @param A_grade_sum
     * @param A_tea
     * @return 二级指标分数字符串
     */
    public static String A_calculation(String A_group_sum,String A_grade_sum,String A_tea){

        int[] a2 = StringToInt(A_group_sum.split(","));
        int[] a3 = StringToInt(A_grade_sum.split(","));
        int[] a1 = StringToInt(A_tea.split(","));

        int[] a = new int[10];

        for(int i = 0;i < 10;i++){
            a[i] = (int)Math.round((float)(a1[i] * 0.5 + a2[i] * 0.3 + a3[i] * 0.2));
        }
        return ArrayTransformString(a);
    }

    /**
     * B 项 三级指标计算
     * @param B_tea
     * @return 三级级指标分数字符串
     */
    public static String B1_calculation(String B_tea){
        int[] b2 = StringToInt(B_tea.split(","));

        int[] b1 = new int[10];

        b1[0] = (int) Math.round(b2[0] * 0.5 + b2[1] * 0.5);
        b1[1] = (int) Math.round(b2[2] * 0.3 + b2[3] * 0.2 + b2[4] * 0.5);
        b1[2] = (int) Math.round(b2[5] * 0.3 + b2[6] * 0.2 + b2[7] * 0.5);
        b1[3] = (int) Math.round(b2[8] * 0.3 + b2[9] * 0.4 + b2[10] * 0.3);
        b1[4] = (int) Math.round(b2[11] * 0.3 + b2[12] * 0.4 + b2[13] * 0.3);
        b1[5] = (int) Math.round(b2[14] * 0.3 + b2[15] * 0.4 + b2[16] * 0.3);
        b1[6] = (int) Math.round(b2[17] * 0.5 + b2[18] * 0.5);
        b1[7] = (int) Math.round(b2[19] * 0.5 + b2[20] * 0.5);
        b1[8] = (int) Math.round(b2[21] * 0.5 + b2[22] * 0.5);
        b1[9] = (int) Math.round(b2[23] * 0.5 + b2[24] * 0.5);

        return ArrayTransformString(b1);
    }


    /**
     *  B 项 二级指标计算
     * @param B_tea
     * @return 二级指标分数字符串
     */
    public static String B_calculation(String   B_tea) {
        int[] b2 = StringToInt(B_tea.split(","));

        int[] b1 = new int[10];

        b1[0] = (int) Math.round(b2[0] * 0.5 + b2[1] * 0.5);
        b1[1] = (int) Math.round(b2[2] * 0.3 + b2[3] * 0.2 + b2[4] * 0.5);
        b1[2] = (int) Math.round(b2[5] * 0.3 + b2[6] * 0.2 + b2[7] * 0.5);
        b1[3] = (int) Math.round(b2[8] * 0.3 + b2[9] * 0.4 + b2[10] * 0.3);
        b1[4] = (int) Math.round(b2[11] * 0.3 + b2[12] * 0.4 + b2[13] * 0.3);
        b1[5] = (int) Math.round(b2[14] * 0.3 + b2[15] * 0.4 + b2[16] * 0.3);
        b1[6] = (int) Math.round(b2[17] * 0.5 + b2[18] * 0.5);
        b1[7] = (int) Math.round(b2[19] * 0.5 + b2[20] * 0.5);
        b1[8] = (int) Math.round(b2[21] * 0.5 + b2[22] * 0.5);
        b1[9] = (int) Math.round(b2[23] * 0.5 + b2[24] * 0.5);

        int[] b = new int[5];

        b[0] = (int) Math.round(b1[0] * 0.5 + b1[1] * 0.3 + b1[2] * 0.2);
        b[1] = (int) Math.round(b1[3] * 0.6 + b1[4] * 0.4);
        b[2] = b1[5];
        b[3] = (int) Math.round(b1[6] * 0.5 + b1[7] * 0.5);
        b[4] = (int) Math.round(b1[8] * 0.2 + b1[9] * 0.8);

        return ArrayTransformString(b);

    }

    /**
     * 总分计算
     * @param A
     * @param B
     * @param C
     * @return 总分数值
     */
    public static int calculation(String A,String B,String C) {
        int a[] = StringToInt(A.split(","));
        int b[] = StringToInt(B.split(","));
        int c[] = StringToInt(C.split(","));

        int aa = 0;
        for(int i =0;i < 10; i++){
            aa = aa + (int)Math.round(a[i] * 0.1);
        }

        int bb = (int)Math.round(b[0] * 0.3 + b[1] * 0.2 + b[2] * 0.15 + b[3] * 0.15 + b[4] *0.2);

        int cc = 0;
        for(int i =0;i < 8; i++){
            cc = cc + (int)Math.round(c[i] * 0.125);
        }
        return (int)Math.round(aa * 0.4 + bb * 0.3 + cc * 0.3);
    }

    //创新素养 分值
    public static int Acalculation(String A){
        int a[] = StringToInt(A.split(","));
        int aa = 0;
        for(int i =0;i < 10; i++){
            aa = aa + (int)Math.round(a[i] * 0.1);
        }
        return aa;
    }

    //创新能力 分值
    public static int Bcalculation(String B){
        int b[] = StringToInt(B.split(","));
        return  (int)Math.round(b[0] * 0.3 + b[1] * 0.2 + b[2] * 0.15 + b[3] * 0.15 + b[4] *0.2);
    }

    //创新知识分值
    public static int Ccalculation(String C){
        int c[] = StringToInt(C.split(","));
        int cc = 0;
        for(int i =0;i < 8; i++){
            cc = cc + (int)Math.round(c[i] * 0.125);
        }
        return cc;
    }



    private static int[] StringToInt(String[] arrs){
        int[] ints = new int[arrs.length];
        for(int i=0;i<arrs.length;i++){
            ints[i]=Integer.parseInt(arrs[i]);
        }
        return ints;
    }
    //采用字符串拼接形式转换，","分号隔开
    private static String ArrayTransformString(int[] SafetyMeasure) {
        StringBuffer sb = new StringBuffer();
        for(int i=0;i<SafetyMeasure.length;i++){
            sb.append(SafetyMeasure[i]+",");
        }
        return sb.toString();
    }


}
