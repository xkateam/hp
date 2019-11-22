package rml.util;

public class Test {

	public static void main(String[] args) {
		/*
		 * LoginBean lo = new LoginBean(); lo.setLoginName("admin");
		 * lo.setPassword("123456");
		 * 
		 * LoginBean lo1 = new LoginBean(); lo1.setLoginName("admin1");
		 * lo1.setPassword("12345689");
		 * 
		 * List<LoginBean> list = new ArrayList<LoginBean>(); list.add(lo1);
		 * 
		 * String json = SerializableUtil.objectToString(lo);
		 * 
		 * System.out.println(json);
		 * 
		 * LoginBean ll = (LoginBean) SerializableUtil.stringToObject(json,
		 * LoginBean.class); System.out.println(ll.getLoginName());
		 * 
		 * String json1 = SerializableUtil.listToString(list);
		 * System.out.println(json1);
		 * 
		 * List<LoginBean> list9 = SerializableUtil.stringToList(json1,
		 * LoginBean.class); System.out.println(list9.get(0).getPassword());
		 */
		/*
		 * LoginBean loo = (LoginBean) JSONObject.parseObject(json.toString(),
		 * LoginBean.class); System.out.println(loo.getLoginName());
		 */
		int min = 10;
		int max = 100;
		for (int i = 0; i < 100; i++) {

			System.out.println(System.currentTimeMillis() % 100);
		}
	}
}
