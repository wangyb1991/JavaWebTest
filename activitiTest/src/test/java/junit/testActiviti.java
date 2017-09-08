package junit;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.junit.Test;

public class testActiviti {
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
	
	//配置文件建表
	@Test
	public void creatTable2() {
		ProcessEngineConfiguration pec =  ProcessEngineConfiguration.createProcessEngineConfigurationFromResource("activiti.cfg.xml");
		//启动流程引擎
		ProcessEngine pe = pec.buildProcessEngine();
		System.out.println("processengine:"+pe);
	}
	
	
}
