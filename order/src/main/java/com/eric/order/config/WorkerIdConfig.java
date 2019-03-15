package com.eric.order.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * 保证workerId的全局唯一性
 *
 * @author wang.js on 2019/3/8.
 * @version 1.0
 */
@Component
public class WorkerIdConfig {

	@Resource
	private JedisPool jedisPool;

	@Value("${snowflake.datacenter}")
	private Integer dataCenterId;

	@Value("${snowflake.bizType}")
	private String bizType;
	/**
	 * 机器id
	 */
	private int workerId;

	private static final Logger LOGGER = LoggerFactory.getLogger(WorkerIdConfig.class);

	public int getWorkerId(int size) throws UnknownHostException {
		String ipAddress = getIPAddress();
		Long ip = Long.parseLong(ipAddress.replaceAll("\\.", ""));
		//这里取128,为后续机器Ip调整做准备。
		workerId = ip.hashCode() % size;
		try (Jedis jedis = jedisPool.getResource()) {
			Long setnx = jedis.setnx(bizType + dataCenterId + workerId, ipAddress);
			if (setnx > 0) {
				return workerId;
			} else {
				// 判断是否是同一ip
				String cacheIp = jedis.get(bizType + dataCenterId + workerId);
				if (ipAddress.equalsIgnoreCase(cacheIp)) {
					return workerId;
				}
			}
			throw new RuntimeException("机器id:" + workerId + "已经存在, 请先清理缓存");
		}
	}

	@PreDestroy
	public void delWorkerId() {
		LOGGER.info("开始销毁机器id:" + workerId);
		try (Jedis jedis = jedisPool.getResource()) {
			Long del = jedis.del(bizType + dataCenterId + workerId);
			if (del == 0) {
				throw new RuntimeException("机器id:" + workerId + "删除失败");
			}
		}
	}

	/**
	 * 获取ip地址
	 *
	 * @return
	 * @throws UnknownHostException
	 */
	private String getIPAddress() throws UnknownHostException {
		InetAddress address = InetAddress.getLocalHost();
		return address.getHostAddress();
	}
}
