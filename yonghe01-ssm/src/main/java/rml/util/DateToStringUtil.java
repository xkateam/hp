package rml.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateToStringUtil {
	public static String getTodayString(int day) {
		Calendar c = Calendar.getInstance();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");// Date指定格式：yyyy-MM-dd
		c.setTime(new Date());
		c.add(Calendar.DAY_OF_MONTH, -day);
		Date yesterday = c.getTime();// 这是昨天
		return simpleDateFormat.format(yesterday);

	}

	// 判定当前时间是否大于指定时间点
	public static boolean isDaYu(int str) {
		try {
			// ten = format.parse("10:00");
			Date now = new Date();
			if (now.getHours() > str) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
