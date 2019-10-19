package com.ori.common.exception.user;

import com.ori.common.exception.base.BaseException;

/**
 * 用户信息异常类
 * 
 * @author ori
 */
public class UserException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public UserException(String code, Object[] args)
    {
        super("user", code, args, null);
    }

}
