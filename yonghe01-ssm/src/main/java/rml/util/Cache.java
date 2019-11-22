package rml.util;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/** 定时缓存，在LRULinkedHashMap上加了一层定时清除过期对象的功能 */
public class Cache {

	/** 超时检查间隔时间默认值，默认1分钟检查一次 */
	private static final int DEFAULT_CHECK_INTERVAL = 60000; // 60*1000
	/** 最大容量默认值 */
	private static final int DEFAULT_MAX_CAPACITY = 10000;
	/** 缓存容器 */
	private final Map<String, CacheEntity> caches;
	/** 超时检查间隔时间 */
	private final int checkInterval;
	/** 是否开启超时检查线程 */
	private boolean isRun = true;

	/** 构造一个cache，最大容量默认10000，超时检查间隔时间默认1分钟 */
	public Cache() {
		this(DEFAULT_MAX_CAPACITY);
	}

	/** 根据最大容量构造一个cache，超时检查间隔时间默认1分钟 */
	public Cache(int maxCapacity) {
		this(maxCapacity, DEFAULT_CHECK_INTERVAL);
	}

	/** 根据最大容量、超时检查间隔时间构造一个cache */
	public Cache(int maxCapacity, int checkInterval) {
		this.checkInterval = checkInterval;
		caches = new LRULinkedHashMap<String, CacheEntity>(maxCapacity);
		Thread t = new Thread(new CheckThread());
		t.setDaemon(true);
		t.start(); // 开启超时检查线程
	}

	/** 缓存数据，默认缓存1小时 */
	public void put(String key, Object content) {
		put(key, content, 60);
	}

	/** 缓存数据，缓存unit个单位时间，unit小于等于0为不过期（单位时间即检查间隔时间） */
	public void put(String key, Object content, int unit) {
		long timeoutMillis = unit > 0 ? System.currentTimeMillis() + unit * checkInterval : 0; // 过期时间
		caches.put(key, new CacheEntity(content, timeoutMillis));
	}

	/** 刷新单个缓存实体的时间 */
	public void refresh(String key, int unit) {

		long timeoutMillis = unit > 0 ? System.currentTimeMillis() + unit * checkInterval : 0; // 过期时间
		CacheEntity cacheEntity = caches.get(key);
		cacheEntity.updateCacheTimeout(timeoutMillis);
	}

	/** 获取缓存 */
	public Object get(String key) {
		CacheEntity entity = caches.get(key);
		return entity == null ? null : entity.content;
	}

	/** 删除缓存 */
	public void remove(String key) {
		caches.remove(key);
	}

	/** 获取缓存对象数量 */
	public int size() {
		return caches.size();
	}

	/** 销毁 */
	public void destroy() {
		isRun = false;
	}

	/** 获取keySet */
	public Set<String> keySet() {
		return caches.keySet();
	}

	// 缓存实体
	private class CacheEntity {
		public Object content;
		public long timeoutMillis;

		public CacheEntity(Object content, long timeoutMillis) {
			this.content = content;
			this.timeoutMillis = timeoutMillis;
		}

		public void updateCacheTimeout(long timeoutMillis) {

			this.timeoutMillis = timeoutMillis;
		}

	}

	// 缓存超时检查线程
	private class CheckThread implements Runnable {
		public void run() {
			while (isRun) {
				try {
					Thread.sleep(checkInterval); // 1分钟检查一次
					Iterator<Entry<String, CacheEntity>> it = caches.entrySet().iterator(); // LinkedHashMap必须这么循环删除
					while (it.hasNext()) {
						Entry<String, CacheEntity> e = it.next();
						CacheEntity entity = e.getValue();
						if (entity.timeoutMillis == 0) { // 不过期的跳过检查
							continue;
						}
						if (System.currentTimeMillis() > entity.timeoutMillis) { // 超时
							it.remove();
						}
					}
				} catch (Throwable e) {
					e.printStackTrace();
				}
			}
		}
	}

}