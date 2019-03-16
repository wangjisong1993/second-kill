# Introduction

整个项目采用Springboot/Springcloud + Mybatis-plus + eureka + feign + Hystrix + zuul的方式构建, 使用springboot-admin来监控所有工程, 用zipkin来监控调用链路, 使用sharding-jdbc来实现分库分表,  主要按照电商的后台架构拆分为基础数据, 缓存服务, 优惠券, 事件中心, 订单, 商品, 秒杀, 服务链路跟踪, 服务治理, 优惠策略, 用户, 仓储, 网关, 以及一些营销活动如抽奖, 集卡等活动

## Cache工程

基于注解的方式抽取了分布式锁, 日志打印, 方法缓存, 参数校验, redis缓存, 限流的通用代码

1. @DisLock注解

        /**
    	 * 分布式锁的key
    	 *
    	 * @return
    	 */
    	String key();
    
    	/**
    	 * 分布式锁用的业务场景id
    	 *
    	 * @return
    	 */
    	String biz();
    
    	/**
    	 * 过期时间, 默认是5秒
    	 * 单位是秒
    	 *
    	 * @return
    	 */
    	int expireTime() default 5;

该注解的切面分装了基于redis的分布式锁的应用, 其他工程需要应用的时候只需要引入注解即可
基于redis的分布式锁的实现就不多说, 网上有很多版本, 该注解在设置key的时候实际上是biz + actualKey拼成的字符串, key中传入的值的格式必须是"#key1.key2"的方式, 这里面主要涉及到解析器解析的过程, 如果需要改成其他的格式, 可以修改CacheKeyParser.parse()方法, 该方法会根据key中定义的key找到实际值然后结合biz拼成redis的key去设置分布式锁

2. @LogDetail注解

该注解主要是用于打印传入参数, 返回参数, 调用耗时, 比较简单

3. @MethodCache注解

		/**
		 * 指定缓存的过期时间, 默认60秒
		 *
		 * @return int
		 */
		int expireSeconds() default 60;
	
		/**
		 * 缓存的key, 如果不指定, 默认按照方法的签名作为key
		 *
		 * @return String
		 */
		String key() default "";
	
		/**
		 * 缓存防击穿的标志, 默认是开启防击穿功能
		 *
		 * @return boolean
		 */
		boolean limitQuery() default true;
	
		/**
		 * 防击穿的时限
		 *
		 * @return int
		 */
		int limitQuerySeconds() default 5;
	
		/**
		 * 是否保存空的结果
		 *
		 * @return boolean
		 */
		boolean saveEmptyResult() default true;

该注解主要是公司的大数据项目在查询的时候非常耗时耗资源, 所以相同请求参数在调用同一方法的时候可以直接取缓存, 减少耗时耗资源的操作, 可以根据实际存储数据的大小, 决定是存储到redis还是Mongodb中, 这里出于简单时间, 就直接保存到redis中, 同时提供防止缓存击穿和缓存雪崩的配置, 需要强调的是, 该注解的key属性通常是"类名.方法名(形参1, 形参2...)"的方式, 是因为该注解的切面在设置缓存的时候, 按照key+实参的哈希值来设置的, 方法名相同的概率还是蛮大的, 所以用类名+方法名的方式作为key(ps: 如果不显式设置key, 会默认采用该方法的方法签名作为key)

实参对象求哈希值的代码

	/**
	 * 混合hash算法，输出64位的值
	 */
	public static long mixHash(String str) {
		long hash = str.hashCode();
		hash <<= 32;
		hash |= fnvHash1(str);
		return hash;
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

4. @ParamCheck注解

该注解是用于校验参数的, 使用的是hibernate-validator来校验参数

5. @RedisCache注解

该注解式简化版的基于redis的方法缓存, 所不同的是这里的key可以根据实参自定义, 解析器同@DisLock注解

6. @ServiceLimit注解

该注解是用来限流的, 限流在高并发系统中时常用的大杀器, 限流的算法采用的是令牌桶算法, 具体实现是google开源的guava

## base-data

该工程主要是一些基础的数据, 数据字典之类的东西

# collect-card

该工程是集卡活动的后台, 其实就是用户可以领卡, 集齐所有卡之后可以合成一张新卡, 还可以设置万能卡等, 代码也比较简单

# coupon

卡券工程

# lottery

抽奖工程

# order

订单工程
采用sharding-jdbc实现分库分表, 根据用户的userId将订单分到ds0和ds1两个数据库实例, 之后再根据orderId存储到order_master0和order_master1两张表, 采用的分库和分表算法均是简单的取模, 后续会用一致性哈希来优化一版, 所以userId和orderId就必须使用long类型, 关于分布式主键采用的是snowflake算法, 同时用redis来保证机器id的唯一性, 而数据中心id则通过配置文件配置

# product

商品工程

# red-package

抢红包工程

# seckill

秒杀工程

# service-admin

使用springboot-admiin实现工程监控

# sleuth

服务调用链路跟踪, 并保存到Elastic-Search集群中

# strategy

优惠策略工程

# user

用户工程

# warehouse

仓储工程

# zuul

zuul网关工程(TODO)

# event-center

事件中心(TODO)