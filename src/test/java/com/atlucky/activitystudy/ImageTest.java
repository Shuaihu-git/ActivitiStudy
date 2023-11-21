package com.atlucky.activitystudy;

import com.mysql.cj.x.protobuf.MysqlxCrud;
import lombok.extern.slf4j.Slf4j;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.engine.*;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.image.impl.DefaultProcessDiagramGenerator;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.time.Instant;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 2023/11/21 16:11
 *
 * @author XiaoHu
 **/
@Slf4j
@SpringBootTest
public class ImageTest {
    /**
     * 生成实时流程实例图
     */
    @Test
    public void testGenerateImage() throws IOException {
        ProcessEngine defaultProcessEngine = ProcessEngines.getDefaultProcessEngine();
        RepositoryService repositoryService = defaultProcessEngine.getRepositoryService();
        RuntimeService runtimeService = defaultProcessEngine.getRuntimeService();
        HistoryService historyService = defaultProcessEngine.getHistoryService();
        TaskService taskService = defaultProcessEngine.getTaskService();

        List<Task> tasks = taskService.createTaskQuery().active().list();
        Task task = tasks.get(0);
        ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(task.getProcessInstanceId()).singleResult();
        BpmnModel bpmnModel = repositoryService.getBpmnModel(task.getProcessDefinitionId());

        List<HistoricActivityInstance> list = historyService
                .createHistoricActivityInstanceQuery()
                .processInstanceId(processInstance.getId())
                .orderByProcessInstanceId()
                .desc()
                .list();
        List<String> lastTask = list
                .stream()
                .map(HistoricActivityInstance::getActivityId)
                .limit(1)
                .collect(Collectors.toList());
        lastTask.add(list.get(0).getActivityId());


        DefaultProcessDiagramGenerator defaultProcessDiagramGenerator = new DefaultProcessDiagramGenerator();
        /*
          七个参数分别是:
          BPMNModel
          高光节点
          高光顺序流
          活动字体名称
          标签字体名称
          批注字体名称
          生成默认关系图
          默认关系图映像文件名
         */
        InputStream inputStream = defaultProcessDiagramGenerator
                .generateDiagram(bpmnModel, lastTask, Collections.emptyList(),"宋体", "宋体", "宋体",true,"leave-oa");
        String imageName="image-"+ Instant.now().getEpochSecond()+".svg";
        FileUtils.copyInputStreamToFile(inputStream,new File("process/"+imageName));
    }

}
