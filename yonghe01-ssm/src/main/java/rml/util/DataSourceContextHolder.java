package rml.util;

public class DataSourceContextHolder {
	private static final ThreadLocal<String> contextHolder = new ThreadLocal<String>();
	private static final String READ = "readDataSource";	//读库数据源名字，跟applicationContext-dao.xml中设置的名字要一致，用于切换数据源
	private static final String WRITE = "writeDataSource";  //写数据库数据源
	
	
	public static void setRead() {
		contextHolder.set(READ);
	}
	
	public static void setWrite() {
		contextHolder.set(WRITE);
	}
 
	public static String getDbType() {
		//获取当前线程变量值
		return ((String) contextHolder.get());
	}
 
	public static void clearDbType() {
		contextHolder.remove();
	}
	


}
