package  com.my.test.user.controller;

import com.my.test.user.bean.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by xinkai on 2017/4/21.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController{
    @ResponseBody
    @RequestMapping(value="/login" )
    public String login(HttpServletRequest request,User user){
        return "loginSuccess";
}
    public static void main(String args[]) throws NoSuchMethodException {
           System.out.println(UserController.class.getAnnotations()[0].annotationType());
        System.out.println(UserController.class.getMethod ("login",new Class[]{}).getAnnotations()[0].annotationType());
    }
}
