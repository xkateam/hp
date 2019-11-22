package rml.util;

import javax.servlet.http.HttpServletResponse;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.type.TypeReference;

/**
 * Json转换器
 * <ul>
 * <li>依赖的jar包有：jackson-core-1.9.5.jar、jackson-mapper-1.9.5.jar</li>
 * </ul>
 */
public abstract class JsonUtil {

	private static ObjectMapper mapper = new ObjectMapper();

	/**
	 * 将对象转换为JSON字符串
	 * 
	 * @param object
	 *            对象
	 */
	public static String toJson(Object object) {
		try {
			mapper.setSerializationInclusion(JsonSerialize.Inclusion.NON_NULL);
			return mapper.writeValueAsString(object);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 将对象转换为JSON流
	 * 
	 * @param response
	 *            HttpServletResponse
	 * @param contentType
	 *            contentType
	 * @param object
	 *            对象
	 */
	public static void toJson(HttpServletResponse response, String contentType, Object value) {
		try {
			response.setContentType(contentType);
			mapper.writeValue(response.getWriter(), value);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 将对象转换为JSON流
	 * 
	 * @param response
	 *            HttpServletResponse
	 * @param object
	 *            对象
	 */
	public static void toJson(HttpServletResponse response, Object value) {
		try {
			mapper.writeValue(response.getWriter(), value);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 将JSON字符串转换为对象
	 * 
	 * @param json
	 *            JSON字符串
	 * @param valueType
	 *            对象类型
	 */
	public static <T> T toObject(String json, Class<T> valueType) {
		try {
			return mapper.readValue(json, valueType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 将JSON字符串转换为对象
	 * 
	 * @param json
	 *            JSON字符串
	 * @param typeReference
	 *            对象类型
	 */
	public static <T> T toObject(String json, TypeReference<?> typeReference) {
		try {
			return mapper.readValue(json, typeReference);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 将JSON字符串转换为对象
	 * 
	 * @param json
	 *            JSON字符串
	 * @param javaType
	 *            对象类型
	 */
	public static <T> T toObject(String json, JavaType javaType) {
		try {
			return mapper.readValue(json, javaType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}