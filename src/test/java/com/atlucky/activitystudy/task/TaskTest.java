package com.atlucky.activitystudy.task;

import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.activiti.engine.*;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 2023/11/27 11:41
 *
 * @author XiaoHu
 **/
@SpringBootTest
@Slf4j
public class TaskTest {
    /**
     *流程部署
     */
    @Test
    public void testDeployment(){
        //1、获取流程引擎
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        //2、获取流程存储对象
        RepositoryService repositoryService = defaultProcessEngine.getRepositoryService();
        //3、部署流程
        val deploy = repositoryService
                .createDeployment()
                .addClasspathResource("process/task/VariableListener.bpmn20.xml")
                .name("请年假流程")
                .deploy();
        log.info("{}",deploy.getId());
        log.info("{}",deploy.getName());
        log.info("{}",deploy.getKey());
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
            repositoryService.deleteDeployment(String.valueOf(122501),true);
        }
    }
    /**
     *查询部署流程
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
     *发起流程
     */
    @Test
    public void startProcess(){
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        RuntimeService runtimeService = defaultProcessEngine.getRuntimeService();
//        HashMap<String, Object> map = new HashMap<>(2);
//        map.put("group","JavaC组组长王五");
        Map<String, Object> map = new HashMap<>();
        map.put("day",36);
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("VariableListener",map);
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
                .processDefinitionKey("VariableListener")
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

}
