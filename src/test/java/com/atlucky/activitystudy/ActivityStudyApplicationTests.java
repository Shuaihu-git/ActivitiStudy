package com.atlucky.activitystudy;

import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.ProcessEngines;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.prefs.Preferences;

@SpringBootTest
@Slf4j
class ActivityStudyApplicationTests {

    @Test
    void contextLoads() {
    }

    /**
     *手动初始化activiti数据库
     */
    @Test
    void test01() {
        ProcessEngineConfiguration configuration = ProcessEngineConfiguration.createStandaloneInMemProcessEngineConfiguration();
        configuration.setJdbcDriver("com.mysql.cj.jdbc.Driver");
        configuration.setJdbcUsername("root");
        configuration.setJdbcPassword("1016zsh..");
        configuration.setJdbcUrl("jdbc:mysql://localhost:3307/activiti?autoReconnect=true&useSSL=false&nullCatalogMeansCurrent=true");
        configuration.setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE);
        ProcessEngine processEngine = configuration.buildProcessEngine();
        System.out.println("processEngine="+processEngine);
    }

    /**
     *配置文件去创建，手动去创建org.activiti.db.create
     */
    @Test
    void test02() {
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        log.info("defaultProcessEngine={}",defaultProcessEngine);
    }

}
