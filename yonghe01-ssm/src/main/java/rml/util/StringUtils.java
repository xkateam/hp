package rml.util;

import java.util.Collection;
import java.util.Map;

public class StringUtils {
	public static boolean isEmpty(Object o) {
		if (o == null) {
			return true;
		}
		if (o instanceof String) {
			if (((String) o).trim().length() == 0) {
				return true;
			}
		} else if (o instanceof Collection) {
			if (((Collection) o).isEmpty()) {
				return true;
			}
		} else if (o.getClass().isArray()) {
			if (((Object[]) o).length == 0) {
				return true;
			}
		} else if (o instanceof Map) {
			if (((Map) o).isEmpty()) {
				return true;
			}
		} else if (o instanceof Long) {
			if (((Long) o) == null) {
				return true;
			}
		} else if (o instanceof Short) {
			if (((Short) o) == null) {
				return true;
			}
		} else {
			return false;
		}
		return false;
	}
}
