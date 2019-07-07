/**
 * 自然班级，创建虚拟班后以自然班级为单位导入
 */
package cn.edu.tit.bean;

public class RealClass {

	private String realClassNum; // 自然班级号
	private String realClassCategory; //自然班级所属系部
	private Integer realPersonNum; //实体班级人数
	public String getRealClassNum() {
		return realClassNum;
	}
	public void setRealClassNum(String realClassNum) {
		this.realClassNum = realClassNum;
	}
	public String getRealClassCategory() {
		return realClassCategory;
	}
	public void setRealClassCategory(String realClassCategory) {
		this.realClassCategory = realClassCategory;
	}
	public Integer getRealPersonNum() {
		return realPersonNum;
	}
	public void setRealPersonNum(Integer realPersonNum) {
		this.realPersonNum = realPersonNum;
	}
	@Override
	public String toString() {
		return "RealClass [realClassNum=" + realClassNum + ", realClassCategory=" + realClassCategory
				+ ", realPersonNum=" + realPersonNum + "]";
	}
	public RealClass(String realClassNum, String realClassCategory, Integer realPersonNum) {
		super();
		this.realClassNum = realClassNum;
		this.realClassCategory = realClassCategory;
		this.realPersonNum = realPersonNum;
	}
	public RealClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
