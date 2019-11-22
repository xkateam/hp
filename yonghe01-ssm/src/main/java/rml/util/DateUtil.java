package rml.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class DateUtil {
	// 获取当天的开始时间
	public static Date getDayBegin() {
		Calendar cal = new GregorianCalendar();
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		return cal.getTime();
	}

	// 获取当天的结束时间
	public static Date getDayEnd() {
		Calendar cal = new GregorianCalendar();
		cal.set(Calendar.HOUR_OF_DAY, 23);
		cal.set(Calendar.MINUTE, 59);
		cal.set(Calendar.SECOND, 59);
		return cal.getTime();
	}

	// 获取昨天的开始时间
	public static Date getBeginDayOfYesterday() {
		Calendar cal = new GregorianCalendar();
		cal.setTime(getDayBegin());
		cal.add(Calendar.DAY_OF_MONTH, -1);
		return cal.getTime();
	}

	// 获取昨天的结束时间
	public static Date getEndDayOfYesterDay() {
		Calendar cal = new GregorianCalendar();
		cal.setTime(getDayEnd());
		cal.add(Calendar.DAY_OF_MONTH, -1);
		return cal.getTime();
	}

	// 获取明天的开始时间
	public static Date getBeginDayOfTomorrow() {
		Calendar cal = new GregorianCalendar();
		cal.setTime(getDayBegin());
		cal.add(Calendar.DAY_OF_MONTH, 1);
		return cal.getTime();
	}

	// 获取明天的结束时间
	public static Date getEndDayOfTomorrow() {
		Calendar cal = new GregorianCalendar();
		cal.setTime(getDayEnd());
		cal.add(Calendar.DAY_OF_MONTH, 1);
		return cal.getTime();
	}

	// 获取本周的开始时间
	@SuppressWarnings("unused")
	public static Date getBeginDayOfWeek() {
		Date date = new Date();
		if (date == null) {
			return null;
		}
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int dayofweek = cal.get(Calendar.DAY_OF_WEEK);
		if (dayofweek == 1) {
			dayofweek += 7;
		}
		cal.add(Calendar.DATE, 2 - dayofweek);
		return getDayStartTime(cal.getTime());
	}

	// 获取本周的结束时间
	public static Date getEndDayOfWeek() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(getBeginDayOfWeek());
		cal.add(Calendar.DAY_OF_WEEK, 6);
		Date weekEndSta = cal.getTime();
		return getDayEndTime(weekEndSta);
	}

	// 获取上周的开始时间
	@SuppressWarnings("unused")
	public static Date getBeginDayOfLastWeek() {
		Date date = new Date();
		if (date == null) {
			return null;
		}
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int dayofweek = cal.get(Calendar.DAY_OF_WEEK);
		if (dayofweek == 1) {
			dayofweek += 7;
		}
		cal.add(Calendar.DATE, 2 - dayofweek - 7);
		return getDayStartTime(cal.getTime());
	}

	// 获取上周的结束时间
	public static Date getEndDayOfLastWeek() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(getBeginDayOfLastWeek());
		cal.add(Calendar.DAY_OF_WEEK, 6);
		Date weekEndSta = cal.getTime();
		return getDayEndTime(weekEndSta);
	}

	// 获取本月的开始时间
	public static Date getBeginDayOfMonth() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(getNowYear(), getNowMonth() - 1, 1);
		return getDayStartTime(calendar.getTime());
	}

	// 获取本月的结束时间
	public static Date getEndDayOfMonth() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(getNowYear(), getNowMonth() - 1, 1);
		int day = calendar.getActualMaximum(5);
		calendar.set(getNowYear(), getNowMonth() - 1, day);
		return getDayEndTime(calendar.getTime());
	}

	// 获取上月的开始时间
	public static Date getBeginDayOfLastMonth() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(getNowYear(), getNowMonth() - 2, 1);
		return getDayStartTime(calendar.getTime());
	}

	// 获取上月的结束时间
	public static Date getEndDayOfLastMonth() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(getNowYear(), getNowMonth() - 2, 1);
		int day = calendar.getActualMaximum(5);
		calendar.set(getNowYear(), getNowMonth() - 2, day);
		return getDayEndTime(calendar.getTime());
	}

	// 获取去年的开始时间
	public static Date getBeginDayOfYear() {
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, getNowYear());
		cal.set(Calendar.MONTH, Calendar.JANUARY);
		cal.set(Calendar.DATE, 1);
		cal.add(Calendar.YEAR, -1);
		return getDayStartTime(cal.getTime());
	}

	// 获取去年的结束时间
	public static java.util.Date getEndDayOfYear() {
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, getNowYear());
		cal.set(Calendar.MONTH, Calendar.DECEMBER);
		cal.set(Calendar.DATE, 31);
		cal.add(Calendar.YEAR, -1);
		return getDayEndTime(cal.getTime());
	}

	// 获取某个日期的开始时间
	public static Timestamp getDayStartTime(Date d) {
		Calendar calendar = Calendar.getInstance();
		if (null != d)
			calendar.setTime(d);
		calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), calendar.get(Calendar.DAY_OF_MONTH), 0,
				0, 0);
		calendar.set(Calendar.MILLISECOND, 0);
		return new Timestamp(calendar.getTimeInMillis());
	}

	// 获取某个日期的结束时间
	public static Timestamp getDayEndTime(Date d) {
		Calendar calendar = Calendar.getInstance();
		if (null != d)
			calendar.setTime(d);
		calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), calendar.get(Calendar.DAY_OF_MONTH), 23,
				59, 59);
		calendar.set(Calendar.MILLISECOND, 999);
		return new Timestamp(calendar.getTimeInMillis());
	}

	// 获取今年是哪一年
	public static Integer getNowYear() {
		Date date = new Date();
		GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
		gc.setTime(date);
		return Integer.valueOf(gc.get(1));
	}

	// 获取本月是哪一月
	public static int getNowMonth() {
		Date date = new Date();
		GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
		gc.setTime(date);
		return gc.get(2) + 1;
	}

	// 两个日期相减得到的天数
	public static int getDiffDays(Date beginDate, Date endDate) {
		if (beginDate == null || endDate == null) {
			throw new IllegalArgumentException("getDiffDays param is null!");
		}
		long diff = (endDate.getTime() - beginDate.getTime()) / (1000 * 60 * 60 * 24);
		int days = new Long(diff).intValue();
		return days;
	}

	// 两个日期相减得到的毫秒数
	public static long dateDiff(Date beginDate, Date endDate) {
		long date1ms = beginDate.getTime();
		long date2ms = endDate.getTime();
		return date2ms - date1ms;
	}

	// 获取两个日期中的最大日期
	public static Date max(Date beginDate, Date endDate) {
		if (beginDate == null) {
			return endDate;
		}
		if (endDate == null) {
			return beginDate;
		}
		if (beginDate.after(endDate)) {
			return beginDate;
		}
		return endDate;
	}

	// 获取两个日期中的最小日期
	public static Date min(Date beginDate, Date endDate) {
		if (beginDate == null) {
			return endDate;
		}
		if (endDate == null) {
			return beginDate;
		}
		if (beginDate.after(endDate)) {
			return endDate;
		}
		return beginDate;
	}

	// 返回某月该季度的第一个月
	public static Date getFirstSeasonDate(Date date) {
		final int[] SEASON = { 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4 };
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int sean = SEASON[cal.get(Calendar.MONTH)];
		cal.set(Calendar.MONTH, sean * 3 - 3);
		return cal.getTime();
	}

	// 返回某个日期下几天的日期
	public static Date getNextDay(Date date, int i) {
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);
		cal.set(Calendar.DATE, cal.get(Calendar.DATE) + i);
		return cal.getTime();
	}

	// 返回某个日期前几天的日期
	public static Date getFrontDay(Date date, int i) {
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);
		cal.set(Calendar.DATE, cal.get(Calendar.DATE) - i);
		return cal.getTime();
	}

	// 获取某年某月到某年某月按天的切片日期集合(间隔天数的集合)
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static List getTimeList(int beginYear, int beginMonth, int endYear, int endMonth, int k) {
		List list = new ArrayList();
		if (beginYear == endYear) {
			for (int j = beginMonth; j <= endMonth; j++) {
				list.add(getTimeList(beginYear, j, k));
			}
		} else {
			{
				for (int j = beginMonth; j < 12; j++) {
					list.add(getTimeList(beginYear, j, k));
				}
				for (int i = beginYear + 1; i < endYear; i++) {
					for (int j = 0; j < 12; j++) {
						list.add(getTimeList(i, j, k));
					}
				}
				for (int j = 0; j <= endMonth; j++) {
					list.add(getTimeList(endYear, j, k));
				}
			}
		}
		return list;
	}

	// 获取某年某月按天切片日期集合(某个月间隔多少天的日期集合)
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static List getTimeList(int beginYear, int beginMonth, int k) {
		List list = new ArrayList();
		Calendar begincal = new GregorianCalendar(beginYear, beginMonth, 1);
		int max = begincal.getActualMaximum(Calendar.DATE);
		for (int i = 1; i < max; i = i + k) {
			list.add(begincal.getTime());
			begincal.add(Calendar.DATE, k);
		}
		begincal = new GregorianCalendar(beginYear, beginMonth, max);
		list.add(begincal.getTime());
		return list;
	}

	public static Map<String, String> getShangQiStart() {
		Map<String, String> map = new HashMap<String, String>();
		Calendar cale = null;
		cale = Calendar.getInstance();
		int year = cale.get(Calendar.YEAR);
		int month = cale.get(Calendar.MONTH) + 1;
		if (month < 2) {
			map.put("size", "4");
			map.put("start", String.valueOf(year - 1) + "-03-01");
			map.put("end", String.valueOf(year - 1) + "-03-31");
			map.put("startone", String.valueOf(year - 1) + "-04-01");
			map.put("endone", String.valueOf(year - 1) + "-04-30");
			map.put("starttwo", String.valueOf(year - 1) + "-05-01");
			map.put("endtwo", String.valueOf(year - 1) + "-05-31");
			map.put("startthree", String.valueOf(year - 1) + "-06-01");
			map.put("endthree", String.valueOf(year - 1) + "-06-30");
			map.put("xname", map.get("start") + "@" + map.get("endthree"));
		}

		if (month > 1 && month < 7) {
			map.put("size", "5");
			map.put("start", String.valueOf(year - 1) + "-09-01");
			map.put("end", String.valueOf(year - 1) + "-09-30");
			map.put("startone", String.valueOf(year - 1) + "-10-01");
			map.put("endone", String.valueOf(year - 1) + "-10-31");
			map.put("starttwo", String.valueOf(year - 1) + "-11-01");
			map.put("endtwo", String.valueOf(year - 1) + "-11-30");
			map.put("startthree", String.valueOf(year - 1) + "-12-01");
			map.put("endthree", String.valueOf(year - 1) + "-12-31");
			map.put("startfour", String.valueOf(year) + "-01-01");
			map.put("endfour", String.valueOf(year) + "-01-31");
			map.put("xname", map.get("start") + "@" + map.get("endfour"));
		}

		if (month > 6 && month <= 12) {
			map.put("size", "4");
			map.put("start", String.valueOf(year) + "-03-01");
			map.put("end", String.valueOf(year) + "-03-31");
			map.put("startone", String.valueOf(year) + "-04-01");
			map.put("endone", String.valueOf(year) + "-04-30");
			map.put("starttwo", String.valueOf(year) + "-05-01");
			map.put("endtwo", String.valueOf(year) + "-05-31");
			map.put("startthree", String.valueOf(year) + "-06-01");
			map.put("endthree", String.valueOf(year) + "-06-30");
			map.put("xname", map.get("start") + "@" + map.get("endthree"));
		}
		return map;

	}

	public static Map<String, String> getShangNianStart() {
		Map<String, String> map = new HashMap<String, String>();
		Calendar cale = null;
		cale = Calendar.getInstance();
		int year = cale.get(Calendar.YEAR);
		int month = cale.get(Calendar.MONTH) + 1;
		if (month < 2) {
			map.put("startone", String.valueOf(year - 1) + "-03-01");
			map.put("endone", String.valueOf(year - 1) + "-06-30");
			map.put("start", String.valueOf(year - 2) + "-09-01");
			map.put("end", String.valueOf(year - 1) + "-01-31");
			map.put("xname",
					map.get("start") + "@" + map.get("end") + "," + map.get("startone") + "@" + map.get("endone"));
		}

		if (month > 1 && month < 7) {
			map.put("startone", String.valueOf(year - 1) + "-09-01");
			map.put("endone", String.valueOf(year) + "-01-31");
			map.put("start", String.valueOf(year - 1) + "-03-01");
			map.put("end", String.valueOf(year - 1) + "-06-30");
			map.put("xname",
					map.get("start") + "@" + map.get("end") + "," + map.get("startone") + "@" + map.get("endone"));
		}

		if (month > 6 && month <= 12) {
			map.put("startone", String.valueOf(year) + "-03-01");
			map.put("endone", String.valueOf(year) + "-06-30");
			map.put("start", String.valueOf(year - 1) + "-09-01");
			map.put("end", String.valueOf(year) + "-01-31");
			map.put("xname",
					map.get("start") + "@" + map.get("end") + "," + map.get("startone") + "@" + map.get("endone"));
		}
		return map;

	}

	public static Map<String, String> getShangNianTwoStart() {
		Map<String, String> map = new HashMap<String, String>();
		Calendar cale = null;
		cale = Calendar.getInstance();
		int year = cale.get(Calendar.YEAR);
		int month = cale.get(Calendar.MONTH) + 1;
		if (month < 2) {
			map.put("startfour", String.valueOf(year - 1) + "-03-01");
			map.put("endfour", String.valueOf(year - 1) + "-06-30");
			map.put("startthree", String.valueOf(year - 2) + "-09-01");
			map.put("endthree", String.valueOf(year - 1) + "-01-31");

			map.put("startone", String.valueOf(year - 2) + "-03-01");
			map.put("endone", String.valueOf(year - 2) + "-06-30");
			map.put("start", String.valueOf(year - 3) + "-09-01");
			map.put("end", String.valueOf(year - 2) + "-01-31");
			map.put("xname",
					map.get("start") + "@" + map.get("end") + "," + map.get("startone") + "@" + map.get("endone") + ","
							+ map.get("startthree") + "@" + map.get("endthree") + "," + map.get("startfour") + "@"
							+ map.get("endfour"));
		}

		if (month > 1 && month < 7) {
			map.put("startthree", String.valueOf(year - 1) + "-09-01");
			map.put("endthree", String.valueOf(year) + "-01-30");
			map.put("starttwo", String.valueOf(year - 1) + "-03-01");
			map.put("endtwo", String.valueOf(year - 1) + "-06-30");

			map.put("startone", String.valueOf(year - 2) + "-09-01");
			map.put("endone", String.valueOf(year - 1) + "-01-31");
			map.put("start", String.valueOf(year - 2) + "-03-01");
			map.put("end", String.valueOf(year - 2) + "-06-30");
			map.put("xname",
					map.get("start") + "@" + map.get("end") + "," + map.get("startone") + "@" + map.get("endone") + ","
							+ map.get("starttwo") + "@" + map.get("endtwo") + "," + map.get("startthree") + "@"
							+ map.get("endthree"));
		}

		if (month > 6 && month <= 12) {
			map.put("startthree", String.valueOf(year) + "-03-01");
			map.put("endthree", String.valueOf(year) + "-06-30");
			map.put("starttwo", String.valueOf(year - 1) + "-09-01");
			map.put("endtwo", String.valueOf(year) + "-01-31");

			map.put("startone", String.valueOf(year - 1) + "-03-01");
			map.put("endone", String.valueOf(year - 1) + "-06-30");
			map.put("start", String.valueOf(year - 2) + "-09-01");
			map.put("end", String.valueOf(year - 1) + "-01-31");
			map.put("xname",
					map.get("start") + "@" + map.get("end") + "," + map.get("startone") + "@" + map.get("endone") + ","
							+ map.get("starttwo") + "@" + map.get("endtwo") + "," + map.get("startthree") + "@"
							+ map.get("endthree"));
		}
		return map;

	}

	/**
	 * 根据type 0,1,2 今天、前一天、前两天 获取指定日期
	 */
	public static String getDateToType(int type) {
		Date date = new Date();// 取时间
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(date);
		calendar.add(Calendar.DATE, -type);// 把日期往前减少一天，若想把日期向后推一天则将负数改为正数
		date = calendar.getTime();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(date);
		return dateString;
	}

	/**
	 * 今天、前一天、前两天、前三天、近一周、近一月、近一学期、近一年、近两年
	 * 
	 * 近一年：上学期：3.1-6.30 下学期：9.1-1.30
	 * 
	 */
	public static String getDateByAlarmType(int type) {
		StringBuilder strB = new StringBuilder();
		String result = "";
		switch (type) {
		// 今天 - 近三天
		case 0:
		case 1:
		case 2:
		case 3:
			String date = getDateToType(type);
			strB.append("AND create_date>='").append(date).append(" 00:00:00'").append("AND create_date<='")
					.append(date).append(" 23:59:59'");
			result = strB.toString();
			break;
		case 4: // 近一周
			result = strB.append("AND DATE_SUB(CURDATE(), INTERVAL 7 DAY) <= DATE(create_date)").toString();
			break;
		case 5: // 近一个月
			result = strB.append("AND DATE_SUB(CURDATE(), INTERVAL 30 DAY) <= DATE(create_date)").toString();
			break;
		case 6: // 近一学期
			String[] qiStrs = getShangQiStart().get("xname").split("@");
			strB.append("AND date_format( create_date, '%Y-%m-%d' ) >= '").append(qiStrs[0])
					.append("' AND date_format( create_date, '%Y-%m-%d' ) <='").append(qiStrs[1]).append("'");
			result = strB.toString();
			System.out.println("近一学期的sql: " + strB.toString());
			break;
		case 7: // 近一年
			String[] nianStrs = getShangNianStart().get("xname").split(",");
			strB.append("and (");
			for (int i = 0; i < nianStrs.length; i++) {
				String[] dateStrs = nianStrs[i].split("@");
				if (i == 0) {
					strB.append("(").append("date_format( create_date, '%Y-%m-%d' ) >= '").append(dateStrs[0])
							.append("' AND '").append(dateStrs[1]).append("'")
							.append(">= date_format( create_date, '%Y-%m-%d' ))");
				} else {
					strB.append("or(").append("date_format( create_date, '%Y-%m-%d' ) >= '").append(dateStrs[0])
							.append("' AND '").append(dateStrs[1]).append("'")
							.append(">= date_format( create_date, '%Y-%m-%d' ))");
				}

			}
			strB.append(")");
			System.out.println("近一年的sql: " + strB.toString());
			result = strB.toString();
			break;
		case 8: // 近两年
			String[] nianTwoStrs = getShangNianTwoStart().get("xname").split(",");
			strB.append("and (");
			for (int i = 0; i < nianTwoStrs.length; i++) {
				String[] dateStrs = nianTwoStrs[i].split("@");
				if (i == 0) {
					strB.append("(").append("date_format( create_date, '%Y-%m-%d' ) >= '").append(dateStrs[0])
							.append("' AND '").append(dateStrs[1]).append("'")
							.append(">= date_format( create_date, '%Y-%m-%d' ))");
				} else {
					strB.append("or(").append("date_format( create_date, '%Y-%m-%d' ) >= '").append(dateStrs[0])
							.append("' AND '").append(dateStrs[1]).append("'")
							.append(">= date_format( create_date, '%Y-%m-%d' ))");
				}

			}
			strB.append(")");
			System.out.println("近两年的sql: " + strB.toString());
			result = strB.toString();
			break;
		}
		return result;
	}

	public static void main(String[] args) {
		// String xname = "2019-03-02";
		// xname = xname.replaceAll("-", "/");
		//
		// System.out.println(xname);
	}

}
