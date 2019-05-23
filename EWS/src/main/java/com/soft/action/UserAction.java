package com.soft.action;

import com.soft.service.IUserService;
import com.soft.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserAction {
    @Autowired
    IUserService userService;

    @RequestMapping("/login.do")
    @ResponseBody
    public String login(String uname, String upwd) {
        /*硬编码*/
        String str = userService.login(uname, upwd);
        return str;

    }

    @RequestMapping("/register.do")
    @ResponseBody
    public String register(String uname, String upwd, String email) {
        /*硬编码*/
        boolean temp = userService.register(uname, upwd, email);
        if (temp)
            return "success";
        else
            return "fault";

    }

    @RequestMapping("/findAllUser.do")
    @ResponseBody
    public Map<String, Object> findAllUser(int page, int limit) {
        System.out.println(page + "," + limit);
        List<Map<String, Object>> list = userService.findAllUser(page, limit);
        Map<String, Object> userCount = userService.findUserCount();
        Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "用户信息");
        map.put("count", userCount.get("count"));//用户表中的总记录数
        map.put("data", list);
        return map;//返回JSON格式数据，但是不能转换，因为找不到JSON消息转换器
    }

    @RequestMapping("/deleteUserInfoById.do")
    @ResponseBody
    public String deleteUserInfoById(int id) {
        String result = "success";
        int i = userService.deleteUserInfoById(id);
        if (i == 0)
            result = "fault";
        return result;//返回JSON格式数据，但是不能转换，因为找不到JSON消息转换器
    }
}
