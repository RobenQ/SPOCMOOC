package cn.edu.tit.idao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import cn.edu.tit.bean.Academic;
import cn.edu.tit.bean.Admin;
import cn.edu.tit.bean.Category;
import cn.edu.tit.bean.Department;
import cn.edu.tit.bean.RealClass;
import cn.edu.tit.bean.Student;
import cn.edu.tit.bean.Teacher;
import cn.edu.tit.bean.Term;

@Component
public interface IAdminDao {

	/**
	 *  @author LiMing
	 * 添加管理员
	 * */
	public void addAdmin(List<Admin> admin);	

	/**
	 * @author LiMing
	 * 读取教师信息
	 * */
	public List<Teacher> readTeacherInfo();

	/**
	 * @author LiMing
	 * 增加分类（系部）信息
	 * */
	public void addCategory(List<Category> categories);

	/**
	 * @author LiMing
	 * 管理员修改分类（系部）信息
	 */
	public void updateCategory(Category categories);

	/**
	 * @author LiMing
	 * 添加教师信息
	 * */
	public void addTeacherInfo(List<Teacher> teacher);

	/**
	 * @author LiMing
	 * 添加学生信息
	 * */
	public void addStudentInfo(List<Student> student);

//	/**
//	 * @author LiMing
//	 * 添加课程类别
//	 * 抛弃的功能
//	 */
//	public void addCourseKinds(List<Course> courseList);

	/**
	 * @author LiMing
	 * 删除管理员
	 */
	public void deleteAdmin(List<Admin> adminList);

	/**
	 * @author LiMing
	 * 登陆管理员
	 */
	public Admin loginAdmin(String adminName);

	/**
	 * @author LiMing
	 * 读取学生列表
	 */
	public List<Student> readStudentInfo();

	/**
	 * @author LiMing
	 * 读取系部信息
	 */
	public List<Category> readCategory();

	/**
	 *@author LiMing
	 * @param teacher
	 * 更新教师信息
	 */
	public void updateTeacherInfo(Teacher teacher);

	/**
	 *@author LiMing
	 * @param studentList
	 * 更新学生信息
	 */
	public void updateStudentInfo(Student student);

	/**
	 *@author LiMing
	 * @param admin
	 * 更新管理员信息
	 */
	public void updateAdmin(Admin admin);

	/**
	 *@author LiMing
	 * @param realCLassList
	 * 创建实体班级
	 */
	public void addRealClass(List<RealClass> realCLassList);
	/**
	 * @author wenli 
	 * 更新实体班级人数 导入学生时自动操作
	 */
	public void updateStudentNumInRealClass(String realClassNum);
	/**
	 * @author 
	 * 更新实体班级人数  管理员操作
	 */
	public void updateRealClass(RealClass realClass) throws Exception;

	/**
	 * 根据班级num获取班级实体
	 * */
	public RealClass getRealClassByNum(String realClassNum);

	public List<Academic> readAcademicInfo();

	public Department readDepartmentByNum(String num);

	public List<Department> readDepartment();
	
	public List<Department> readAllDepartment();

	public void addDepartment(Department de);

	public void updateDepartment(Department de);

	public void resotreDepartment(String id);

	public void deleteDepartment(String id);

	public void updateAcademic(Academic ac);

	public void addAcademic(Academic ac);

	public void addTerm(Term te);

	public Term judgeTerm(@Param("s")String s, @Param("e")String e, @Param("st")String st);

	public void updateTerm(Term te);
	
}
