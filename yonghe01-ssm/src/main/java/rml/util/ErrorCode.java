package rml.util;

/**
 * @author zzq
 * @date 创建时间：2018-1-17 下午8:41:57
 * @Description: TODO(调用微信错误码)
 * @version 1.0
 */
public enum ErrorCode {
	C0("请求成功", 0), C1("请求失败", 1), C2("账号或密码错误", 1), C3("更新成功", 0), C4("更新失败", 1), C701("登录失效，请重新登录", 701), C40001(
			"获取access_token时AppSecret错误，或者access_token无效。请开发者认真比对 AppSecret的正确性，或查看是否正在为恰当的公众号调用接口",
			40001), C40002("不合法的凭证类型", 40002), C40003("不合法的OpenID，请开发者确认OpenID（该用户）是否已关注公众号，或是否是其他公众 号的OpenID",
					40003), C40004("不合法的媒体文件类型", 40004), C40005("不合法的文件类型",
							40005), C40006("不合法的文件大小", 40006), C40007("不合法的媒体文件id", 40007), C40008("不合法的消息类型", 40008);
	private String name;
	private int value;

	private ErrorCode(String name, int value) {
		this.name = name;
		this.value = value;
	}

	public String getName() {
		return name;
	}

	public int getValue() {
		return value;
	}

	@Override
	public String toString() {
		return getName();
	}
}
