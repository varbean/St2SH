package com.chen.test.action;
import com.chen.test.service.TestService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller("testAction")
@Scope("prototype")
@ParentPackage("struts-default")
@Namespace("/")
public class TestAction extends ActionSupport{
    @Resource(name = "TestService")
    private TestService tsi;
    private String id;

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }

    @Action(value = "test1", results = {@Result(name = "success", location = "/jsp/testOne.jsp")})
    public String test1(){
        HttpServletRequest request = ServletActionContext.getRequest();
        System.out.println(id);
        System.out.println("终于进来了");
        String str=tsi.cx_cwdh(id);
        System.out.println(str);
        request.setAttribute("zkbh",str);
        return SUCCESS;
    }
}
