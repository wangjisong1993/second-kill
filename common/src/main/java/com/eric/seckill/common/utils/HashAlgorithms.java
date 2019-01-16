package com.eric.seckill.common.utils;

/**
 * hash算法
 *
 * @author user
 * @version 1.0.0
 * @date 2018/7/16 10:25
 * @copyright wonhigh.cn
 */
public class HashAlgorithms {

	/**
	 * MASK值，随便找一个值，最好是质数
	 */
	public static final int M_MASK = 0x8765fed1;

	private HashAlgorithms() {
	}

	/**
	 * 改进的32位FNV算法1
	 *
	 * @param data 字符串
	 * @return int值
	 */
	public static int fnvHash1(String data) {
		final int p = 16777619;
		int hash = (int) 2166136261L;
		for (int i = 0; i < data.length(); i++)
			hash = (hash ^ data.charAt(i)) * p;
		hash += hash << 13;
		hash ^= hash >> 7;
		hash += hash << 3;
		hash ^= hash >> 17;
		hash += hash << 5;
		return hash;
	}

	/**
	 * JAVA自己带的算法
	 */
	public static int java(String str) {
		int h = 0;
		int off = 0;
		int len = str.length();
		for (int i = 0; i < len; i++) {
			h = 31 * h + str.charAt(off++);
		}
		return h;
	}

	/**/

	/**
	 * 混合hash算法，输出64位的值
	 */
	public static long mixHash(String str) {
		long hash = str.hashCode();
		hash <<= 32;
		hash |= fnvHash1(str);
		return hash;
	}
}