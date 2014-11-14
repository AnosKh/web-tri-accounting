package com.tri.erp.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by TSI Admin on 9/18/2014.
 */

@Controller
@RequestMapping("/common")
public class CommonViewController {

    @RequestMapping("/account-browser")
    public String getAccountBrowser() {
        return "common/account-browser";
    }

    @RequestMapping("/account-browser-with-segment")
    public String getAccountBrowserWithSegment() {
        return "common/account-browser-with-segment";
    }


    @RequestMapping("/sl-entity-browser")
    public String getSlEntityBrowser() {
        return "common/sl-entity-browser";
    }

    @RequestMapping("/item-browser")
    public String getItemBrowser() {
        return "common/item-browser";
    }

    @RequestMapping("/form-field-error-msg")
    public String getErrorViewer() {
        return "common/form-field-error-msg";
    }


    // test views
    @RequestMapping("/coa")
    public String testCoa() {
        return "test/coa";
    }
}
