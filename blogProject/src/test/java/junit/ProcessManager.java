package junit;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.commons.io.FileUtils;
import org.junit.Test;


/**
 * 工作流管理类
 * @author WYB
 *
 */
public class ProcessManager {
	//创建流程引擎对象
	private ProcessEngine pe = ProcessEngines.getDefaultProcessEngine();
	
	/**
	 * 建表
	 */
	@Test
	public void creatTable() {
		ProcessEngineConfiguration pec =  ProcessEngineConfiguration.createStandaloneProcessEngineConfiguration();
		//数据库配置
		pec.setJdbcDriver("com.mysql.jdbc.Driver");
		//?useUnicode=true&characterEncoding=utf8&useSSL=true失效(不明确原因)
		pec.setJdbcUrl("jdbc:mysql://localhost:3306/activiti?serverTimezone=UTC");
		pec.setJdbcUsername("root");
		pec.setJdbcPassword("123456");
		//自动建表
		pec.setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE);
		//启动流程引擎
		ProcessEngine pe = pec.buildProcessEngine();
		System.out.println("processengine:"+pe);
	}
	
	
	/**
	 * 配置文件建表
	 */
	@Test
	public void creatTable2() {
		ProcessEngineConfiguration pec =  ProcessEngineConfiguration.createProcessEngineConfigurationFromResource("activiti.cfg.xml");
		//启动流程引擎
		ProcessEngine pe = pec.buildProcessEngine();
		System.out.println("processengine:"+pe);
	}
	
	
	/**
	 * 部署流程定义(classpath)
	 */
	@Test
	public void deploymentProcessDefinition() {
		Deployment dp = pe.getRepositoryService().createDeployment()
									.name("请假流程")
									.addClasspathResource("diagrams/AskForLeaveProcess.bpmn")
									.addClasspathResource("diagrams/AskForLeaveProcess.png")
									.deploy();
		System.out.println("部署ID："+dp.getId());
		System.out.println("部署名称："+dp.getName());
	}
	
	
	/**
	 * 查询流程定义
	 */
	@Test
	public void findProcessDefinition() {
		List<ProcessDefinition> list = pe.getRepositoryService().createProcessDefinitionQuery()
									.orderByProcessDefinitionVersion().asc()
									.list();
		if (list != null && list.size() > 0) {
			for (ProcessDefinition pd : list) {
				System.out.println("流程定义ID："+pd.getId());
				System.out.println("流程定义名称："+pd.getName());
				System.out.println("部署ID："+pd.getDeploymentId());
				System.out.println("流程key："+pd.getKey());
				System.out.println("---------------------------");
			}
		}
	}
	
	/**
	 * 查看流程图
	 * @throws IOException
	 */
	@Test
	public void viewPic() throws IOException {
		String deploymentId = "2501";
		List<String> list = pe.getRepositoryService().getDeploymentResourceNames(deploymentId);
		String resourceName = "";
		if(list!=null&&list.size()>0) {
			for (String name : list) {
				if (name.indexOf(".png")>=0) {
					resourceName = name;
				}
			}
		}
		
		InputStream in = pe.getRepositoryService().getResourceAsStream(deploymentId, resourceName);
		File file = new File("C:/activiti/"+resourceName);
		FileUtils.copyInputStreamToFile(in, file);
	}
	
	/**
	 * 查询最新流程定义
	 */
	@Test
	public void findlastVersionProcessDefinition() {
		List<ProcessDefinition> list = pe.getRepositoryService().createProcessDefinitionQuery()
				.orderByProcessDefinitionVersion().asc()
				.list();
		
		Map<String,ProcessDefinition> map = new LinkedHashMap<String,ProcessDefinition>();
		for (ProcessDefinition pd : list) {
			map.put(pd.getKey(), pd);
		}
		List<ProcessDefinition> listN = new ArrayList<ProcessDefinition>(map.values());
		
		if (listN!=null&&listN.size()>=0) {
			for (ProcessDefinition pd : listN) {
				System.out.println("流程定义ID："+pd.getId());
				System.out.println("流程定义名称："+pd.getName());
				System.out.println("部署ID："+pd.getDeploymentId());
				System.out.println("流程key："+pd.getKey());
				System.out.println("---------------------------");
			}
		}
	}
	
	/**
	 * 启动流程实例
	 */
	@Test
	public void startProcessInstance() {
		String processDefinitionKey = "askForLeave";
		ProcessInstance pi = pe.getRuntimeService().startProcessInstanceByKey(processDefinitionKey);
		System.out.println("流程实例ID："+pi.getProcessInstanceId());
		System.out.println("流程定义ID："+pi.getProcessDefinitionId());
	}
	
	/**
	 * 查询个人任务信息
	 */
	@Test
	public void findMyPersonalTask() {
		String assignee = "liboqiang";
		List<Task> list = pe.getTaskService().createTaskQuery().taskAssignee(assignee).list();
		if (list!=null&&list.size()>=0) {
			for (Task t : list) {
				System.out.println("任务ID："+t.getId());
				System.out.println("任务名称："+t.getName());
				System.out.println("任务办理人："+t.getAssignee());
				System.out.println("流程实例ID："+t.getProcessInstanceId());
				System.out.println("流程定义ID："+t.getProcessDefinitionId());
				System.out.println("-----------------------------------");
			}
		}
	}
	
	/**
	 * 完成我的个人任务
	 */
	@Test
	public void completeMyPersonalTask() {
		String taskId = "2504";
		pe.getTaskService().complete(taskId);
		System.out.println("完成任务，任务ID："+taskId);
	}
	
	/**
	 * 查询流程状态
	 */
	@Test
	public void isProcessEnd() {
		String processInstanceId = "2501";
		ProcessInstance pi = pe.getRuntimeService().createProcessInstanceQuery()
								.processInstanceId(processInstanceId)
								.singleResult();
		if (pi==null) {
			System.out.println("流程已经结束");
		}
		else {
			System.out.println("流程正在进行");
			System.out.println("任务ID："+pi.getActivityId());
		}
	}
	
	/**
	 * 查询历史任务
	 */
	@Test
	public void findHistoryTask() {
//		String assignee = "liboqiang";
		List<HistoricTaskInstance> list = pe.getHistoryService()
								.createHistoricTaskInstanceQuery()
//								.taskAssignee(assignee)
								.list();
		if (list!=null&&list.size()>=0) {
			for (HistoricTaskInstance hti : list) {
				System.out.println("任务ID："+hti.getId());
				System.out.println("任务名称："+hti.getName());
				System.out.println("任务办理人："+hti.getAssignee());
				System.out.println("任务结束时间："+(hti.getEndTime()==null?"not end":hti.getEndTime()));
				System.out.println("---------------------");
				
			}
		}
	}
	
	/**
	 * 查询历史流程实例
	 */
	@Test
	public void findHistoryProcessInstance()  {
		List<HistoricProcessInstance> list = pe.getHistoryService()
								.createHistoricProcessInstanceQuery()
								.list();
		if (list!=null&&list.size()>=0) {
			for (HistoricProcessInstance hpi : list) {
				System.out.println("流程实例ID"+hpi.getId());
				System.out.println("流程开始时间："+hpi.getStartTime());
				System.out.println("流程结束时间："+(hpi.getEndTime()==null?"not end":hpi.getEndTime()));
				System.out.println("流程定义ID："+hpi.getProcessDefinitionId());
				System.out.println("---------------------");
				
			}
		}
	}
}
