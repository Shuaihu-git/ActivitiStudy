package com.atlucky.activitystudy;

import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.engine.*;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.DeploymentQuery;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.image.impl.DefaultProcessDiagramGenerator;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.*;
import java.time.Instant;
import java.util.List;
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
     *通过XML、PNG路径去部署流程
     */
    @Test
    public void deploymentProcessByXMLPNG(){
        //1、获取流程引擎
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        //2、获取流程存储对象
        RepositoryService repositoryService = defaultProcessEngine.getRepositoryService();
        //3、部署流程
        val deploy = repositoryService
                .createDeployment()
                .addClasspathResource("process/oa-leave.bpmn20.xml")
                .addClasspathResource("process/oa-leave.png")
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

    /**
     *查询流程定义和部署流程
     */
    @Test
    public void testQueryDefinition(){
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        RepositoryService service = defaultProcessEngine.getRepositoryService();
        //流程部署流程查询
        List<Deployment> deployments = service.createDeploymentQuery().list();
        for (Deployment deploy : deployments) {
            log.info("{}",deploy.getId());
            log.info("{}",deploy.getName());
            log.info("{}",deploy.getKey());
        }
        //流程定义查询
        List<ProcessDefinition> processDefinitionList = service.createProcessDefinitionQuery().list();
        for (ProcessDefinition processDefinition : processDefinitionList) {
            log.info("{}",processDefinition.getId());
            log.info("{}",processDefinition.getName());
            log.info("{}",processDefinition.getKey());
            log.info("{}",processDefinition.getDeploymentId());
        }
    }

    /**
     *删除部署流程
     */
    @Test
    public void testDeleteProcess(){
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        RepositoryService repositoryService = defaultProcessEngine.getRepositoryService();
        List<Deployment> deploys = repositoryService.createDeploymentQuery().list();
        for (Deployment deploy : deploys) {
            repositoryService.deleteDeployment(deploy.getId());
        }
    }

    /**
     *发起流程
     */
    @Test
    public void startProcess(){
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        RuntimeService runtimeService = defaultProcessEngine.getRuntimeService();
        ProcessInstance processInstance = runtimeService.startProcessInstanceById("oa-leave:1:10004");
        log.info("{}",processInstance.getName());
        log.info("{}",processInstance.getId());
        log.info("{}",processInstance.getBusinessKey());
    }

}
