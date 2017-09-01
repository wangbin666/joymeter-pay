package com.joymeter.accessToken.util;




import org.springframework.stereotype.Component;

import com.joymeter.accessToken.bean.AccessToken;
import com.joymeter.common.util.HttpUtil;
import com.joymeter.weixin.bean.Weixin;

import net.sf.json.JSONObject;
@Component
public class AccessTokenUtil {
	/**
	 * 获取accessToken
	 * @param appID		微信公众号凭证
	 * @param appScret	微信公众号凭证秘钥
	 * @return
	 */

	private AccessToken accessToken;


	   
	
	public  AccessToken getAccessToken() {
	
        accessToken = AccessToken.getAccessToken() ;
		

		// 访问微信服务器
		String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + Weixin.appId + "&secret="
				+ Weixin.appSecret;
		JSONObject json =   HttpUtil.httpRequest(url, "GET");
		System.out.println(json);
		accessToken.setAccess_token(json.getString("access_token"));
		accessToken.setExpires_in(new Integer(json.getString("expires_in")));
		return accessToken;
}
}