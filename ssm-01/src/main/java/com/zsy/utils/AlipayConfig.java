package com.zsy.utils;

import javax.servlet.http.HttpServletRequest;
import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
    HttpServletRequest request;
    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2021000117610317";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC2pmbX/6AaIjPvJNQQYDeQb2S88SETgvI34l9i5/Qh0YbSUstOxCy20zy/6HB2tVR9kwSxLuqnhjlmLZARHaDlz/zeV4aJHXznuW+kfr+aT/9kyVOZ9ZtvdUg626D+YXGkX5UGeMGm8w1wsm27xhKYWbjKZPBEVScjVNVEZIFKvvEBH0uAgUtZoK6bW/BgOLvbtNA0sDjZ0fr9o+tCGtrCt661enjNNBuBeIPcbkJV3U/xEzJ/eUFpEA1cJwH7+HeWoKjvl+qiskSm31Vx3zKr2Ze9XYUBXhAqFmGaLt7Rn09H4cbvFILSG6mG8LyGMdUYp5nFPmbUFBKOhId7VkxxAgMBAAECggEBAIxh+xu7Io/Th/0fXkqz2SEPLOs3nceEVqzzNYMsamxvwWL4NcD1cLSYSNHrUj07A5R8oheYysw1kvpgvKEbF6ZqpJ0zwniyjGUCFrfkn1l4cQBC6RmlN3GEQB7U3bmGpbTDriPKPnUVzFe5HDQ9ed9U3n3Y9P5gQHOcaUpmwSTzrol1gUoYbT8VmjnT6CkifyALbrNqGRBl7m04v3l4DzrsuJqUmLaC/8NayvqLhUuQK6Vvas/HFnnYpdNi0epGl11Fkk/PwHp/BLRZb1TiAJAub2OjXOkiDJgRZm05Xnct+ig8ba3LjBgqBn0qrCGdJqHnzw1PKVVJ2fckFI4pG8ECgYEA3Nr7LRcLgofXG7YsCzOOe+9deC4WWaZQKqkeOxTHvwf9eMeIg0yI9pWUExoDvBWT8mthHLP0AC7afozm9r2enGpVT8znROx/QuLCD8cm67Enc5ajp/7FQKlOEzUJU2wvNv4htCk7A4EOVjSFbI2h2I9NXYSS9ZjOgvqCMTiAUQkCgYEA07cKwmth9Op5DGaD84WFO+uyrx3eag6W4C0MFKm4m7YxuRyrsy7qkd5iyNQmmGji+fjtEvKrf2tw0vfNthGo7FOSEgMSoeN5jueK0o/C/QvZPc+2oh5/tzGhgrbPVx31U0wmtzbaaFno7Ym4AKun4yE/7LBTlirVrEcjpyT9QikCgYAmRNuZKJEaASfI6XwgRMK/vu5XUMUWq7bgbYWLf0JNW7kUIJ8LAUwKTkjmNm/HO4XzT5/4NUZmcbfyjb/HqXu+Zr55oWvBialTka9GxJ9936iSYtvg1Eiht7SLp3kCN5DG2qpEaZCMPuSZE2i7Mp+EwvAI8Fv2qo++KmI83Sl+4QKBgDtA0WwUbbgEH5jO4EM5rU5V6w6Dx4nbR3K6aNUnoxlBZq0uTwe5K8FjgjY+2gZx5ISdnIxfCoyA33TMEfDRBHwP76PG5GIWriDGwN2piqMTu9tG1RCOhKQa6d8RlvoE0nJbr8I7QelOsJg6oRre7//rgF6YAuzWVDMBPgM7oP3xAoGBAMLXqqamBv4x8rp667txV/y9uhEnX0qJd/KXvgXzN64PyUVjazoQwqeRJQEVMlcU9zQgyIz4DTbJa4V+2XUxeE6jtjpmgwhoqga/vq/UrkjmpyP0Ymz850u7PRmx8zrMvAFolrUG26uymgnyGivxD5H/Wg8Ep4kn4dP/l5MoB0sF";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAr1b4IoGbmPCflj9bJ6I1n/qPv3sI4Ud+3QiLKXx99VR6ynKgrU09l2qaR8wBii74TOhYReNzMCX/8h+WLo0ygzNLcBqVrgu/W/+g22HNeZoCz4llqb6WHzDzZOhA1tLlydRXsKpYNEApvW78IL24D0GOtUTNmh0M1sYXzNHNQHGvNEMBJK5OL6BGrPzJ0wwU1bO2knwn7tqLEmtlJsiV+iLwNP6Bq2uRBHtJINCUb3tUFZ8CcRCsShAMWAP5gzrMq6Y+jCEgb2KF0DZdzzKiPSXvbDZ/Gw7ZZEJQ82UqPLik2Dw7ib04YW9ih+wc1XR88OZMa6bE27t/c9M6/zfjKwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//    public static String notify_url = "http://39.107.229.15:8080/notify";
    public static String notify_url = "http://localhost:8080/notify";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//    public static String return_url = "http://39.107.229.15:8080/return";
    public static String return_url = "http://localhost:8080/return";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 日志目录
    public static String log_path = "./";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
