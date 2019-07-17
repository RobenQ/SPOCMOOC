package cn.edu.tit.idao;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.tit.bean.Accessory;
import cn.edu.tit.bean.Achievement;
import cn.edu.tit.bean.Attendance;
import cn.edu.tit.bean.Category;
import cn.edu.tit.bean.Course;
import cn.edu.tit.bean.IndustryUniversityResearchProject;
import cn.edu.tit.bean.LunboImage;
import cn.edu.tit.bean.Paper;
import cn.edu.tit.bean.Prize;
import cn.edu.tit.bean.RealClass;
import cn.edu.tit.bean.Resource;
import cn.edu.tit.bean.ResourceType;
import cn.edu.tit.bean.Student;
import cn.edu.tit.bean.Task;
import cn.edu.tit.bean.Teacher;
import cn.edu.tit.bean.TeacherProject;
import cn.edu.tit.bean.Term;
import cn.edu.tit.bean.UpTask;
import cn.edu.tit.bean.VirtualClass;

@Component
public interface ITeacherDao {
	
	public void createCourse(Course course) throws Exception;	//创建课程模块1
	public void deleteCourse(String courseId)throws Exception;	//删除课程模块1
	public void createVirtualClass(VirtualClass virtualClass)throws Exception;		//创建虚拟班级模块1
	public void updateCourse(Course course)throws Exception;	//修改课程模块1
	//public List<Integer> courseIdList(String employeeNum);		//课程id列表模块1，已停用
	public List<String> courseIdList(@Param("employeeNum")String employeeNum,@Param("manager")Integer manager)throws Exception;		//课程id列表模块1
	public List<Course>	 courseList(List<String> courseIds)throws Exception;	//根据课程ID列表查询课程实体列表1
	public Course searchCourseById(String courseId); // 根据courseId查询
	public List<Student> studentList(List<String> classNums)throws Exception;		//学生列表模块1
	public Student searchStudent(String studentId)throws Exception;		//查看学生信息模块1
	public List<String> searchRealClassNum(String virtualClassNum)throws Exception;		//查询虚拟班级对应的自然班列表模块1
	public void mapVirtualRealClass(@Param("realClassNum")String realClassNum,@Param("virtualClassNum")String virtualClassNum)throws Exception;	//创建虚拟班和自然班映射模块1
	public Teacher teacherLoginByEmployeeNum(@Param("employeeNum")String employeeNum)throws Exception;	//通过职工号登录教师
	public Teacher teacherLoginByTelephone(String telephone)throws Exception;	//通过手机号登录教师
	public Teacher teacherLoginByEmail(String email)throws Exception;	//通过邮件登录教师
	public List<VirtualClass> virtualsForCourse(String courseId )throws Exception;//根据课程查询虚拟班级1
	public List<VirtualClass> virtualsForCourseBycreatorId(@Param("courseId")String courseId ,@Param("creatorId")String creatorId)throws Exception;//根据课程和教师id查询虚拟班级1
	public void createSignIn(@Param("taskId")String taskId,@Param("signPoint")String signPoint)throws Exception;	//wei实现
	public Integer getSignPoint()throws Exception; // 获取签到的信息
	public void UpdateTeacher(Teacher teacher)throws Exception;
	
	public void createTask(Task task)throws Exception;	//创建任务1
	public void mapClassTask(@Param("virtualClassNum")String virtualClassNum,@Param("taskId")String taskId,@Param("taskEndTime")Timestamp taskEndTime)throws Exception;	//1把任务映射到班级任务表中
	
	public void stopTask(String taskId)throws Exception;	//截止任务1
	public void restartTask(String taskId)throws Exception;	//重新启动任务，任务未过期1
	public void restartTaskSetEndTime(@Param("taskId")String taskId,@Param("taskEndTime")Timestamp taskEndTime)throws Exception;	//1重新启动任务，任务过期
	public void deleteTask(String taskId)throws Exception;	//删除任务1
	
	public void addAccessory(List<Accessory> accessoris)throws Exception;	//添加附件1
	
	public List<String> searchTaskId(String virtualClassNum)throws Exception;//查找班级对应的taskid号1
	
