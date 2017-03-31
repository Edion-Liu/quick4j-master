<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>




<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.0.3
Version: 1.5.5
Author: KeenThemes
Website: http://www.keenthemes.com/
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8"/>
    <title>设备状态查询</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <meta name="MobileOptimized" content="320">
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>




    <%-- 表格添加新功能--%>
    <link rel="stylesheet" type="text/css" href="app/css/Bootstrap_table/bootstrap-table.css">
    <link rel="stylesheet" href="assets/bootstrap-table/bootstrap-editable.css">




    <!-- //按钮炫酷效果-->
    <style>
        .custom{
            color: white;
            font-weight: bold;
            background-color: grey;
            width: 80px;
            margin: 3px 3px;
        }

        .powerstyle{

            /*font-size: 16px;*/
            /* margin-right: 20px;*/

        }
        .waterstyle{

            /*font-size: 16px;*/
            /* margin-right: 20px;*/

        }

        .powerstyle_a{

            float: left;
            font-size: 16px;
            margin-left: 20px;

            /* margin-right: 20px;*/

        }
        .powerstyle_b{

            font-size: 16px;
            /* margin-right: 20px;*/

        }
    </style>



</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="header-inner">
        <!-- BEGIN LOGO -->
        <a class="navbar-brand" href="index.html">
            <img src="assets/img/logo.png" alt="logo" class="img-responsive"/>
        </a>
        <!-- END LOGO -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <img src="assets/img/menu-toggler.png" alt=""/>
        </a>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <ul class="nav navbar-nav pull-right">
            <!-- BEGIN NOTIFICATION DROPDOWN -->

            <!-- END NOTIFICATION DROPDOWN -->
            <!-- BEGIN INBOX DROPDOWN -->

            <!-- END INBOX DROPDOWN -->
            <!-- BEGIN TODO DROPDOWN -->

            <!-- END TODO DROPDOWN -->
            <!-- BEGIN USER LOGIN DROPDOWN -->
            <li class="dropdown user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                    <img alt="" src="assets/img/avatar1_small.jpg"/>
                    <span class="username"> ${userInfo.username } </span>
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="javascript:;" id="trigger_fullscreen"><i class="fa fa-move"></i> 全屏</a>
                    </li>
                    <li>
                        <a href="rest/user/extra_lock">
                            <i class="fa fa-lock"></i> 锁屏
                        </a>
                    </li>
                    <li>
                        <a href="rest/user/logout">
                            <i class="fa fa-key"></i> 退出
                        </a>
                    </li>
                </ul>
            </li>
            <!-- END USER LOGIN DROPDOWN -->
        </ul>
        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <div class="page-sidebar navbar-collapse collapse">
            <!-- BEGIN SIDEBAR MENU -->
            <ul class="page-sidebar-menu">
                <li class="sidebar-toggler-wrapper">
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    <div class="sidebar-toggler hidden-phone">
                    </div>
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                </li>
                <%--  <li class="sidebar-search-wrapper">
                      <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                      <form class="sidebar-search" action="extra_search.html" method="POST">
                          <div class="form-container">
                              <div class="input-box">
                                  <a href="javascript:;" class="remove"></a>
                                  <input type="text" placeholder="Search..."/>
                                  <input type="button" class="submit" value=" "/>
                              </div>
                          </div>
                      </form>
                      <!-- END RESPONSIVE QUICK SEARCH FORM -->
                  </li>
                  <li class="start ">
                      <a href="index.html">
                          <i class="fa fa-home"></i>
                          <span class="title">
                          Dashboard
                      </span>
                      </a>
                  </li>
                  <li class="">
                      <a href="index_horizontal_menu.html">
                          <i class="fa fa-briefcase"></i>
                          <span class="title">
                          Dashboard 2
                      </span>
                      </a>
                  </li>
                  <li class="active ">
                      <a href="javascript:;">
                          <i class="fa fa-cogs"></i>
                          <span class="title">
                          Layouts
                      </span>
                          <span class="selected">
                      </span>
                          <span class="arrow open">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="layout_session_timeout.html">
                              <span class="badge badge-roundless badge-important">
                                  new
                              </span>
                                  Session Timeout</a>
                          </li>
                          <li>
                              <a href="layout_idle_timeout.html">
                              <span class="badge badge-roundless badge-important">
                                  new
                              </span>
                                  User Idle Timeout</a>
                          </li>
                          <li>
                              <a href="layout_language_bar.html">
                                  Language Switch Bar</a>
                          </li>
                          <li>
                              <a href="layout_horizontal_sidebar_menu.html">
                                  Horizontal & Sidebar Menu</a>
                          </li>
                          <li>
                              <a href="layout_horizontal_menu1.html">
                                  Horizontal Menu 1</a>
                          </li>
                          <li>
                              <a href="layout_horizontal_menu2.html">
                                  Horizontal Menu 2</a>
                          </li>
                          <li>
                              <a href="layout_search_on_header.html">
                              <span class="badge badge-roundless badge-important">
                                  new
                              </span>
                                  Search Box On Header</a>
                          </li>
                          <li>
                              <a href="layout_sidebar_toggler_on_header.html">
                                  Sidebar Toggler On Header</a>
                          </li>
                          <li>
                              <a href="layout_sidebar_reversed.html">
                              <span class="badge badge-roundless badge-success">
                                  new
                              </span>
                                  Right Sidebar Page</a>
                          </li>
                          <li>
                              <a href="layout_sidebar_fixed.html">
                                  Sidebar Fixed Page</a>
                          </li>
                          <li>
                              <a href="layout_sidebar_closed.html">
                                  Sidebar Closed Page</a>
                          </li>
                          <li>
                              <a href="layout_disabled_menu.html">
                                  Disabled Menu Links</a>
                          </li>
                          <li class="active">
                              <a href="layout_blank_page.html">
                                  Blank Page</a>
                          </li>
                          <li>
                              <a href="layout_boxed_page.html">
                                  Boxed Page</a>
                          </li>
                          <li>
                              <a href="layout_boxed_not_responsive.html">
                                  Non-Responsive Boxed Layout</a>
                          </li>
                          <li>
                              <a href="layout_promo.html">
                                  Promo Page</a>
                          </li>
                          <li>
                              <a href="layout_email.html">
                                  Email Templates</a>
                          </li>
                          <li>
                              <a href="layout_ajax.html">
                                  Content Loading via Ajax</a>
                          </li>
                      </ul>
                  </li>
                  <li id="frontend-link" class="tooltips" data-placement="right" data-original-title="Frontend&nbsp;Theme For&nbsp;Metronic&nbsp;Admin">
                      <a href="http://keenthemes.com/preview/index.php?theme=metronic_frontend" target="_blank">
                          <i class="fa fa-gift"></i>
                          <span class="title">
                          Frontend Theme
                      </span>
                      </a>
                  </li>
                  <li class="">
                      <a href="javascript:;">
                          <i class="fa fa-bookmark-o"></i>
                          <span class="title">
                          UI Features
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="ui_general.html">
                                  General</a>
                          </li>
                          <li>
                              <a href="ui_buttons.html">
                                  Buttons & Icons</a>
                          </li>
                          <li>
                              <a href="ui_typography.html">
                                  Typography</a>
                          </li>
                          <li>
                              <a href="ui_modals.html">
                                  Modals</a>
                          </li>
                          <li>
                              <a href="ui_extended_modals.html">
                                  Extended Modals</a>
                          </li>
                          <li>
                              <a href="ui_tabs_accordions_navs.html">
                                  Tabs, Accordions & Navs</a>
                          </li>
                          <li>
                              <a href="ui_datepaginator.html">
                              <span class="badge badge-roundless badge-success">
                                  new
                              </span>
                                  Date Paginator</a>
                          </li>
                          <li>
                              <a href="ui_bootbox.html">
                              <span class="badge badge-roundless badge-important">
                                  new
                              </span>
                                  Bootbox Dialogs</a>
                          </li>
                          <li>
                              <a href="ui_tiles.html">
                                  Tiles</a>
                          </li>
                          <li>
                              <a href="ui_toastr.html">
                                  Toastr Notifications</a>
                          </li>
                          <li>
                              <a href="ui_tree.html">
                                  Tree View</a>
                          </li>
                          <li>
                              <a href="ui_nestable.html">
                                  Nestable List</a>
                          </li>
                          <li>
                              <a href="ui_ion_sliders.html">
                                  Ion Range Sliders</a>
                          </li>
                          <li>
                              <a href="ui_noui_sliders.html">
                                  NoUI Range Sliders</a>
                          </li>
                          <li>
                              <a href="ui_jqueryui_sliders.html">
                                  jQuery UI Sliders</a>
                          </li>
                          <li>
                              <a href="ui_knob.html">
                                  Knob Circle Dials</a>
                          </li>
                      </ul>
                  </li>
                  <li class="">
                      <a href="javascript:;">
                          <i class="fa fa-table"></i>
                          <span class="title">
                          Form Stuff
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="form_controls.html">
                                  Form Controls</a>
                          </li>
                          <li>
                              <a href="form_layouts.html">
                                  Form Layouts</a>
                          </li>
                          <li>
                              <a href="form_component.html">
                                  Form Components</a>
                          </li>
                          <li>
                              <a href="form_editable.html">
                              <span class="badge badge-roundless badge-warning">
                                  new
                              </span>
                                  Form X-editable</a>
                          </li>
                          <li>
                              <a href="form_wizard.html">
                                  Form Wizard</a>
                          </li>
                          <li>
                              <a href="form_validation.html">
                                  Form Validation</a>
                          </li>
                          <li>
                              <a href="form_image_crop.html">
                              <span class="badge badge-roundless badge-important">
                                  new
                              </span>
                                  Image Cropping</a>
                          </li>
                          <li>
                              <a href="form_fileupload.html">
                                  Multiple File Upload</a>
                          </li>
                          <li>
                              <a href="form_dropzone.html">
                                  Dropzone File Upload</a>
                          </li>
                      </ul>
                  </li>
                  <li class="">
                      <a href="javascript:;">
                          <i class="fa fa-sitemap"></i>
                          <span class="title">
                          Pages
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="page_portfolio.html">
                                  <i class="fa fa-briefcase"></i>
                                  <span class="badge badge-warning badge-roundless">
                                  new
                              </span>
                                  Portfolio</a>
                          </li>
                          <li>
                              <a href="page_timeline.html">
                                  <i class="fa fa-clock-o"></i>
                                  <span class="badge badge-info">
                                  4
                              </span>
                                  Timeline</a>
                          </li>
                          <li>
                              <a href="page_coming_soon.html">
                                  <i class="fa fa-cogs"></i>
                                  Coming Soon</a>
                          </li>
                          <li>
                              <a href="page_blog.html">
                                  <i class="fa fa-comments"></i>
                                  Blog</a>
                          </li>
                          <li>
                              <a href="page_blog_item.html">
                                  <i class="fa fa-font"></i>
                                  Blog Post</a>
                          </li>
                          <li>
                              <a href="page_news.html">
                                  <i class="fa fa-coffee"></i>
                                  <span class="badge badge-success">
                                  9
                              </span>
                                  News</a>
                          </li>
                          <li>
                              <a href="page_news_item.html">
                                  <i class="fa fa-bell"></i>
                                  News View</a>
                          </li>
                          <li>
                              <a href="page_about.html">
                                  <i class="fa fa-group"></i>
                                  About Us</a>
                          </li>
                          <li>
                              <a href="page_contact.html">
                                  <i class="fa fa-envelope-o"></i>
                                  Contact Us</a>
                          </li>
                          <li>
                              <a href="page_calendar.html">
                                  <i class="fa fa-calendar"></i>
                                  <span class="badge badge-important">
                                  14
                              </span>
                                  Calendar</a>
                          </li>
                      </ul>
                  </li>
                  <li class="">
                      <a href="javascript:;">
                          <i class="fa fa-gift"></i>
                          <span class="title">
                          Extra
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="extra_profile.html">
                                  User Profile</a>
                          </li>
                          <li>
                              <a href="extra_lock.html">
                                  Lock Screen</a>
                          </li>
                          <li>
                              <a href="extra_faq.html">
                                  FAQ</a>
                          </li>
                          <li>
                              <a href="inbox.html">
                              <span class="badge badge-important">
                                  4
                              </span>
                                  Inbox</a>
                          </li>
                          <li>
                              <a href="extra_search.html">
                                  Search Results</a>
                          </li>
                          <li>
                              <a href="extra_invoice.html">
                                  Invoice</a>
                          </li>
                          <li>
                              <a href="extra_pricing_table.html">
                                  Pricing Tables</a>
                          </li>
                          <li>
                              <a href="extra_404_option1.html">
                                  404 Page Option 1</a>
                          </li>
                          <li>
                              <a href="extra_404_option2.html">
                                  404 Page Option 2</a>
                          </li>
                          <li>
                              <a href="extra_404_option3.html">
                                  404 Page Option 3</a>
                          </li>
                          <li>
                              <a href="extra_500_option1.html">
                                  500 Page Option 1</a>
                          </li>
                          <li>
                              <a href="extra_500_option2.html">
                                  500 Page Option 2</a>
                          </li>
                      </ul>
                  </li>
                  <li>
                      <a class="active" href="javascript:;">
                          <i class="fa fa-leaf"></i>
                          <span class="title">
                          3 Level Menu
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="javascript:;">
                                  Item 1
                                  <span class="arrow">
                              </span>
                              </a>
                              <ul class="sub-menu">
                                  <li>
                                      <a href="#">Sample Link 1</a>
                                  </li>
                                  <li>
                                      <a href="#">Sample Link 2</a>
                                  </li>
                                  <li>
                                      <a href="#">Sample Link 3</a>
                                  </li>
                              </ul>
                          </li>
                          <li>
                              <a href="javascript:;">
                                  Item 1
                                  <span class="arrow">
                              </span>
                              </a>
                              <ul class="sub-menu">
                                  <li>
                                      <a href="#">Sample Link 1</a>
                                  </li>
                                  <li>
                                      <a href="#">Sample Link 1</a>
                                  </li>
                                  <li>
                                      <a href="#">Sample Link 1</a>
                                  </li>
                              </ul>
                          </li>
                          <li>
                              <a href="#">
                                  Item 3 </a>
                          </li>
                      </ul>
                  </li>
                  <li>
                      <a href="javascript:;">
                          <i class="fa fa-folder-open"></i>
                          <span class="title">
                          4 Level Menu
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="javascript:;">
                                  <i class="fa fa-cogs"></i> Item 1
                                  <span class="arrow">
                              </span>
                              </a>
                              <ul class="sub-menu">
                                  <li>
                                      <a href="javascript:;">
                                          <i class="fa fa-user"></i>
                                          Sample Link 1
                                          <span class="arrow">
                                      </span>
                                      </a>
                                      <ul class="sub-menu">
                                          <li>
                                              <a href="#"><i class="fa fa-remove"></i> Sample Link 1</a>
                                          </li>
                                          <li>
                                              <a href="#"><i class="fa fa-pencil"></i> Sample Link 1</a>
                                          </li>
                                          <li>
                                              <a href="#"><i class="fa fa-edit"></i> Sample Link 1</a>
                                          </li>
                                      </ul>
                                  </li>
                                  <li>
                                      <a href="#"><i class="fa fa-user"></i> Sample Link 1</a>
                                  </li>
                                  <li>
                                      <a href="#"><i class="fa fa-external-link"></i> Sample Link 2</a>
                                  </li>
                                  <li>
                                      <a href="#"><i class="fa fa-bell"></i> Sample Link 3</a>
                                  </li>
                              </ul>
                          </li>
                          <li>
                              <a href="javascript:;">
                                  <i class="fa fa-globe"></i> Item 2
                                  <span class="arrow">
                              </span>
                              </a>
                              <ul class="sub-menu">
                                  <li>
                                      <a href="#"><i class="fa fa-user"></i> Sample Link 1</a>
                                  </li>
                                  <li>
                                      <a href="#"><i class="fa fa-external-link"></i> Sample Link 1</a>
                                  </li>
                                  <li>
                                      <a href="#"><i class="fa fa-bell"></i> Sample Link 1</a>
                                  </li>
                              </ul>
                          </li>
                          <li>
                              <a href="#">
                                  <i class="fa fa-folder-open"></i>
                                  Item 3 </a>
                          </li>
                      </ul>
                  </li>
                  <li class="">
                      <a href="javascript:;">
                          <i class="fa fa-user"></i>
                          <span class="title">
                          Login Options
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="login.html">
                                  Login Form 1</a>
                          </li>
                          <li>
                              <a href="login_soft.html">
                                  Login Form 2</a>
                          </li>
                      </ul>
                  </li>
                  <li class="">
                      <a href="javascript:;">
                          <i class="fa fa-th"></i>
                          <span class="title">
                          Data Tables
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="table_basic.html">
                                  Basic Datatables</a>
                          </li>
                          <li>
                              <a href="table_responsive.html">
                                  Responsive Datatables</a>
                          </li>
                          <li>
                              <a href="table_managed.html">
                                  Managed Datatables</a>
                          </li>
                          <li>
                              <a href="table_editable.html">
                                  Editable Datatables</a>
                          </li>
                          <li>
                              <a href="table_advanced.html">
                                  Advanced Datatables</a>
                          </li>
                          <li>
                              <a href="table_ajax.html">
                                  Ajax Datatables</a>
                          </li>
                      </ul>
                  </li>
                  <li class="">
                      <a href="javascript:;">
                          <i class="fa fa-file-text"></i>
                          <span class="title">
                          Portlets
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="portlet_general.html">
                                  General Portlets</a>
                          </li>
                          <li>
                              <a href="portlet_draggable.html">
                                  Draggable Portlets</a>
                          </li>
                      </ul>
                  </li>
                  <li class="">
                      <a href="javascript:;">
                          <i class="fa fa-map-marker"></i>
                          <span class="title">
                          Maps
                      </span>
                          <span class="arrow ">
                      </span>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a href="maps_google.html">
                                  Google Maps</a>
                          </li>
                          <li>
                              <a href="maps_vector.html">
                                  Vector Maps</a>
                          </li>
                      </ul>
                  </li>
                  <li class="last ">
                      <a href="charts.html">
                          <i class="fa fa-bar-chart-o"></i>
                          <span class="title">
                          Visual Charts
                      </span>
                      </a>
                  </li>--%>

                <li class="">
                    <a href="/" id="btn-dashboard">
                        <i class="fa fa-home"></i><span class="title"> 首页 </span><span
                    > </span>
                    </a>
                </li>

                <li class="">
                    <a href="javascript:;">
                        <i class="fa fa-gears"></i><span class="title"> 系统管理 </span><span
                            class="arrow "> </span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="javascript:;">
                                用户管理
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                角色管理
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                权限管理
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a href="javascript:;">
                        <i class="fa fa-user"></i><span class="title"> 个人中心 </span><span
                            class="arrow "> </span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="javascript:;">
                                信息修改
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                密码修改
                            </a>
                        </li>

                        <!-- 测试权限控制 -->
                        <shiro:hasAnyRoles name="super_admin">
                            <li>
                                <a href="javascript:;">super_admin 拥有此角色</a>
                            </li>
                        </shiro:hasAnyRoles>

                        <shiro:hasPermission name="user:create">
                            <li>
                                <a href="javascript:;">user:create 拥有此权限</a>
                            </li>
                        </shiro:hasPermission>

                        <shiro:hasPermission name="user:update">
                            <li>
                                <a href="javascript:;">user:update 拥有此权限</a>
                            </li>
                        </shiro:hasPermission>

                    </ul>
                </li>

                <li class="start active">
                    <a href="javascript:;">
                        <i class="fa fa-gears"></i><span class="title"> 硬件设备 </span><span
                            class="arrow "> </span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="rest/page/controller">
                                设备控制端
                            </a>
                        </li>
                        <li>
                            <a class="selected" href="rest/page/allinformation">
                                设备状态查询
                            </a>
                        </li>
                        <li>
                            <a  href="rest/page/resetDevices">
                                设备修改/激活
                            </a>
                        </li>
                    </ul>
                </li>



            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            Widget settings form goes here
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn blue">Save changes</button>
                            <button type="button" class="btn default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <!-- BEGIN STYLE CUSTOMIZER -->
            <div class="theme-panel hidden-xs hidden-sm">
                <div class="toggler"></div>
                <div class="toggler-close"></div>
                <div class="theme-options">
                    <div class="theme-option theme-colors clearfix">
                        <span> 主题颜色 </span>
                        <ul>
                            <li class="color-black current color-default" data-style="default"></li>
                            <li class="color-blue" data-style="blue"></li>
                            <li class="color-brown" data-style="brown"></li>
                            <li class="color-purple" data-style="purple"></li>
                            <li class="color-grey" data-style="grey"></li>
                            <li class="color-white color-light" data-style="light"></li>
                        </ul>
                    </div>
                    <div class="theme-option">
                        <span> 布局 </span>
                        <select class="layout-option form-control input-small">
                            <option value="fluid">顺序</option>
                            <option value="boxed">盒状</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span> 标题 </span>
                        <select class="header-option form-control input-small">
                            <option value="fixed">固定</option>
                            <option value="default">默认</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span> 工具栏 </span>
                        <select class="sidebar-option form-control input-small">
                            <option value="fixed">固定</option>
                            <option value="default">默认</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span> 工具栏位置 </span>
                        <select class="sidebar-pos-option form-control input-small">
                            <option value="left">左边</option>
                            <option value="right">右边</option>
                        </select>
                    </div>
                    <div class="theme-option">
                        <span> 页脚 </span>
                        <select class="footer-option form-control input-small">
                            <option value="fixed">固定</option>
                            <option value="default">默认</option>
                        </select>
                    </div>
                </div>
            </div>
            <%--

            <div class="theme-panel hidden-xs hidden-sm">
                <div class="toggler">
                </div>
                <div class="toggler-close">
                </div>
                <div class="theme-options">
                    <div class="theme-option theme-colors clearfix">
						<span>
							THEME COLOR
						</span>
                        <ul>
                            <li class="color-black current color-default" data-style="default">
                            </li>
                            <li class="color-blue" data-style="blue">
                            </li>
                            <li class="color-brown" data-style="brown">
                            </li>
                            <li class="color-purple" data-style="purple">
                            </li>
                            <li class="color-grey" data-style="grey">
                            </li>
                            <li class="color-white color-light" data-style="light">
                            </li>
                        </ul>
                    </div>
                    <div class="theme-option">
						<span>
							Layout
						</span>
                        <select class="layout-option form-control input-small">
                            <option value="fluid" selected="selected">Fluid</option>
                            <option value="boxed">Boxed</option>
                        </select>
                    </div>
                    <div class="theme-option">
						<span>
							Header
						</span>
                        <select class="header-option form-control input-small">
                            <option value="fixed" selected="selected">Fixed</option>
                            <option value="default">Default</option>
                        </select>
                    </div>
                    <div class="theme-option">
						<span>
							Sidebar
						</span>
                        <select class="sidebar-option form-control input-small">
                            <option value="fixed">Fixed</option>
                            <option value="default" selected="selected">Default</option>
                        </select>
                    </div>
                    <div class="theme-option">
						<span>
							Sidebar Position
						</span>
                        <select class="sidebar-pos-option form-control input-small">
                            <option value="left" selected="selected">Left</option>
                            <option value="right">Right</option>
                        </select>
                    </div>
                    <div class="theme-option">
						<span>
							Footer
						</span>
                        <select class="footer-option form-control input-small">
                            <option value="fixed">Fixed</option>
                            <option value="default" selected="selected">Default</option>
                        </select>
                    </div>
                </div>
            </div>

            --%>
            <!-- END STYLE CUSTOMIZER -->
            <!-- BEGIN PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                    <h3 class="page-title">
                        设备状态查询 <small> <a href="rest/page/controller">设备控制端</a></small>
                    </h3>

                </div>
            </div>

            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row">
                <div class="col-md-12">
                    <!--设备在线掉线-->
                    <div id="toolbar">
                        <div >
                            <label class="checkbox-inline">
                                <input type="checkbox" checked="checked" id="inlineCheckbox1" value="option1"> 在线
                            </label>
                            <label class="checkbox-inline" style="margin-right: 20px;">
                                <input type="checkbox" checked="checked" id="inlineCheckbox2" value="option2"> 掉线
                            </label>



                        </div>

                    </div>
                    <!--表格初始化-->
                    <div class="container" style="width:100%;" >
                        <table id="table" ></table>
                    </div>

                    <%--  Page content goes here--%>
                </div>
            </div>
            <!-- END PAGE CONTENT-->
        </div>
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="footer-inner">
        2016 &copy; 天涯同行智能控制系统 by Edion.
    </div>
    <div class="footer-tools">
		<span class="go-top">
			<i class="fa fa-angle-up"></i>
		</span>
    </div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/respond.min.js"></script>
