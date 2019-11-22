package rml.util;

import java.util.LinkedHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/** 实现了LRU(最近最少使用)算法并且线程安全的HashMap */
public class LRULinkedHashMap<K, V> extends LinkedHashMap<K, V> {

	private static final long serialVersionUID = -1537926811314924002L;

	/** 最大容量 */
	private final int maxCapacity;
	/**
	 * 加载因子，当size()>当前容量*加载因子时，将会重建hash。注：HashMap中的DEFAULT_LOAD_FACTOR不可见，
	 * 因此copy一个出来
	 */
	private static final float DEFAULT_LOAD_FACTOR = 0.75f;
	/** 排序模式，true-基于访问顺序，false-基于插入顺序 */
	private static final boolean ACCESS_ORDER = true;
	/** 锁，代替synchronized，增加了锁投票、定时锁等候和可中断锁等候的一些特性，提供了在激烈争用情况下更佳的性能，慎用！ */
	private final Lock lock = new ReentrantLock();

	public LRULinkedHashMap(int maxCapacity) {
		super(maxCapacity, DEFAULT_LOAD_FACTOR, ACCESS_ORDER);
		this.maxCapacity = maxCapacity;
	}

	@Override
	protected boolean removeEldestEntry(java.util.Map.Entry<K, V> eldest) {
		return size() > maxCapacity;
	}

	@Override
	public V get(Object key) {
		try {
			lock.lock();
			return super.get(key);
		} finally {
			lock.unlock();
		}
	}

	@Override
	public V put(K key, V value) {
		try {
			lock.lock();
			return super.put(key, value);
		} finally {
			lock.unlock();
		}
	}

	@Override
	public V remove(Object key) {
		try {
			lock.lock();
			return super.remove(key);
		} finally {
			lock.unlock();
		}
	}
}