	public List<String> searchTaskIdByCategory(@Param("taskCategory")String taskCategory,@Param("taskIdAllList")List<String> taskIdAllList)throws Exception;//查找班级对应的taskid号1，通过作业类型
	public List<Integer> sreachGradeByStudentId(@Param("studentId")String studentId,@Param("taskIds")List<String>taskIds);
	public Integer sreachGradeNumByStudentId(@Param("studentId")String studentId,@Param("taskIds")List<String>taskIds);

	public List<Task> TaskList(List<String> taskIds)throws Exception;	//显示所有任务列表1
	public List<Task> teacherTaskAssortmentList(@Param("taskIds")List<String> taskIds,@Param("taskCategory")String taskCategory)throws Exception;//根据不同任务类型显示作业列表
	
	public Task searchTask(String taskId)throws Exception;	//查看单个任务详情1
	public Integer searchTaskPoint(String taskCategory)throws Exception;	//根据任务类型查找分值
	public List<Accessory> searchAccessory(String taskId)throws Exception;	//查询任务附件1
	
	public void addOtherToMyCourse(@Param("employeeNum")String employeeNum,@Param("courseId")String courseId,@Param("manager")int manager )throws Exception;	//拉取别人加入自己课程
	public Integer permissionAddOthers(@Param("employeeNum")String employeeNum,@Param("courseId")String courseId)throws Exception;	//判断是否允许加入其他人到自己课程
	public List<String> getEmployeeNumByCourseId(String courseId); //通过courseId获得教师工号集合
	public List<Teacher> getTeachersById(List<String> employeeNums); // 通过工号集合获取教师集合
	
	public String getTeacherNameById(String employeeNum); // 通过工号查询教师名
	
	public List<Teacher> getTeacher(); //获取所有教师
	/**
	 *@author LiMing
	 * @return
	 */
	public List<Category> readCategory();
	
	/**
	 *@author LiMing
	 * @param category
	 * @return 根据分类查询课程
	 */
	public List<Course> readCourseInfoByCategory(String category);

	/**
	 *@author LiMing
	 * @param realClassNum 
	 * @return
	 * 查询所有实体班级
	 */
	public List<RealClass> readRealClass(@Param(value="realClassNum")String realClassNum);
	
	/**
	 *@author LiMing
	 * @return
	 * 读取所有课程信息
	 */
	public List<Course> readCourse(@Param(value="courseName")String courseName);
	
	/**
	 *@author LiMing
	 * @return 返回学期列表
 	 */
	public List<Term> readTerm();
	
	/**
	 *@author LiMing
	 * @param courseId
	 * @return
	 */
	public Course readCourseByCourseId(String courseId);
	
	/**
	 * 根据学生的自然班级号查虚拟班级号
	 * @return
	 */
	public List<String> getVirtualNumByreal(String realClassNum);
	/**
	 * 根据虚拟班号查虚拟班
	 * @param virtualClassNum
	 * @return
	 */
	public VirtualClass getVirtualById(String virtualClassNum);
	
	/**
	 * 通过学生id获取自然班级号
	 * @param studentId
	 * @return
	 */
	public String getrealClassNumBySid(String studentId);
	
	/**
	 * 通过id获取用户关注的课程id集合
	 * @param id
	 * @return
	 */
	public List<String> getAttentionCid(String id);
	
	/**
	 * 获取教师加入的课程的id
	 * @return
	 */
	public List<String> getJoinCourseByTid(String employeeNum);
	
	/**
	 * 通过课程id和教师工号获取相关班级
	 * @param courseId
	 * @param employeeNum
	 * @return
	 */
	public List<VirtualClass> getClassById(@Param(value="courseId") String courseId, @Param(value="employeeNum") String employeeNum);
	/**
	 * @author wenli
	 * @param creatorId
	 * @return
	 * 根据创建者Id获得他创建的所有班级列表
	 */
	public List<VirtualClass> getVirtualClassByCreatorId(String creatorId);
	/**
	 * 通过虚拟班级号查课程id
	 * @param virtualClassNum
	 * @return
	 */
	public String getCourseIdByVirtualId(String virtualClassNum);
	public List<String> getTaskCategory();
	

