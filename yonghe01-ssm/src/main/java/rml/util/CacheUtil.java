package rml.util;

public class CacheUtil {

	/**
	 * 缓存对象
	 */
	private static final Cache CACHE = new Cache();

	/**
	 * 从缓存中获取对象
	 * 
	 * @param key
	 * @return
	 */
	public static Object get(String key) {

		return CACHE.get(key);
	}

	/**
	 * 将缓存对象放入到缓存
	 * 
	 * @param key
	 * @param content
	 * @param cacheTime
	 */
	public static void put(String key, Object content, Integer cacheTime) {

		CACHE.put(key, content, cacheTime);
	}

	/**
	 * 刷新缓存对象的过期时间
	 * 
	 * @param key
	 * @param cacheTime
	 */
	public static void refresh(String key, Integer cacheTime) {

		CACHE.refresh(key, cacheTime);
	}

}
