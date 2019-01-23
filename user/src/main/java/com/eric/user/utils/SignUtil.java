package com.eric.user.utils;


import org.apache.commons.codec.digest.DigestUtils;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.TreeMap;

/**
 * 加密工具类
 *
 * @author Eric on 2018/5/1.
 * @version 1.0
 */
public class SignUtil {

	private SignUtil() {

	}

	public static final String[] DEFAULT_EXCLUDE = new String[]{"serialVersionUID", "sign"};

	/**
	 * 获取签名
	 *
	 * @param map           待签名的map
	 * @param appPrivateKey 秘钥
	 * @return String
	 */
	private static String getSign(TreeMap<String, Object> map, String appPrivateKey) {
		StringBuilder sb = new StringBuilder();
		for (String key : map.keySet()) {
			sb.append(key).append(map.get(key));
		}
		sb.append(appPrivateKey);
		return DigestUtils.md5Hex(sb.toString());
	}

	/**
	 * object对象获取签名
	 *
	 * @param param         待签名的对象
	 * @param appPrivateKey 秘钥
	 * @return String
	 */
	public static String getSignForObject(Object param, String appPrivateKey, String[] excludeField) {
		TreeMap<String, Object> treeMap = new TreeMap<>();
		// 放入子类所有的属性
		for (Field f : param.getClass().getDeclaredFields()) {
			putToTreeMap(param, treeMap, f, excludeField);
		}
		for (Field f : param.getClass().getSuperclass().getDeclaredFields()) {
			putToTreeMap(param, treeMap, f, excludeField);
		}
		String mySign = getSign(treeMap, appPrivateKey);
		return mySign;
	}

	/**
	 * 判断是否需要放入签名的treeMap中
	 * 排除序列化和静态的
	 *
	 * @param param   待签名的对象
	 * @param treeMap 需要签名字段的map
	 * @param f       field
	 */
	private static void putToTreeMap(Object param, TreeMap<String, Object> treeMap, Field f, String[] excludeField) {
		int modifiers = f.getModifiers();
		if (!f.isAccessible() && !Modifier.isStatic(modifiers)) {
			boolean flag = false;
			for (String s : excludeField) {
				if (s.equals(f.getName())) {
					flag = true;
					break;
				}
			}
			if (flag) {
				return;
			}
			f.setAccessible(true);
			try {
				treeMap.put(f.getName(), f.get(param));
			} catch (IllegalArgumentException | IllegalAccessException e) {
				e.printStackTrace();
			}
		}
	}
}