	/**
	 * 通过课程名查课程
	 * @param courseName
	 * @return
	 */
	public List<Course> searchCourseByName(String courseName);
	
	/**
	 * 通过班级名查班级
	 */
	public VirtualClass searchClassByName(String virtualClassName);
	
	/**
	 * 根据自然班级id查询
	 * @param realClassNum
	 * @return
	 */
	public RealClass searchRealClassById(String realClassNum);
	/**
	 * @author wenli
	 * @param virtualClassNum
	 * @return
	 * 根据虚拟班级号找到所对应的实体班级号列表
	 */
	public List<String> searchRealClassIdList(String virtualClassNum);
	/**
	 * 根据id查图片
	 * @param courseId
	 * @return
	 */
	public String getImgpathByCourseId(String courseId);
	
	/**
	 * @author LiMing
	 * @return 返回资源分类信息
	 * 查询 资源 分类的信息,分了几种类，只返回类型ID
	 * */
	
	public List<ResourceType> readResourceCategoried();
	/**
	 * @author wenli
	 * @param resourceTye
	 * @return
	 * 返回当前资源的id号
	 */
	public int getResourceTypeId(String resourceTye)throws Exception;
	/**
	 * @author wenli
	 * @param resource
	 * 创建资源
	 */
	public void addResource(Resource resource)throws Exception;
	
	
	
	/**
	 * 获取标志位，查老师是否是课程创建者
	 * @return
	 */
	public Integer getManagerByEmployeeNum(@Param(value="employeeNum")String employeeNum, @Param(value="courseId")String courseId,@Param(value="manager")int manager);
	
	/**
	 * 根据时间获取前十二个课程信息到首页
	 * @return
	 */
	public List<Course> getCourseByLimit();
	/**
	 * 根据类型id查类型
	 * @param categoryId
	 * @return
	 */
	public String getCategoryById(String categoryId);
	
	/**
	 * 教师关注课程
	 * @param courseId
	 * @param employeeNum
	 */
	public void teacherAttentionCourse(@Param(value="courseId")String courseId,@Param(value="employeeNum")String employeeNum);
	
	/**
	 * 通过虚拟班级号和自然班级号查对应的虚拟班级号
	 * （方法中多个虚拟班级号循环遍历，结果集只有一个）
	 * @return
	 */
	public String getVirtualClassNumByVidAndRid(@Param(value="realClassNum")String realClassNum,@Param(value="virtualClassNum")String virtualClassNum);
	
	/**
	 * 取消关注
	 * @param courseId
	 * @param getEmployeeNum
	 */
	public void teacherExitAttentionCourse(@Param(value="courseId")String courseId, @Param(value="employeeNum")String employeeNum);

	/**
	 *@author LiMing
	 * @param search
	 * @return
	 */
	public List<Course> searchCourse(@Param(value="courseName")String courseName);
	
	
	/**
	 *@author LiMing
	 * @param realClass
	 * @return 实体班级的集合
	 * 实体班级的模糊查询
	 */
	public List<RealClass> readRealClassToSelect(@Param(value="realClass")String realClass);
	
	/**
	 * 通过教师工号模糊查找教师列表
	 * @param employeeNum
	 * @return
	 */
	public List<Teacher> vagueSearchTeachers(String employeeNum);

