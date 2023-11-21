package com.atlucky.activitystudy;

import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.RepositoryService;
import org.activiti.image.impl.DefaultProcessDiagramGenerator;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.*;
import java.time.Instant;
import java.util.zip.ZipInputStream;

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

    /**
     *通过classpath路径去部署流程
     */
    @Test
    public void deploymentProcessByResource(){
        //1、获取流程引擎
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        //2、获取流程存储对象
        RepositoryService repositoryService = defaultProcessEngine.getRepositoryService();
        //3、部署流程
        val deploy = repositoryService
                .createDeployment()
                .addClasspathResource("process/oa-leave.bpmn20.xml")
                .name("请假流程")
                .deploy();
        log.info("{}",deploy.getId());
        log.info("{}",deploy.getName());
        log.info("{}",deploy.getKey());

    }
    /**
     *通过文件所在路径去部署流程
     */
    @Test
    public void deploymentProcessByInPut() throws FileNotFoundException {
        //1、获取流程引擎
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        //2、获取流程存储对象
        RepositoryService repositoryService = defaultProcessEngine.getRepositoryService();
        //3、部署流程
        val deploy = repositoryService
                .createDeployment()
                .addInputStream("请假流程",new FileInputStream("D:\\Projection\\ActivityStudy\\src\\main\\resources\\process\\oa-leave.bpmn20.xml"))
                .name("请假流程")
                .deploy();

        log.info("{}",deploy.getId());
        log.info("{}",deploy.getName());
        log.info("{}",deploy.getKey());

    }
    /**
     *通过Zip所在路径去部署流程
     */
    @Test
    public void deploymentProcessByZip() throws FileNotFoundException {
        //1、获取流程引擎
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        //2、获取流程存储对象
        RepositoryService repositoryService = defaultProcessEngine.getRepositoryService();

        FileInputStream fileInputStream = new FileInputStream("D:\\Projection\\ActivityStudy\\src\\main\\resources\\process\\leave.zip");
        ZipInputStream zipInputStream = new ZipInputStream(fileInputStream);
        //3、部署流程
        val deploy = repositoryService
                .createDeployment()
                .addZipInputStream(zipInputStream)
                .name("请假流程")
                .deploy();

        log.info("{}",deploy.getId());
        log.info("{}",deploy.getName());
        log.info("{}",deploy.getKey());

    }

    /**
     * 生成SVG文件
     */
    @Test
    public void testGenerateSVG() throws IOException {
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        RepositoryService repositoryService = defaultProcessEngine.getRepositoryService();
        BpmnModel bpmnModel = repositoryService.getBpmnModel("oa-leave:2:5004");
        DefaultProcessDiagramGenerator defaultProcessDiagramGenerator = new DefaultProcessDiagramGenerator();
        InputStream inputStream = defaultProcessDiagramGenerator.generateDiagram(bpmnModel, "endEvent", "宋体", "宋体");
        String imageName="image-"+ Instant.now().getEpochSecond()+".svg";
        FileUtils.copyInputStreamToFile(inputStream,new File("process/"+imageName));
    }

}
