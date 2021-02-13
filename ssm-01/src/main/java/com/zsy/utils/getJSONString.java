package com.zsy.utils;

import com.alibaba.fastjson.JSONObject;

public class getJSONString {
    private Integer code;

    private String msg;

    public static String getJSONString(int code, String msg) {
        JSONObject json = new JSONObject();
        json.put("code", code);
        json.put("msg", msg);
        return json.toJSONString();
    }

}
