package com.atlucky.activitystudy.task.listener;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;

/**
 * 2023/11/27 17:29
 *
 * @author XiaoHu
 **/
public class YearTaskListener implements TaskListener {
    @Override
    public void notify(DelegateTask delegateTask) {
        System.out.println("delegateTask.getName() = " + delegateTask.getName());
        System.out.println("delegateTask.getCreateTime() = " + delegateTask.getCreateTime());
        System.out.println("delegateTask.getVariable(day) = " + delegateTask.getVariable("day"));
    }
}
