package cn.edu.tit.bean;

import java.io.File;
import java.sql.Timestamp;
import java.util.List;

public class Course {

	private String courseId; // 课程id
	private String courseName; // 课程名
	private String courseDetail; // 课程描述
	private String courseCategory; // 课程所属系部
	private String publisherId; //发布者id 
	private Timestamp publishTime; // 创建时间
	private String faceImg; // 课程图标
	private String fine; // 精品课
	private Integer	 courseStudentNum; // 每门课的总人数	
	private List<Teacher> teacherList;//该课程对应的教师团队集合
	private List<RealClass> realClass;//该课程对应的教师团队集合
	
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseDetail() {
		return courseDetail;
	}
	public void setCourseDetail(String courseDetail) {
		this.courseDetail = courseDetail;
	}
	public String getCourseCategory() {
		return courseCategory;
	}
	public void setCourseCategory(String courseCategory) {
		this.courseCategory = courseCategory;
	}
	public String getPublisherId() {
		return publisherId;
	}
	public void setPublisherId(String publisherId) {
		this.publisherId = publisherId;
	}
	public Timestamp getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Timestamp publishTime) {
		this.publishTime = publishTime;
	}
	public String getFaceImg() {
		return faceImg;
	}
	public void setFaceImg(String faceImg) {
		this.faceImg = faceImg;
	}
	public String getFine() {
		return fine;
	}
	public void setFine(String fine) {
		this.fine = fine;
	}
	public Integer getCourseStudentNum() {
		return courseStudentNum;
	}
	public void setCourseStudentNum(Integer courseStudentNum) {
		this.courseStudentNum = courseStudentNum;
	}
	public List<Teacher> getTeacherList() {
		return teacherList;
	}
	public void setTeacherList(List<Teacher> teacherList) {
		this.teacherList = teacherList;
	}
	public List<RealClass> getRealClass() {
		return realClass;
	}
	public void setRealClass(List<RealClass> realClass) {
		this.realClass = realClass;
	}
	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseName=" + courseName + ", courseDetail=" + courseDetail
				+ ", courseCategory=" + courseCategory + ", publisherId=" + publisherId + ", publishTime=" + publishTime
				+ ", faceImg=" + faceImg + ", fine=" + fine + ", courseStudentNum=" + courseStudentNum
				+ ", teacherList=" + teacherList + ", realClass=" + realClass + "]";
	}
	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Course(String courseId, String courseName, String courseDetail, String courseCategory, String publisherId,
			Timestamp publishTime, String faceImg, String fine, Integer courseStudentNum, List<Teacher> teacherList,
			List<RealClass> realClass) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.courseDetail = courseDetail;
		this.courseCategory = courseCategory;
		this.publisherId = publisherId;
		this.publishTime = publishTime;
		this.faceImg = faceImg;
		this.fine = fine;
		this.courseStudentNum = courseStudentNum;
		this.teacherList = teacherList;
		this.realClass = realClass;
	}
	
	
}