	 /**@author LiMing
	 * @param 任务分类
	 * @return 返回任务列表
	 * 根据任务类型和课程查询该课程下的任务
	 */
	public List<Task> getTaskByPointAndCourse(@Param(value="taskCategory")String taskCategory,@Param(value="courseId")String courseId);
	public List<Prize> prizeList();
	public List<TeacherProject> teacherProjectList();
	public List<IndustryUniversityResearchProject> industryUniversityResearchProjectList();
	public List<Achievement> achievementList();
	public List<Paper> paperList();
	/**
	 * @author wenli
	 * @return
	 * 获得已提交作业的所有学生的学号集合
	 */
	public List<String> getStudentIdListOfUped(@Param("taskId")String taskId);
	/**
	 * @author wenli
	 * @return
	 * 获得已提交作业的所有学生的实体
	 */
	public List<Student> getStudentListOfUped(@Param("studentIdList")List<String> studentIdList);
	/**
	 * @author wenli
	 * @param classNums
	 * @param studentIds
	 * @return
	 * 获得未提交作业的所有学生的实体
	 */
	public List<Student> getStudentListOfNotUp(@Param("classNums")List<String> classNums,@Param("studentIds")List<String> studentIds);
	/**
	 * @author wenli
	 * @param virtualClassNum
	 * @param taskId
	 * @return
	 * 获取虚拟班中已经提交作业的人数
	 */
	public Integer getUpNum(@Param("virtualClassNum")String virtualClassNum,@Param("taskId")String taskId);
	/**
	 * @author WENLI
	 * @param taskId
	 * @param studentId
	 * @return
	 * 获得学生提交任务详情
	 */
	public UpTask getUpTask(@Param("taskId")String taskId,@Param("studentId")String studentId);
	/**
	 * @author wenli
	 * @param comment
	 * @param grade
	 * 设置作业的评语和分数
	 */
	public void setGradeAndComment(@Param("comment")String comment,@Param("grade")Integer grade,@Param("studentId")String studentId,@Param("taskId")String taskId,@Param("commentTime")Timestamp commentTime);
	/**
	 * @author wenli
	 * @param taskId
	 * @param studentId
	 * @return
	 * 获得学生作业的分数
	 */
	public Integer getGrade(@Param("taskId")String taskId,@Param("studentId")String studentId);
	/**
	 * @author wenli
	 * @param taskId
	 * @param studentId
	 * @return
	 * 获得学生作业的评语
	 */
	public String getComment(@Param("taskId")String taskId,@Param("studentId")String studentId);
	/**
	 * @author WENLI
	 * @param courseId
	 * @param taskCategory
	 * @return
	 * 用于教师选择发布作业模块，根据课程和类型查找作业
	 */
	public List<Task> getTaskListPage(@Param("courseId")String courseId,@Param("taskCategory")String taskCategory);
	/**
	 * @author WENLI
	 * @param VirtualClassNum
	 * @param taskId
	 * @return
	 * 在class_task表中获得任务截至时间
	 */
	public Timestamp getTaskEndTime(@Param("virtualClassNum")String virtualClassNum,@Param("taskId")String taskId);
	/**
	 * @author WENLI
	 * @param taskId
	 * 当以选择形式发布作业时，作业引用次数+1
	 */
	public void addUseNum(@Param("taskId")String taskId);
	public void addWatchNum(@Param("taskId")String taskId, @Param("taskUseNum")int taskUseNum);
	public Term getTermById(@Param("termId")String termId);
	public List<Teacher> teacherForFuzzyQueryById(@Param("teacherNum")String teacherNum);
	/**
	 * @author WENLI
	 * @param virtualClassNum
	 * @param taskCategory
	 * @return
	 * 获得这个任务在该班级发布过几次
	 */
	public int gettaskTypePublishNum(@Param("taskCategory")String taskCategory,@Param("taskIds")List<String>taskIds);

	public List<Task> getAllTask();
	
	public List<Task> getTaskByUserId(@Param("userId")String userId);
	/**
	 * @author WENLI
	 * @param virtualClassNum
	 * @return
	 * 获得该班级所有考勤信息
	 */
	public List<Attendance> getAttendanceDetail(@Param("virtualClassNum")String virtualClassNum);
	/**
	 * @author WENLI
	 * @param attendanceId
	 * @return
	 * 获得该考勤中请假的学生Id
	 */
	public List<String> getLeaveStudentIdList(@Param("attendanceId")String attendanceId);
	
	/**
	 * @author WENLI
	 * @param attendanceId
	 * @return
	 * 获得该考勤中旷课的学生Id
	 */
	public List<String> getTruancyStudentIdList(@Param("attendanceId")String attendanceId);
	
