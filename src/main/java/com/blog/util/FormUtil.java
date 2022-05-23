package com.blog.util;

import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;

public class FormUtil {
    @SuppressWarnings("deprecation")
    public static <T> T toModel(Class<T> tClass, HttpServletRequest req) {
        T model = null;
        try {
            model = tClass.newInstance();
            BeanUtils.populate(model, req.getParameterMap());
        } catch (InvocationTargetException | InstantiationException | IllegalAccessException e) {
            e.printStackTrace();
        }
        return model;
    }
}
