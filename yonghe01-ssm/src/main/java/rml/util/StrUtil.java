package rml.util;

public class StrUtil {

	public static String padPre(String str, int minLength, char padChar) {
		if (null == str) {
			str = "";
		} else if (str.length() >= minLength) {
			return str.toString();
		}
		return repeat(padChar, minLength - str.length()).concat(str.toString());
	}

	public static String repeat(char c, int count) {
		if (count <= 0) {
			return "";
		}
		char[] result = new char[count];
		for (int i = 0; i < count; i++) {
			result[i] = c;
		}
		return new String(result);
	}
}
