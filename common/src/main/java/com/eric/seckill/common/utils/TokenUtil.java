package com.eric.seckill.common.utils;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;

/**
 * 生成token
 *
 * @author wang.js on 2019/1/30.
 * @version 1.0
 */
public class TokenUtil {

	/**
	 * 根据用户信息获取token
	 *
	 * @param userId
	 * @param password
	 * @return
	 */
	public static String getToken(String userId, String password) {
		return JWT.create().withAudience(userId)
				.sign(Algorithm.HMAC256(password));
	}

}
