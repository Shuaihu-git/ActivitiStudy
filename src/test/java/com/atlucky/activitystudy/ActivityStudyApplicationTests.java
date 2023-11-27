package com.atlucky.activitystudy;

import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.engine.*;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.DeploymentQuery;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.activiti.image.impl.DefaultProcessDiagramGenerator;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.*;
import java.time.Instant;
import java.util.HashMap;
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
                .addClasspathResource("process/claimTask.bpmn20.xml")
                .name("候选人签收任务")
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
                .addClasspathResource("process/test01.bpmn20.xml")
                .addClasspathResource("process/简单流程.png")
                .name("简单流程")
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
        BpmnModel bpmnModel = repositoryService.getBpmnModel("grouperProcess:1:52503");
        DefaultProcessDiagramGenerator defaultProcessDiagramGenerator = new DefaultProcessDiagramGenerator();
        InputStream inputStream = defaultProcessDiagramGenerator.generateDiagram(bpmnModel, "endEvent1", "宋体", "宋体");
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
//        HashMap<String, Object> map = new HashMap<>(2);
//        map.put("group","JavaC组组长王五");
        ProcessInstance processInstance = runtimeService.startProcessInstanceById("claimTask:1:92503");
        log.info("{}",processInstance.getName());
        log.info("{}",processInstance.getId());
        log.info("{}",processInstance.getBusinessKey());
    }

    /**
     *查询任务
     */
    @Test
    public void queryTask(){
        ProcessEngine engine = ProcessEngines.getDefaultProcessEngine();
        TaskService taskService = engine.getTaskService();
        List<Task> list = taskService.createTaskQuery().list();
        for (Task task : list) {
            log.info("{}",task.getName());
            log.info("{}",task.getId());
            log.info("{}",task.getParentTaskId());
            log.info("{}",task.getProcessInstanceId());
            //taskService.addComment(task.getId(),task.getProcessInstanceId(),"同意","备注意见");
            //taskService.addComment(task.getId(),task.getProcessInstanceId(),"同意");
        }

    }

    /**
     *查询相关待办候选人的任务并完成任务
     */
    @Test
    public void ClaimTask(){
        ProcessEngine engine = ProcessEngines.getDefaultProcessEngine();
        TaskService taskService = engine.getTaskService();
        //查询候选人名下的任务
        List<Task> list = taskService
                .createTaskQuery()
                //查询候选人名下的任务列表
                //.taskCandidateUser("wanggang")
                .taskAssignee("wanggang")
                .list();
        for (Task task : list) {
            log.info("{}",task.getName());
            log.info("{}",task.getId());
            log.info("{}",task.getParentTaskId());
            log.info("{}",task.getProcessInstanceId());
            //taskService.addComment(task.getId(),task.getProcessInstanceId(),"同意","备注意见");
            //taskService.addComment(task.getId(),task.getProcessInstanceId(),"同意");
            //领取任务
            //taskService.claim(task.getId(),"wanggang");
            //完成任务
            taskService.complete(task.getId());
        }
    }
    @Test
    public void getComment(){
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        TaskService taskService = defaultProcessEngine.getTaskService();
        List<Comment> commentsByType = taskService.getCommentsByType("APPROVE.OK");
        for (Comment comment : commentsByType) {
            System.out.println("comment.getTaskId() = " + comment.getTaskId());
            System.out.println("comment.getFullMessage() = " + comment.getFullMessage());
            System.out.println("comment.getProcessInstanceId() = " + comment.getProcessInstanceId());
        }
    }
    /**
     *通过人员查询待办任务
     */
    @Test
    public void queryTaskByAssignee(){
        ProcessEngine engine = ProcessEngines.getDefaultProcessEngine();
        TaskService taskService = engine.getTaskService();
        List<Task> list = taskService.createTaskQuery().taskAssignee("灵活待办人员审批请假流程-老六").active().list();
        for (Task task : list) {
            log.info("{}",task.getName());
            log.info("{}",task.getAssignee());
            log.info("{}",task.getProcessDefinitionId());
        }
    }

    /**
     *完成任务
     */
    @Test
    public void completeTask(){
        ProcessEngine engine = ProcessEngines.getDefaultProcessEngine();
        TaskService taskService = engine.getTaskService();
        /*Task task = taskService
                .createTaskQuery()
                .processDefinitionId("用户角色控制流程:1:32503")
                .singleResult();*/
        List<Task> list = taskService
                .createTaskQuery()
                .processDefinitionId("grouperProcess:2:75003")
                .list();
        for (Task task : list) {
//            HashMap<String, Object> map = new HashMap<>(2);
//            map.put("group","灵活待办人员审批请假流程-老六");
//            map.put("type","APPROVE.OK");
//            map.put("comment","近期表现良好，准假");
//            taskService.addComment(task.getId(), task.getProcessInstanceId(), map.get("type").toString(),map.get("comment").toString());
//            taskService.complete(task.getId(),map);
            taskService.complete(task.getId());

        }


    }

    /**
     *查询历史流程实例
     */
    @Test
    public void queryHistoryProcessInstance(){
        ProcessEngine engine = ProcessEngines.getDefaultProcessEngine();
        HistoryService historyService = engine.getHistoryService();
        List<HistoricProcessInstance> list = historyService.createHistoricProcessInstanceQuery().list();
        for (HistoricProcessInstance instance : list) {
            log.info("instance.getId()={}",instance.getId());
            log.info("instance.getName()={}",instance.getName());
            log.info("instance.getProcessDefinitionId()={}",instance.getProcessDefinitionId());
        }
    }

    /**
     *查询历史任务
     */
    @Test
    public void queryHistoryTaskInstance(){
        ProcessEngine engine = ProcessEngines.getDefaultProcessEngine();
        HistoryService historyService = engine.getHistoryService();
        List<HistoricTaskInstance> list = historyService.createHistoricTaskInstanceQuery().list();
        for (HistoricTaskInstance instance : list) {
            log.info("instance.getId()={}",instance.getId());
            log.info("instance.instance.getName()={}",instance.getName());
            log.info("instance.getProcessDefinitionId()={}",instance.getProcessDefinitionId());
            log.info("instance.getStartTime()={}",instance.getStartTime());
            log.info("instance.getEndTime()={}",instance.getEndTime());
        }
    }
    /**
     *查询历史活动
     */
    @Test
    public void queryHistoryActivityInstance(){
        ProcessEngine engine = ProcessEngines.getDefaultProcessEngine();
        HistoryService historyService = engine.getHistoryService();
        List<HistoricActivityInstance> list = historyService.createHistoricActivityInstanceQuery().list();
        for (HistoricActivityInstance instance : list) {
            log.info("instance.getId()={}",instance.getId());
            log.info("instance.getActivityName()={}",instance.getActivityName());
            log.info("instance.instance.getActivityType()={}",instance.getActivityType());
            log.info("instance.getProcessDefinitionId()={}",instance.getProcessDefinitionId());
            log.info("instance.getStartTime()={}",instance.getStartTime());
            log.info("instance.getEndTime()={}",instance.getEndTime());
        }
    }



}