	/**
	 * 获取任务引用次数--虚拟班级人数
	 * @param virtualClassNum
	 * @return
	 */
	public int getTaskUserNum(String virtualClassNum);
	/**
	 * 确定教师是否在某课程教师团队中
	 * 若在，返回计数不为0
	 * 若不在，返回计数为0
	 * */
	public Integer verifyLimitComment(@Param("userId")String userId,@Param("id")String id);
	public List<Course> getAllCourse();
	public List<Course> queryCourseByPartName(@Param("courseName")String courseName);
	
	/**
	 * 获得已打卡的学生
	 * @param virtualClassNum
	 * @return
	 */
	public List<Student> getStuAttended(String attendanceId);
	
	/**
	 * 获取某个班最近一次打卡是第几次
	 * @param virtualClassNum
	 * @return
	 */
	public Integer getLastAttIndex(String virtualClassNum);
	
	/**
	 * 添加打卡
	 * @param att
	 */
	public void addAttendance(Attendance att);
	
	/**
	 * 通过id获取任务
	 * @param taskId
	 * @return
	 */
	public Task getTaskById(String taskId);
	
	/**
	 * 修改任务
	 * @param task
	 */
	public void updateTask(Task task);
	
	/**
	 * 删除附件
	 * @param taskId
	 */
	public void deleteTaskAcc(String taskId);
	
	
	/**
	 * 修改课程学生人数
	 * @param count
	 * @param courseId
	 */
	public void updateCourseStudentNum(@Param("count")Integer count,@Param("courseId")String courseId);
	
	/**
	 * 学生打卡
	 */
	public void attend(@Param("studentId")String studentId,@Param("attendanceId")String attendanceId,@Param("atttime")Timestamp atttime);
	
	/**
	 * 获取所有打卡记录
	 * @return
	 */
	public List<Attendance> getALLAtt();
	
	/**
	 * 查询某学生是否有此打卡记录
	 * @param studentId
	 * @param attendanceId
	 * @return
	 */
	public String getAttRecordById(@Param("studentId")String studentId,@Param("attendanceId")String attendanceId);
	
	/**
	 * 设置缺勤
	 * @param studentId
	 * @param tid
	 */
	public void setTruancy(@Param("studentId")String studentId,@Param("attendanceId")String attendanceId);
	
	/**
	 * 设置请假
	 * @param studentId
	 * @param tid
	 */
	public void setLeave(@Param("studentId")String studentId,@Param("attendanceId")String attendanceId);


	/**
	 * 获取打卡时间
	 * @param studentId
	 * @param attendanceId
	 * @return
	 */
	public String getAttTime(@Param("studentId")String studentId,@Param("attendanceId")String attendanceId);



	/**
	 * 判断班级是否有为结束的打卡
	 * @param virtualClassNum
	 * @return
	 */
	public Integer getIsAttend(String virtualClassNum);
	/**
	 * @author wenli
	 * @param virtualClassNum
	 * @param taskId
	 * 把翻转任务映射到班级任务表中
	 */
	public void mapClassTaskToTurnClass(@Param("virtualClassNum")String virtualClassNum,@Param("taskId")String taskId,@Param("taskEndTime")Timestamp taskEndTime,@Param("preTaskEndTime")Timestamp preTaskEndTime)throws Exception;	//把任务映射到班级任务表中
	


	/**
	 * 教师关闭打卡
	 * @param attendanceId
	 */
	public void endAttendance(String attendanceId);


	/**
	 * 获取当前打卡id
	 * @return
	 */
	public String getCurrentAttend(String virtualClassNum);

	/**
	 * 开启打卡时所有学生默认缺勤
	 */
	public void stuSetTruancy();
	
	/**
	 * 获得请假的学生列表
	 * @return
	 */
	public List<Student> getStuLeaveList(String attendanceId);
	
	
	/**
	 * 获得缺勤的学生列表
	 * @return
	 */
	public List<Student> getStuTruancyList(String attendanceId);

	public void addTeamMember(@Param("employeeNum")String employeeNum,@Param("id")String id,@Param("manager")int manager);
	
	public Integer getMaxManager(String employeeNum);
	public String searchTaskMapVir(@Param("taskId")String taskId);
	public List<String> searchTurnTaskMapVir(@Param("taskId")String taskId);
	public List<LunboImage> searchLunboImage();

}
