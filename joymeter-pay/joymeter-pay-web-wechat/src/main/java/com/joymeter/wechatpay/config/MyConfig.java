package com.joymeter.wechatpay.config;

import com.github.wxpay.sdk.WXPayConfig;
import com.joymeter.weixin.bean.Weixin;

import java.io.*;
/**
 * 微信公共号配置信息
 * appID
 * MchId
 * secretkey
 * @author Administrator
 *
 */
public class MyConfig implements WXPayConfig{

    private byte[] certData;

    public MyConfig() throws Exception {
    	String certPath = "C:\\Program Files\\Pay\\ss.p12";
        File file = new File(certPath);
        InputStream certStream = new FileInputStream(file);
        this.certData = new byte[(int) file.length()];
        certStream.read(this.certData);
        certStream.close();
    }

    public String getAppID() {
        return Weixin.appId;  
    }

    public String getMchID() {
        return Weixin.mchId;       }

    public String getKey() {
        return Weixin.apiKey;
    }

    public InputStream getCertStream() {
        ByteArrayInputStream certBis = new ByteArrayInputStream(this.certData);
        return certBis;
    }

    public int getHttpConnectTimeoutMs() {
        return 8000;
    }

    public int getHttpReadTimeoutMs() {
        return 10000;
    }
}
