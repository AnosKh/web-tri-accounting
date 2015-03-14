package com.tri.erp.spring.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;

/**
 * Created by TSI Admin on 11/1/2014.
 */

@Entity
public class Menu {
    @Id
    @GeneratedValue
    @Column
    private Integer id;

    @Column
    private String title;

    @Column
    private String state;

    @Column
    private String iconClass;

    @JsonIgnoreProperties(ignoreUnknown = true)
    @NotFound(action = NotFoundAction.IGNORE)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="FK_parentMenuId", nullable = true, columnDefinition = "0")
    private Menu parentMenu;

    public Menu(String title, String state, String iconClass, Menu parentMenu) {
        this.title = title;
        this.state = state;
        this.iconClass = iconClass;
        this.parentMenu = parentMenu;
    }

    public Menu() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getIconClass() {
        return iconClass;
    }

    public void setIconClass(String iconClass) {
        this.iconClass = iconClass;
    }

    public Menu getParentMenu() {
        return parentMenu;
    }

    public void setParentMenu(Menu parentMenu) {
        this.parentMenu = parentMenu;
    }
}
