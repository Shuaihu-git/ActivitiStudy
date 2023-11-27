package com.atlucky.activitystudy.task.listener;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;

/**
 * 2023/11/27 11:33
 *
 * @author XiaoHu
 **/
public class HRTaskListener implements TaskListener {
    @Override
    public void notify(DelegateTask delegateTask) {
        System.out.println("delegateTask.getProcessInstanceId() = " + delegateTask.getProcessInstanceId());
        System.out.println("delegateTask.getCreateTime() = " + delegateTask.getCreateTime());
        System.out.println("delegateTask.getName() = " + delegateTask.getName());
        System.out.println("delegateTask.getId() = " + delegateTask.getId());
        System.out.println("邮件抄送开始");
        System.out.println("邮件抄送结束");
    }
}
