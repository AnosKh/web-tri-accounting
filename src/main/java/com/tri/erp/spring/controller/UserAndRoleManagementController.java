package com.tri.erp.spring.controller;

import com.tri.erp.spring.reponse.StatusResponse;
import com.tri.erp.spring.service.implementations.DownloadService;
import com.tri.erp.spring.service.implementations.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by TSI Admin on 9/9/2014.
 */
@Controller
@RequestMapping("/admin/user")
public class UserAndRoleManagementController {

    private final String BASE_PATH = "admin/user/partials/";

    // view providers
    @RequestMapping(method = RequestMethod.GET)
    public String index() {
        return "admin/user/main";
    }

    @RequestMapping(value = "/user-list-page", method = RequestMethod.GET)
    public String getUserListPage() {
        return BASE_PATH + "user-list";
    }

    @RequestMapping(value = "/role-list-page", method = RequestMethod.GET)
    public String getRoleListPage() {
        return BASE_PATH + "role-list";
    }

    @RequestMapping(value = "/new-user-page", method = RequestMethod.GET)
    public String newUser() {
        return BASE_PATH + "add-edit-user";
    }

    @RequestMapping(value = "/user-details-page", method = RequestMethod.GET)
    public String userDetails() {
        return BASE_PATH + "user-details";
    }

    @RequestMapping(value = "/role-details-page", method = RequestMethod.GET)
    public String roleDetails() {
        return BASE_PATH + "role-details";
    }

    @RequestMapping(value = "/new-role-page", method = RequestMethod.GET)
    public String newRole() {
        return BASE_PATH + "add-edit-role";
    }

}