package com.eliteams.quick4j.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 视图控制器,返回jsp视图给前端
 * 
 * @author StarZou
 * @since 2014年5月28日 下午4:00:49
 **/
@Controller
@RequestMapping("/page")
public class PageController {

    /**
     * 登录页
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * dashboard页
     */
    @RequestMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }

    /**
     * dashboard页
     */
    @RequestMapping("/controller")
    public String template() {


        return "controller";
    }

    @RequestMapping("/controller2")
    public String template(@RequestParam("controllerflag") String a) {

        System.out.println("ssssssssss:"+a);
        return "controller";
    }

    /**
     * dashboard页
     */
    @RequestMapping("/allinformation")
    public String template1() {
        return "allinformation";
    }

    /**
     * dashboard页
     */
    @RequestMapping("/resetDevices")
    public String template2() {
        return "resetDevices";
    }



    /**
     * 404页
     */
    @RequestMapping("/404")
    public String error404() {
        return "404";
    }

    /**
     * 401页
     */
    @RequestMapping("/401")
    public String error401() {
        return "401";
    }

    /**
     * 500页
     */
    @RequestMapping("/500")
    public String error500() {
        return "500";
    }

}