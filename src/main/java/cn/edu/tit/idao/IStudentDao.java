package cn.edu.tit.idao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import cn.edu.tit.bean.Accessory;
import cn.edu.tit.bean.Category;
import cn.edu.tit.bean.Course;
import cn.edu.tit.bean.Student;
import cn.edu.tit.bean.Task;
import cn.edu.tit.bean.Teacher;
import cn.edu.tit.bean.Term;
import cn.edu.tit.bean.UpTask;
import cn.edu.tit.bean.VirtualClass;

@Component
public interface IStudentDao {
	
	public Student studentLoginByEmployeeNum(String employeeNum)throws Exception;	//通过学号登录学生
	public Student studentLoginByTelephone(String telephone)throws Exception;	//通过手机号登录学生
	public Student studentLoginByEmail(String email)throws Exception;	//通过邮件登录学生

	public List<String> studentVirtualClassId(String classnum)throws Exception;		//查询学生所在虚拟班级班级号列表，即班级列表	
	public List<VirtualClass> studentVirtualClass(List<String> virtualClassNums)throws Exception;	//根据虚拟班号列表查询所有虚拟班级实体

	public void upTask(@Param("studentId")String studentId,@Param("taskId")String taskId,@Param("upTaskDetail")String upTaskDetail)throws Exception;	//提交任务
	public void upAccessory(@Param("accessories")List<Accessory> accessories,@Param("studentId")String studentId)throws Exception;

	public List<String> searchTaskId(String virtualClassNum)throws Exception;//查找班级对应的taskid号
	public List<Task> TaskList(List<String> taskIds)throws Exception;	//显示所有任务列表

	public Task searchTask(String taskId)throws Exception;	//查看单个任务详情
	public Accessory searchAccessory(String taskId)throws Exception;	//查询任务附件

	public List<String> searchRealClassNum(String virtualClassNum)throws Exception;		//查询虚拟班级对应的自然班列表模块
	public Student searchStudent(String studentId)throws Exception;		//查看学生信息模块
	public List<Student> studentList(List<String> classNum)throws Exception;	//查询班级学生列表
	public void upTaskThis(UpTask upTask);//提交作业
	public void upUpdateTaskThis(UpTask upTask);//修改作业
	public void countUpTaskNum(@Param("taskId")String taskId,@Param("virtualClassNum") String virtualClassNum);//提交作业时提交人数+1
	public void upAccessories(List<Accessory> accessoris); //提交作业中的附件
	public String getUpTaskDetail(@Param("taskId")String taskId,@Param("studentId")String studentId);//根据作业号和学号找提交的作业内容
	public List<String> getUpAccessories(@Param("taskId")String taskId, @Param("studentId")String studentId);//根据作业号和学号找提交的附件
	/**
	 * @author LiMing
	 * 更新学生操作
	 * */
	public void updateStudent(Student student)throws Exception;

	/**
	 * @author LiMing
	 * 查询学生课程信息
	 * @param 当status为1时，自己加入课程。当status为0时，为自己关注的课程
	 * */
	public List<String> getStudentCourse(@Param("status")String status,@Param("studentId")String studentId)throws Exception;

	/**
	 * @author LiMing
	 * 查询学生课程信息
	 * @param categoryId 系部ID
	 * */
	public Category getCategoryById(@Param("categoryId")String categoryId);
	
	/**
	 * 学生关注课程
	 * @param courseId
	 * @param employeeNum
	 */
	public void studentAttentionCourse(@Param(value="courseId")String courseId,@Param(value="studentId")String studentId);
	
	/**
	 * @param termId
	 * @return 返回学期信息
	 */
	public Term readTermById(@Param(value="termId")String termId);
	
	/**
	 * 获取标志位，查学生manager
	 * @return
	 */
	public Integer getManagerByStudentId(@Param(value="studentId")String studentId, @Param(value="courseId")String courseId,@Param(value="manager")int manager);
	
	/**
	 * 取消关注
	 * @param courseId
	 * @param getEmployeeNum
	 */
	public void studentExitAttentionCourse(@Param(value="courseId")String courseId, @Param(value="studentId")String studentId);
	/**
	 * 获取提交的作业内容
	 */
	public UpTask getUpTask(@Param(value="taskId")String taskId,@Param(value="courseId")String studentId);
	
	/**
	 * 获取提交的作业附件
	 */
	public Accessory getUpAcc(String taskId,String studentId);
	/**
	 * @author WENLI
	 * @param virtualClassNum
	 * @param taskCategory
	 * @return
	 * 查找班级对应任务最高分
	 */
	public Integer getMaxGradeInTask(@Param(value="taskId")String taskId);
	/**
	 * @author WENLI
	 * @param virtualClassNum
	 * @param taskCategory
	 * @return
	 * 查找班级对应任务最低分
	 */
	public Integer getMinGradeInTask(@Param(value="taskId")String taskId);
	/**
	 * @author WENLI
	 * @param attendanceId
	 * @param studentId
	 * @return
	 * 查看该学生是否签到
	 */
	public int isAttenced(@Param(value="attendanceId")String attendanceId,@Param(value="studentId")String studentId);
	/**
	 * @author WENLI
	 * @param attendanceId
	 * @param studentId
	 * @return
	 * 查看该学生是否请假
	 */
	public int isLeaved(@Param(value="attendanceId")String attendanceId,@Param(value="studentId")String studentId);
	/**
	 * @author WENLI
	 * @param attendanceId
	 * @param studentId
	 * @return
	 * 查看该学生是否旷课
	 */
	public int isTruancied(@Param(value="attendanceId")String attendanceId,@Param(value="studentId")String studentId);

	/**
	 * 根据班级号获取课程id
	 * @param virtualClassNum
	 * @return
	 */
	public String getCourseIdByvId(String virtualClassNum);
	
	/**
	 * 获取某班某类别(作业，实验，课设)某项任务的最低成绩
	 * @param virtualClassNum
	 * @param taskCategory
	 * @return
	 */
	public Integer getMinGradeInCategory(@Param(value="virtualClassNum")String virtualClassNum, @Param(value="taskCategory")String taskCategory);

	/**
	 * 获取某班某类别(作业，实验，课设)某项任务的最高成绩
	 * @param virtualClassNum
	 * @param taskCategory
	 * @return
	 */
	public Integer getMaxGradeInCategory(@Param(value="virtualClassNum")String virtualClassNum, @Param(value="taskCategory")String taskCategory);
}