<script src="assets/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="assets/scripts/app.js"></script>
<script>
    jQuery(document).ready(function() {
        App.init();
    });
</script>


<%--表格功能--%>
<script src="app/js/Bootstrap_table/bootstrap-table.js" type="text/javascript" charset="utf-8"></script>
<script src="assets/bootstrap-table/src/locale/bootstrap-table-zh-CN.js"></script>
<script src="app/js/Bootstrap_table/tableExport.js"></script>
<script src="app/js/Bootstrap_table/bootstrap-table-export.js"></script>


<%--表格功能--%>
<script>



    /*    全局变量*/
    var $table = $('#table');
    var      $remove = $('#remove');
    var    selections = [];
    var $inlineCheckbox1=$('#inlineCheckbox1');
    var $inlineCheckbox2=$('#inlineCheckbox2');
    var checkboxFlag=0;  //按键选择标志
    //var serverurl="http://192.168.1.100:9010/user/testController";
    var serverurl="http://139.224.47.78:9010/user/testController";

    var DeviceFlag=0;
    var Deviceid;
    /*提示定时器变量*/
    var warningdata= {
        data : Array(),
        get : function(key){
            return this.data[key];
        },
        set : function(key, value) {
            this.data[key] = value;
            return;
        }
    }

    /*报警标志变量*/
    var warningflag= {
        data : Array(),
        get : function(key){
            return this.data[key];
        },
        set : function(key, value) {
            this.data[key] = value;
            return;
        }
    }

    //是否使用电量表
    var AmmeterDATA= {
        data : Array(),
        get : function(key){
            return this.data[key];
        },
        set : function(key, value) {
            this.data[key] = value;
            return;
        }
    }


    /*a.set('k1', 'abc');
     a.set('k2', [0,1,2,3,4,5]);
     a.set('k3', {"kk1":"vv1", "kk2":"vv2"});

     console.log(a.get('k1'));
     console.log(a.get('k2'));
     console.log(a.get('k3'));*/


    /*全局变量结束*/


    $(function () {

        var OTable=new TableInit();
        OTable.Init();

    });
    /*设备在线 掉线选择*/
    function onOutlinestatus() {
        $inlineCheckbox1.click(

                function () {
                    checkboxFlag=1;
                    $table.bootstrapTable('refresh',{'url':serverurl});
                    checkboxFlag=0;

                    /* alert('在线：'+$inlineCheckbox1.is(':checked')); //判断checkbox是否选中
                     alert('掉线：'+$inlineCheckbox2.is(':checked')); //判断checkbox是否选中*/
                }
        );

        $inlineCheckbox2.click(
                function () {
                    checkboxFlag=1;
                    $table.bootstrapTable('refresh',{'url':serverurl});
                    checkboxFlag=0;

                    /* alert('在线：'+$inlineCheckbox1.is(':checked')); //判断checkbox是否选中
                     alert('掉线：'+$inlineCheckbox2.is(':checked')); //判断checkbox是否选中*/


                }
        );

    }

    //在线
    onOutlinestatus();

    var TableInit= function initTable() {

        var oTableInit =new Object();
        oTableInit.Init=function () {

            $table.bootstrapTable({
                height: getHeight(),
                contentType: "application/x-www-form-urlencoded",//
                method: 'get',
                dataType: 'jsonp',  //数据跨域
                dataField: "rows",//服务端返回数据键值 就是说记录放的键值是rows，分页时使用总记录数的键值为total
                search:"true",       //查找按钮
                strictSearch:"false",
                searchText:"搜索",
                searchAlign:'left',
                showRefresh:"true",   //刷新按钮
                //showToggle:"true",    //是否显示 切换试图（table/card）按钮
                showColumn:"true",   //是否显示 内容列下拉框
                //detailView:"true",  //详细列表
                detailFormatter:"detailFormatter", //格式化详细页面模式的视图
                minimumCountColumns:"2",            //当列数小于此值时，将隐藏内容列下拉框。
                showPaginationSwitch:"true",//是否显示 数据条数选择框
                pagination:"true",  //设置为 true 会在表格底部显示分页条
                idField:"id",//指定主键列
                pageList:"[ 25, 50, 100, ALL]",//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
                showFooter:"false",//是否显示列脚
                url:serverurl,//服务器数据的加载地址
                sidePagination:"server",//设置在哪里进行分页，可选值为 'client' 或者 'server'。设置 'server'时，必须设置 服务器数据地址（url）或者重写ajax方法
                pageSize:25,
                responseHandler:"responseHandler",//加载服务器数据之前的处理程序，可以用来格式化数据。参数：res为从服务器请求到的数据
                queryParams: oTableInit_queryParams,//参数
                buttonsAlign: "left",//按钮对齐方式
                toolbar: "#toolbar",//指定工具栏
                toolbarAlign: "left",//工具栏对齐方式
                showExport: true,//显示导出按钮
                exportDataType: "basic",//导出类型

                //行格式
                rowStyle: function (row, index) {
                    //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
                    var strclass = "";
                    if (row.onlinestatus == "在线") {

                        return {
                            css:{
                                background: '#2ab263',
                    }

                    };



                       // strclass = 'red';//还有一个active
                    }
                    else if (row.onlinestatus == "掉线") {
                        return {
                            css: {
                                background: '#828f97',
                            }

                        };
                      //  strclass = 'danger';
                    }
                    else {
                        return {
                            css: {
                                background: ' #0A246A',
                            }

                        };

                       // strclass = 'warning';

                    }

                   // return { classes: strclass }
                },


                columns: [
                    {
                        title: '序号',
                        field: 'id',
                        align: 'center',
                        valign: 'middle',


                    },
                    {
                        title: '状态',
                        field: 'onlinestatus',
                        align: 'center',
                        valign: 'middle',

                    },
                    {
                        field: 'deviceid',
                        title: '设备编号',
                        align: 'center'
                    },
                    {
                        field: 'company',
                        title: '公司信息',
                        align: 'center'
                    },
                    {
                        field: 'cardnumber',
                        title: '车牌号',
                        align: 'center'
                    },
                    {
                        field: 'controllerid',
                        title: '设备控制端',

                        align: 'center',

                    },
                    {
                        field: 'operate3',
                        title: 'GPS信息',
                        align: 'center',
                        events: operateEvents,

                    },
                    {
                        field: 'water0',
                        title: '净水位',
                        align: 'center',

                    },
                    {
                        field: 'water1',
                        title: '热水位',
                        align: 'center',

                    },
                    {
                        field: 'water2',
                        title: '灰水位',
                        align: 'center',

                    },
                    {
                        field: 'water3',
                        title: '污水位',
                        align: 'center',

                    },
                    {
                        field: 'water4',
                        title: '油箱位',
                        align: 'center',

                    },

                    {
                        field: 'power01',
                        title: '主电压',
                        align: 'center',
                        /* cellStyle: styleofdata*/
                    },
                    {
                        field: 'power02',
                        title: '副电瓶',
                        align: 'center',

                    },
                    {
                        field: 'power03',
                        title: '电池电流',
                        align: 'center',

                    },
                    {
                        field: 'power04',
                        title: '可用时间',
                        align: 'center',

                    },
                    {
                        field: 'power05',
                        title: '剩余电量',
                        align: 'center',

                    },
                    {
                        field: 'power06',
                        title: '交流电压',
                        align: 'center',

                    },
                    {
                        field: 'model',
                        title: '模式',
                        align: 'center',

                    },
                    {
                        field: 'controllerStatus',
                        title: '提示',
                        align: 'center',

                    },
                    {
                        field: 'operate',
                        title: '相关操作',
                        align: 'center',
                        events: operateEvents,
                        formatter: operateFormatter
                    },

                ]
            });

        }

        function oTableInit_queryParams(params) {

            var online=  $inlineCheckbox1.is(':checked');
            var outline=$inlineCheckbox2.is(':checked');
            var temp;

            if(checkboxFlag==1)
            {
                //checkbox 选择
                temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                    limit: params.limit, //页面大小
                    offset: params.offset, //页码
                    onlinestatus:online,
                    outlinestatus:outline,
                    search:"搜索",


                };
            }else {

                temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                    limit: params.limit, //页面大小
                    offset: params.offset, //页码
                    onlinestatus:online,
                    outlinestatus:outline,
                    search:params.search,

                };

            }

            return temp;
        };


        $table.on('check.bs.table uncheck.bs.table ' +
                'check-all.bs.table uncheck-all.bs.table', function () {
            $remove.prop('disabled', !$table.bootstrapTable('getSelections').length);

            // save your data, here just save the current page
            selections = getIdSelections();
            // push or splice the selections if you want to save all data selections
        });

        $table.on('all.bs.table', function (e, name, args) {
            // alert("OOOOOOOOOOOOO");
            console.log(name, args);
        });
        $remove.click(function () {
            var ids = getIdSelections();
            $table.bootstrapTable('remove', {
                field: 'id',
                values: ids
            });
            $remove.prop('disabled', true);
        });
        //当窗口调整 表格进行刷新
        $(window).resize(function () {
            $table.bootstrapTable('resetView', {
                height: getHeight()
            });
        });

        return oTableInit;
    }


    function getIdSelections() {
        return $.map($table.bootstrapTable('getSelections'), function (row) {
            return row.id
        });
    }

    function responseHandler(res) {
        var devicesid=0;
        $.each(res.rows, function (i, row) {
            row.state = $.inArray(row.id, selections) !== -1;


        });
        return res;
    }


    function detailFormatter(index, row) {
        var html = [];
        $.each(row, function (key, value) {
            html.push('<p><b>' + key + ':</b> ' + value + '</p>');
        });
        return html.join('');
    }

    function operateFormatter(value, row, index) {
        return [
            '<a class="like" href="javascript:void(0)" title="Like">',
            '<i class="glyphicon glyphicon-heart"></i>',
            '</a>  ',
            '<a class="remove" href="javascript:void(0)" title="Remove">',
            '<i class="glyphicon glyphicon-remove"></i>',
            '</a>'
        ].join('');
    }

    window.operateEvents = {
        'click .like': function (e, value, row, index) {
            alert('You click like action, row: ' + JSON.stringify(row));
        },
        'click .remove': function (e, value, row, index) {
            $table.bootstrapTable('remove', {
                field: 'id',
                values: [row.id]
            });
        }
    };

    function getHeight() {
        return $(window).height() - $('h1').outerHeight(true);
    }

    ////////////////////////////////////////////websocket start//////////////////////////////////////////////////////////////////
    var socket;
    if (!window.WebSocket) {
        window.WebSocket = window.MozWebSocket;
    }
    if (window.WebSocket) {
       // socket = new WebSocket("ws://localhost:8888/ws");
        socket = new WebSocket("ws://139.224.47.78:8888/ws");
        socket.onmessage = function(event) {

            console.log("WebSocket:收到一条消息",event.data);
            analysiscmd(event.data);




        };
        socket.onopen = function(event) {

            console.log("连接开启成功！");

        };
        socket.onclose = function(event) {
            console.log("连接关闭！！");
        };
    } else {
        alert("你的浏览器不支持 WebSocket！");
    }

    function send(message) {
        if (!window.WebSocket) {
            return;
        }
        if (socket.readyState == WebSocket.OPEN) {
            socket.send(message);
        } else {
            alert("连接没有开启.");
        }
    }

    function analysiscmd(data) {

        syncpower(data);
        water(data);
        syncpower2(data);

    }



    //同步温度  WebSocket:收到一条消息 DID00000067B 00 00 00 00 00- 0- 0- 0- 0- 0 24
    //修改中
    function synctemperature(respond) {


        var devicesid;
        var  data;
        var  cmd;
        if(respond.length>=45)
        {
            devicesid=respond.substring(3,11);
            data=respond.substring(11,respond.length);
            cmd=respond.substring(11,12);

        }else {
            return;
        }
        if(cmd!="B")
            return;

        console.log("温度响应："+respond);

        //净水位
        var temperature01=data.substring(1,4);

        //热水位
        var temperature02 =data.substring(4,7);

        //灰水位
        var temperature03=data.substring(7,10);

        //污水位
        var temperature04=data.substring(10,13);

        //油箱位
        var temperature05=data.substring(13,16);

        //净水温度
        var temperature06=data.substring(16,19);

        //热水温度
        var temperature07=data.substring(19,22);



        //浑水温度
        var temperature08=data.substring(22,25);

        //污水温度
        var temperature09=data.substring(25,28);

        //油箱温度
        var temperature10=data.substring(28,31);
        //控制仓温度
        var temperature11=data.substring(31,34);



        //  var randomId = 100 + ~~(Math.random() * 100);
        var allTableData = $table.bootstrapTable('getData');//获取表格的所有内容行

        var i;
        for( i=0;i<allTableData.length;i++)
        {
            if(allTableData[i].deviceid==devicesid)
            {
                console.log('获取对应行数据：'+i+allTableData);
                //warning(3);
                $table.bootstrapTable('updateRow', {
                    index: i,
                    row: {
                        //主电压
                        power01:power01function(power01,devicesid)+'V',
                        //副电瓶
                        power02:power02function(power02,devicesid)+'V',
                        //电池电流
                        power03:power03function(power03,devicesid)+'A',
                        //可用时间
                        power04:power04function(power04,devicesid)+'h',
                        //剩余电量
                        power05:power05function(power05,devicesid)+'Ah',
                        //交流电压
                        power06:power06function(power06,devicesid)+'V',

                    }


                });

                /* $table.bootstrapTable("updateCell", {
                 index : i,
                 field : 'company',
                 value : operateDelete(a)
                 });*/


            }


        }


        
    }


    /*WebSocket:收到一条消息 DID00000068C 0.012.5 80223*/
    function syncpower2(respond) {
        var devicesid;
        var  data;
        var  cmd;
        var    ACPower=0;  //交流电压
        if(respond.length>=26)
        {
            devicesid=respond.substring(3,11);
            data=respond.substring(11,respond.length);
            cmd=respond.substring(11,12);

        }else {
            return;
        }
        if(cmd!="C")
            return;
        //alert("ddddddd");
        console.log("无电表电量响应："+respond);
        var powertext;

        if(AmmeterDATA.get(devicesid)=='0')
        {
            return;
        }
      //注电池电压
       var power01= data.substring(1,5);
        //福电瓶
        var power02= data.substring(5,9);

        //剩余电量
        var power04=data.substring(9,12);

        //交流电压
        ACPower=data.substring(12,15);


        var allTableData = $table.bootstrapTable('getData');//获取表格的所有内容行

        var i;
        for( i=0;i<allTableData.length;i++)
        {
            if(allTableData[i].deviceid==devicesid)
            {
                console.log('获取对应行数据：'+i+allTableData);
                //warning(3);
                $table.bootstrapTable('updateRow', {
                    index: i,
                    row: {

                        //主电压
                        power01:power01function(power01,devicesid)+'V',
                        //副电瓶
                        power02:power02function(power02,devicesid)+'V',

                        //剩余电量
                        power05:power04function(power04,devicesid)+'Ah',

                        //交流电压
                        power06:power06function(ACPower,devicesid)+'V',

                    }


                });

                /* $table.bootstrapTable("updateCell", {
                 index : i,
                 field : 'company',
                 value : operateDelete(a)
                 });*/


            }


        }



        //控制仓温度
        /* powertext=document.getElementById("powervalue"+"6"+devicesid);
         if(powertext!=null)
         powertext.textContent=data.substring(27,31);
         else
         console.log("powervalue"+"6"+devicesid+":能量ID为空");*/




    }

    //DID0067D13.713.8+ 12.6888.8 300 00 300
    function syncpower(respond) {
        var devicesid;
        var  data;
        var  cmd;
        if(respond.length>=42)
        {
            devicesid=respond.substring(3,11);
            data=respond.substring(11,respond.length);
            cmd=respond.substring(11,12);

        }else {
            return;
        }
        if(cmd!="D")
            return;
        //alert("ddddddd");
        console.log("电量响应："+respond);
        var powertext;


        var i;
        var coun=0;
        for(i=0;i<data.length;i++)
        {
            var da=data.substring(i,i+1);
            if(da==0)
            {
                coun++;
            }
        }
        if(coun>=16)
        {
            AmmeterDATA.set(devicesid,'1');
            return;
        }
        AmmeterDATA.set(devicesid,'0');




        // warningdata.get(devicesid)  = window.setInterval(setview,800);
        //主电压
        var power01=data.substring(1,5);

        //副电瓶
        var power02 =data.substring(5,9);

        //电池电瓶
        var power03=data.substring(9,15);

        //可用时间
        var power04=data.substring(15,20);

        //剩余电量
        var power05=data.substring(20,24);

        //交流电压
        var power06=data.substring(24,27);

        //
        var power07=data.substring(27,31);


        //  var randomId = 100 + ~~(Math.random() * 100);
        var allTableData = $table.bootstrapTable('getData');//获取表格的所有内容行

        var i;
        for( i=0;i<allTableData.length;i++)
        {
            if(allTableData[i].deviceid==devicesid)
            {
                console.log('获取对应行数据：'+i+allTableData);
                //warning(3);
                $table.bootstrapTable('updateRow', {
                    index: i,
                    row: {
                        //主电压
                        power01:power01function(power01,devicesid)+'V',
                        //副电瓶
                        power02:power02function(power02,devicesid)+'V',
                        //电池电流
                        power03:power03function(power03,devicesid)+'A',
                        //可用时间
                        power04:power04function(power04,devicesid)+'h',
                        //剩余电量
                        power05:power05function(power05,devicesid)+'Ah',


                        /* controllerStatus: warnfunction(DeviceFlag),*/


                        /* company: '深圳美国 ' + randomId,
                         cardnumber: '粤：' + randomId*/
                    }


                });

                /* $table.bootstrapTable("updateCell", {
                 index : i,
                 field : 'company',
                 value : operateDelete(a)
                 });*/


            }


        }

    }



    function setview() {
        console.log("报警：运行"+'；ID号为：'+Deviceid);
        $table.bootstrapTable('updateRow', {
            index: Deviceid,
            row: {

                controllerStatus: warnfunction(Deviceid)

            }


        });


    }

    function warnfunction(Deviceid) {

        var color= document.getElementById(Deviceid).style.backgroundColor;
        if(color=='blue')
        {

            console.log("报警：红色");
            return [
                '<a href="controller.html"><i id='+Deviceid+' class="glyphicon glyphicon-warning-sign" style="float: left;color: red"></i></a>',

            ].join('');

        }else {

            console.log("报警：蓝色");
            return [
                '<a href="controller.html"><i id='+Deviceid+' class="glyphicon glyphicon-warning-sign" style="float: left;color: blue"></i></a>',


            ].join('');

        }

    }

    function opencontroller(deviceid) {
        //新窗口打开，
        //  window.open("controller.html?flag=true&A=b",'newwindow');
        //当前窗口打开
        console.log('获取当前行传输数据：'+deviceid) ;
        // location.href = 'a.asp?d_id=' + d + '&d_name=' + name;
        //rest/page/controller
        //var url="controller.html?controllerflag=true&deviceid="+deviceid;
        var url="rest/page/controller2?controllerflag=true&deviceid="+deviceid;
        url= url.replace(/ /g,'');

        console.log('获取当前行传输数据：'+url) ;
        location.href=url;
    }


    // 样式
    function power01function(a,deviceid) {


        console.log('获取当前行:'+deviceid) ;

        if(a>=13)
        {
            return [

                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',
                /*  '<a href="rest/page/controller"  ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',*/



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',
                /*  '<a href="rest/page/controller"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',*/

            ].join('');

        }

    }
    // 样式
    function power02function(a,deviceid) {

        if(a>=13)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',

            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }


    // 样式
    function power03function(a,deviceid) {
        var intdata=0;
        function trim(str) {
            return str.replace('+', "");
        }
        intdata=trim(a)  // =abc
        // alert(a);
        //alert(intdata);

        if(intdata>=14)
        {
            DeviceFlag=0;
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',

            ].join('');

        }else {
            //开启定时器

            DeviceFlag=1;
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }
    // 样式
    function power04function(a,deviceid) {

        if(a>=50)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }
    // 样式
    function power05function(a,deviceid) {

        if(a>=0.5)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }
    // 样式
    function power06function(a,deviceid) {

        if(a>=210)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }

    //DID0067B 00 00 00 00 00- 0- 0- 0- 0- 0 32
    function water(respond) {
        var devicesid;
        var  data;
        var  cmd;
        if(respond.length>=45)
        {
            devicesid=respond.substring(3,11);
            data=respond.substring(11,respond.length);
            cmd=respond.substring(11,12);

        }else {
            return;
        }
        if(cmd!="B")
            return;

        console.log("水位响应："+respond);

        //净水位
        var water01=data.substring(1,4);

        //热水位
        var water02 =data.substring(4,7);

        //灰水位
        var water03=data.substring(7,10);

        //污水位
        var water04=data.substring(10,13);

        //油箱位
        var water05=data.substring(13,16);

        //净水温度
        var water06=data.substring(16,19);

        //热水温度
        var water07=data.substring(19,22);


        //灰水温度
        var water08=data.substring(22,25);

        //污水温度
        var water09 =data.substring(25,28);

        //油箱温度
        var water10=data.substring(28,31);

        //控制仓温度
        var water11=data.substring(31,34);


        var randomId = 100 + ~~(Math.random() * 100);
        var allTableData = $table.bootstrapTable('getData');//获取表格的所有内容行

        var i;
        for( i=0;i<allTableData.length;i++)
        {
            if(allTableData[i].deviceid==devicesid)
            {
                console.log('获取对应行数据：'+allTableData);
                $table.bootstrapTable('updateRow', {
                    index: i,
                    row: {
                        //净水位
                        water0:water01function(water01,devicesid)+'%',
                        //热水位
                        water1:water02function(water02,devicesid)+'%',
                        //灰水位
                        water2:water03function(water03,devicesid)+'%',
                        //污水位
                        water3:water04function(water04,devicesid)+'%',
                        //油箱位
                        water4:water05function(water05,devicesid)+'%',



                    }
                });

            }
        }

    }

    function water01function(a,deviceid) {
        if(a>=10)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }
    function water02function(a,deviceid) {
        if(a>=10)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }
    function water03function(a,deviceid) {
        if(a>=10)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }
    function water04function(a,deviceid) {
        if(a>=10)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }
    function water05function(a,deviceid) {
        if(a>=10)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }
    function water06function(a,deviceid) {
        if(a>=10)
        {
            return [
                '<a href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')")" ><p class="powerstyle" style="float: left;color: black">'+a+'</p></a>',



            ].join('');

        }else {
            return [

                '<a  href="javascript:void(0)" onclick="opencontroller(\' '+deviceid+ ' \')"><p class="powerstyle" style="float: left;color: red">'+a+'</p></a>',

            ].join('');

        }

    }



    function colseallbutton(getdevicesid) {
        var btn=document.getElementById("button"+"00"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"00"+getdevicesid+":按键ID为空");

        btn= document.getElementById("button"+"19"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"19"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"21"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"21"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"22"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"22"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"20"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"20"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"14"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"14"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"23"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"23"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"12"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"12"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"05"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"05"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"17"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"17"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"23"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"23"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"16"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"16"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"01"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"01"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"13"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"13"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"06"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"06"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"14"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"14"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"23"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"23"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"04"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"04"+getdevicesid+":按键ID为空");


        btn=document.getElementById("button"+"10"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"10"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"11"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"11"+getdevicesid+":按键ID为空");

        btn=document.getElementById("button"+"08"+getdevicesid);
        if(btn!=null)
            btn.style.backgroundColor="grey";
        else
            console.log("button"+"08"+getdevicesid+":按键ID为空");

    }


    ////////////////////////////////////////////websocket end//////////////////////////////////////////////////////////////////



</script>


<script type="text/javascript">
    jQuery(document).ready(function() {
        //Hide the overview when click
        $('#someid').on('click', function () {
            $('#OverviewcollapseButton').removeClass("collapse").addClass("expand");
            $('#PaymentOverview').hide();
        });
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
