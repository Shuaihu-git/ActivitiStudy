package com.atlucky.activitystudy.task.listener;

import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.ExecutionListener;

/**
 * 2023/11/27 12:00
 *
 * @author XiaoHu
 **/
public class FundExecutionListener implements ExecutionListener {
    @Override
    public void notify(DelegateExecution execution) {
        System.out.println("财务第一审批阶段");
        System.out.println("execution.getEventName() = " + execution.getEventName());
        System.out.println("execution.getProcessDefinitionId() = " + execution.getProcessDefinitionId());
    }
}
