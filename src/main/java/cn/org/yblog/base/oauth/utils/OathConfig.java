package cn.org.yblog.base.oauth.utils;

import cn.org.yblog.base.oauth.APIConfig;


public class OathConfig {
    public static String getValue(String key) {
        return APIConfig.getInstance().getValue(key);
    }
}
