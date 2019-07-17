package cn.edu.tit.bean;

public class LunboImage {

	private int order;
	private String name;
	public LunboImage(int order, String name) {
		super();
		this.order = order;
		this.name = name;
	}
	public LunboImage() {
		super();
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "LunboImage [order=" + order + ", name=" + name + "]";
	}
}
