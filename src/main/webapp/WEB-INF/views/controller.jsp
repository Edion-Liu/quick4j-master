
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
    <title>设备控制端</title>
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



  <%--  <link rel="stylesheet"  type="text/css" href="app/css/Bootstrap_table/bootstrap.min.css">--%>
    <link rel="stylesheet" type="text/css" href="app/css/Bootstrap_table/bootstrap-table.css">
    <link rel="stylesheet" href="assets/bootstrap-table/bootstrap-editable.css">


    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=WtWVAzVWvzamcoXStNyDlbG2SKMpsUa8"></script>

    <!-- 引入 echarts.js -->
    <script src="chartjs/echarts.min.js"></script>
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


            /* margin-right: 20px;*/

        }
        .powerstyle_b{

            font-size: 16px;
            /* margin-right: 20px;*/

        }
    </style>

    <style type="text/css">
        .window{
            width:1600px;
            background-color:black;
            position:absolute;
            padding:2px;
            margin:5px;
            display:none;
            z-index: 100;

        }
        .content{
            height:800px;

            background-color:blueviolet;
            font-size:14px;
            overflow:auto;
        }
        .title{
            padding:2px;
            color:white;
            font-size:14px;
        }
        .title img{
            float:right;
        }
    </style>



     <%--弹窗--%>
    <link rel="stylesheet" href="assets/css/css/style.css"> <!-- Resource style -->




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
                        <shiro:hasAnyRoles name="edion">
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
                        <li >
                            <a class="selected"  href="rest/page/controller">
                                设备控制端
                            </a>
                        </li>
                        <li>
                            <a href="rest/page/allinformation">
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
                        设备控制 <small> <a href="rest/page/allinformation">设备状态查询</a></small>
                    </h3>

                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row">

              <%--  自定义页面--%>
                <%--  <div class="window" id="center">
                      <div id="title" class="title"><img src="assets/img/close.png" alt="关闭" />GPS信息</div>
                      <div class="content" id="centermap"></div>
                  </div>--%>

                  <section  id="msgbox"class="cd-section" style="visibility: hidden" >


                      <div class="cd-modal-action">
                          <button id="opengps" class="btn" data-type="modal-trigger">GPS 信息展开中</button>
                          <span class="cd-modal-bg"></span>
                      </div>

                      <div class="cd-modal" style="z-index: 10000;">
                          <div id="centermap" class="cd-modal-content">
                          </div> <!-- cd-modal-content -->
                      </div> <!-- cd-modal -->

                      <a class="cd-modal-close" style="z-index: 11000;">Close</a>
                  </section> <!-- .cd-section -->




                <div class="col-md-12">
                    <!--在线掉线选择按钮-->
                    <div id="toolbar">

                        <label class="checkbox-inline">
                            <input type="checkbox" checked="checked" id="inlineCheckbox1" value="option1"> 在线
                        </label>
                        <label class="checkbox-inline" style="margin-right: 20px;">
                            <input type="checkbox" checked="checked" id="inlineCheckbox2" value="option2"> 掉线
                        </label>
                       <%-- <a href="rest/page/resetDevices" target="_top">测试</a>--%>

                    </div>
                    <!--表格-->
                    <div class="container" style="width:100%;" >
                        <table id="table"   ></table>
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

<%--表格功能--%>
<%--<script src="app/js/Bootstrap_table/jquery.min.js" type="text/javascript" charset="utf-8"></script>--%>
<%--<script src="app/js/Bootstrap_table/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>--%>
<script src="app/js/Bootstrap_table/bootstrap-table.js" type="text/javascript" charset="utf-8"></script>
<script src="assets/bootstrap-table/src/locale/bootstrap-table-zh-CN.js"></script>
<%--<script src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>--%>

<script src="app/js/Bootstrap_table/tableExport.js"></script>
<script src="app/js/Bootstrap_table/bootstrap-table-export.js"></script>




<script>

    /*    全局变量    开始*/
    var $table = $('#table');
    var $remove = $('#remove');
    var selections = [];
    var $inlineCheckbox1=$('#inlineCheckbox1');
    var $inlineCheckbox2=$('#inlineCheckbox2');
    var checkboxFlag=0;  //按键选择标志
   // var serverurl="http://192.168.1.100:9010/user/testController";
    var serverurl="http://139.224.47.78:9010/user/testController";


    var socket;
    var urlcontroller = window.location.href;//获取当前浏览器的url
    var  indexcontroller = urlcontroller.indexOf("controllerflag");//判断当前url是否有flag，如果有，说明是从A页面跳转而来的，就执行下面的程序
    var  deviceidsFromallinformation=0;
    var cont=0;


    if(indexcontroller !=-1) {//由A页面跳转而来
        //参数准备
        console.log("获取页面传回参数进入"+urlcontroller);

        var Request=new UrlSearch(); //实例化
        deviceidsFromallinformation = Request.deviceid;
        console.log("获取页面传回参数："+deviceidsFromallinformation);

    }


    /*提示定时器变量*/
    var GPSDATA= {
        data : Array(),
        get : function(key){
            return this.data[key];
        },
        set : function(key, value) {
            this.data[key] = value;
            return;
        }
    }

    //设备发送过来水位信息
    var WaterDATA= {
        data : Array(),
        get : function(key){
            return this.data[key];
        },
        set : function(key, value) {
            this.data[key] = value;
            return;
        }
    }

    //设备发送过来能量信息
    var PowerDATA= {
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


    /*全局变量    结束*/

    /*-----------------实现1--------------------*/
    function UrlSearch()
    {
        var name,value;
        var str=urlcontroller; //取得整个地址栏
        var num=str.indexOf("?")
        str=str.substr(num+1); //取得所有参数   stringvar.substr(start [, length ]

        var arr=str.split("&"); //各个参数放到数组里
        for(var i=0;i < arr.length;i++){
            num=arr[i].indexOf("=");
            if(num>0){
                name=arr[i].substring(0,num);
                value=arr[i].substr(num+1);
                this[name]=value;
            }
        }
    }



    /*    在线 掉线选择监听*/
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

    $(function () {

        var OTable=new TableInit();
        OTable.Init();
        onOutlinestatus();

    });

    setTimeout(openexpand, 1000);
    var data=new Array();
    var expandok=1;
    function openexpand() {
        console.log("自动展开");
        var allTableData = $table.bootstrapTable('getData');//获取表格的所有内容行
        if(allTableData.length==1)
        $table.bootstrapTable('expandRow', 0);


//        var i,j;
//        for( i=0;i<allTableData.length;i++)
//        {
////          /!*  data[i]=i;
////            setTimeout(
////                $table.bootstrapTable('expandRow', data[i])
////            , 1000);*!/
////            expandok=1;
//            $table.bootstrapTable('expandRow', i);
//
//           for(j=0;j<200000*100000;j++);
//
//        }
    }

    var TableInit= function initTable() {
        var oTableInit = new Object();
        oTableInit.Init = function () {

            $table.bootstrapTable({
                height: getHeight(),
                contentType: "application/x-www-form-urlencoded",//
                dataType: 'jsonp',  //数据跨域
                dataField: "rows",//服务端返回数据键值 就是说记录放的键值是rows，分页时使用总记录数的键值为total
                search:"true",       //查找按钮
                searchText:"搜索",
                searchAlign:'left',
                method: "post",//请求方式

                            showRefresh:"true",   //刷新按钮
                //            showToggle:"true",    //是否显示 切换试图（table/card）按钮
                           showColumn:"true",   //是否显示 内容列下拉框
                detailView:"true",  //详细列表
                detailFormatter:"detailFormatter", //格式化详细页面模式的视图
                minimumCountColumns:"2",            //当列数小于此值时，将隐藏内容列下拉框。
                showPaginationSwitch:"true",//是否显示 数据条数选择框
                pagination:"true",  //设置为 true 会在表格底部显示分页条
                idField:"id",//指定主键列
                pageList:"[ 25, 50, 100, ALL]",//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
                showFooter:"false",//是否显示列脚
                sidePagination:"server",//设置在哪里进行分页，可选值为 'client' 或者 'server'。设置 'server'时，必须设置 服务器数据地址（url）或者重写ajax方法
                pageSize:25,

                responseHandler:"responseHandler",//加载服务器数据之前的处理程序，可以用来格式化数据。参数：res为从服务器请求到的数据
                queryParams: oTableInit_queryParams,//参数
                url:serverurl,//服务器数据的加载地址
                buttonsAlign: "left",//按钮对齐方式
                toolbar: "#toolbar",//指定工具栏
                toolbarAlign: "left",//工具栏对齐方式

                showExport: true,//显示导出按钮
                exportDataType: "basic",//导出类型


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

                        searchable: true,
                    },
                    {
                        field: 'operate',
                        title: '删除显示',
                        align: 'center',
                        events: operateEvents,
                        formatter: operateFormatter
                    },

                ],

            });

        }

        function oTableInit_queryParams(params) {

            var online=  $inlineCheckbox1.is(':checked');
            var outline=$inlineCheckbox2.is(':checked');
            var temp;
            var searchdata;

            if(deviceidsFromallinformation!=0)
            {
                var temps=deviceidsFromallinformation;
                cont++;
                if(cont>=2)
                    deviceidsFromallinformation=0;
                //checkbox 选择
                temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                    limit: params.limit, //页面大小
                    offset: params.offset, //页码
                    onlinestatus:true,
                    outlinestatus:true,
                    search:temps,


                };
                return temp;


            }


            if(checkboxFlag==1)
            {

                console.log("加载数据1");
                //checkbox 选择
                temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                    limit: params.limit, //页面大小
                    offset: params.offset, //页码
                    onlinestatus:online,
                    outlinestatus:outline,
                    search:"搜索",


                };

            }else {

                console.log("加载数据2s");

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
            // alert("oooooooooooooppppp");
            // save your data, here just save the current page
            selections = getIdSelections();
            // push or splice the selections if you want to save all data selections
        });
        $table.on('expand-row.bs.table', function (e, index, row, $detail) {
            /*    alert(e);
             alert(index);
             alert(row.company);
             alert($detail);*/

            //  alert("点击运行");
            var devicesids=new Array();
            var powersid=new Array();
            var gpsdatas=new Array();
            var temperatureid=new Array();

            //初始化按键id
            function intbuttonid(devicesid,devicesidsarry) {


                devicesidsarry[0]="button00"+devicesid;
                devicesidsarry[1]="button01"+devicesid;
                devicesidsarry[2]="button02"+devicesid;
                devicesidsarry[3]="button03"+devicesid;
                devicesidsarry[4]="button04"+devicesid;
                devicesidsarry[5]="button05"+devicesid;
                devicesidsarry[6]="button06"+devicesid;
                devicesidsarry[7]="button07"+devicesid;
                devicesidsarry[8]="button08"+devicesid;
                devicesidsarry[9]="button09"+devicesid;
                devicesidsarry[10]="button10"+devicesid;
                devicesidsarry[11]="button11"+devicesid;
                devicesidsarry[12]="button12"+devicesid;
                devicesidsarry[13]="button13"+devicesid;
                devicesidsarry[14]="button14"+devicesid;
                devicesidsarry[15]="button15"+devicesid;
                devicesidsarry[16]="button16"+devicesid;
                devicesidsarry[17]="button17"+devicesid;

                devicesidsarry[18]="button18"+devicesid;
                devicesidsarry[19]="button19"+devicesid;
                devicesidsarry[20]="button20"+devicesid;
                devicesidsarry[21]="button21"+devicesid;
                devicesidsarry[22]="button22"+devicesid;
                devicesidsarry[23]="button23"+devicesid;

                devicesidsarry[24]="button24"+devicesid;
                devicesidsarry[25]="button25"+devicesid;



                //自定义按钮
                devicesidsarry[26]="button26"+devicesid;
                devicesidsarry[27]="button27"+devicesid;
                devicesidsarry[28]="button28"+devicesid;

                var i;
                for(i=0;i<7;i++)
                {
                    powersid[i]="powervalue"+i+devicesid;
                }
                for(i=0;i<5;i++)
                {
                    temperatureid[i]="temparature"+i+devicesid;
                }

                gpsdatas[0]="gps"+devicesid;


                // alert("ID数组长度"+devicesidsarry.length);

                //  document.write(devicesid[0])

            }
            //初始化视图
            function intview(deviceid,devicesids) {

                var bar ="bar"+deviceid;
                var power='power'+deviceid;
                var  kk=' <div id="contentme"  style="margin:0 auto;border:0px solid #000;width:100%;height:350px;" >'


                kk+=' <div class="panel panel-primary" style="height: 350px;width: 300px; float: left">';
                kk+=' <div class="panel-heading">';
                kk+='<h3 class="panel-title">开关控制</h3>';
                kk+='</div>';
                kk+=' <div class="panel-body">';
                kk+=' <button id='+devicesids[0]+' type="button" class="btn custom" >总开关</button>';
                kk+=' <button id='+devicesids[19]+' type="button" class="btn custom">充电/逆变</button>';
                kk+=' <button id='+devicesids[21]+' type="button" class="btn custom">空调</button>';
                kk+='<button  id='+devicesids[22]+' type="button" class="btn custom">电热水器</button>';
                kk+=' <button id='+devicesids[20]+' type="button" class="btn custom">插座</button>';
                kk+=' <button id='+devicesids[23]+' type="button" class="btn custom">微波炉</button>';
                //外侧灯
                kk+=' <button id='+devicesids[14]+' type="button" class="btn custom">外侧灯</button>';
                kk+='<button  id='+devicesids[12]+' type="button" class="btn custom">后顶灯</button>';
                kk+=' <button id='+devicesids[5]+' type="button" class="btn custom">前顶灯</button>';
                kk+=' <button id='+devicesids[17]+' type="button" class="btn custom">射灯</button>';
                //星空灯无
                kk+=' <button id='+devicesids[8]+' type="button" class="btn custom">星空灯</button>';
                kk+='<button id='+devicesids[16]+' type="button" class="btn custom">冷水泵</button>';
                kk+='<button id='+devicesids[1]+' type="button" class="btn custom">冰箱</button>';
                kk+=' <button id='+devicesids[13]+' type="button" class="btn custom">电影</button>';
                kk+='<button id='+devicesids[6]+' type="button" class="btn custom">电视</button>';
                kk+='<button id='+devicesids[11]+' type="button" class="btn custom">换气扇</button>';
                //油烟机无
                kk+=' <button id='+devicesids[10]+' type="button" class="btn custom">油烟机</button>';
                kk+=' <button id='+devicesids[4]+' type="button" class="btn custom">监控</button>';

                kk+=' <button id='+devicesids[26]+' type="button" class="btn custom">语音控制</button>';
                kk+=' <button id='+devicesids[27]+' type="button" class="btn custom">开关1</button>';
                kk+=' <button id='+devicesids[28]+' type="button" class="btn custom">开关2</button>';
                kk+=' </div>';
                kk+='</div>';


                kk+=' <div class="panel panel-primary" style="height: 350px;width: 300px; float: left;margin-left: 10px;margin-right: 10px;">';
                kk+=' <div class="panel-heading">';
                kk+='<h3 class="panel-title">水箱水位</h3>';
                kk+=' </div>';
                kk+=' <div class="panel-body">';
                kk+='<div id='+bar+'  style="height:330px; width:300px;"></div>';
                kk+='</div>';
                kk+=' </div>';
                kk+='<div class="panel panel-primary" style="height: 350px;width: 300px; float: left;margin-left: 0px;margin-right: 10px;">';
                kk+=' <div class="panel-heading">';
                kk+=' <h3 class="panel-title">GPS信息</h3>';
                kk+='</div>';
                kk+=' <div class="panel-body">';

            /*    kk+='<section  id="msgbox"class="cd-section" style="display:none ;">';
                kk+=' <div class="cd-modal-action">';
                kk+='<button  class="btn" data-type="modal-trigger">GPS地图</button>';
                kk+='   <span class="cd-modal-bg"></span>';
                kk+=' </div>';
                kk+='<div class="cd-modal" style="z-index: 10000;">';
                kk+='<div id='+centermap+gpsdatas[0]+' class="cd-modal-content">';
                kk+='</div> ';
                kk+='</div> ';
                kk+=' <a class="cd-modal-close" style="z-index: 11000;">Close</a>';
                kk+='  </section>';*/


                kk+='<div  id='+gpsdatas[0]+' style="height: 270px;width: 250px;border: 2px;border-color: #1a1a1a;">';
                kk+='</div>';

              /*  kk+='你的位置是深圳阿拉善';*/
                kk+='</div>';
                kk+=' </div>';


                kk+=' <div class="panel panel-primary" style="height: 350px;width: 410px; float: left;padding-right: 0px;">';
                kk+=' <div class="panel-heading">';
                kk+=' <h3 class="panel-title">电池管理</h3>';
                kk+=' </div>';
                kk+='  <div class="panel-body">';


                kk+=' <div class="panelleft" style="width: 120px;height: 280px;float: left;background: white;">';

                kk+='<div id='+power+'  style="width: 120px;height: 300px; "></div>';
                kk+=' </div>';

                kk+=' <div class="panelright" style="width: 130px;height: 280px;background: white;float: left;">';

                kk+='<div>';
                kk+='<p class="powerstyle" style="float: left;">主电压</p>';
                kk+='<p class="powerstyle_a" style="margin-left:30px;" id='+powersid[0]+' ></p>';
                kk+='<p class="powerstyle_b">V</p>';
                kk+='</div>';

                kk+=' <div >';
                kk+='<p class="powerstyle" style="float: left;">副电瓶</p>';
                kk+='<p class="powerstyle_a" style="margin-left:30px;" id='+powersid[1]+'></p>';
                kk+='<p class="powerstyle_b">V</p>';
                kk+='</div>';

                kk+='<div >';
                kk+='<p class="powerstyle" style="float: left;">电池电流</p>';
                kk+='<p  class="powerstyle_a" style="margin-left:20px;" id='+powersid[2]+'></p>';
                kk+='<p class="powerstyle_b">A</p>';
                kk+=' </div>';

                kk+='<div >';
                kk+='<p class="powerstyle" style="float: left;">可用时间</p>';
                kk+='<p class="powerstyle_a" style="margin-left:20px;" id='+powersid[3]+'></p>';
                kk+='<p class="powerstyle_b">H</p>';
                kk+=' </div>';

                kk+=' <div >';
                kk+='<p class="powerstyle" style="float: left;">剩余电量</p>';
                kk+='<p class="powerstyle_a" style="margin-left:20px;" id='+powersid[4]+'></p>';
                kk+='<p class="powerstyle_b">Ah</p>';
                kk+='</div>';

                kk+=' <div >';
                kk+='<p class="powerstyle" style="float: left;">交流电压</p>';
                kk+='<p class="powerstyle_a" style="margin-left:20px;" id='+powersid[5]+'></p>';
                kk+='<p class="powerstyle_b">V</p>';
                kk+='</div>';



                kk+='</div>';




                kk+='<div class="panelright" style="width: 120px;height: 200px;margin-top:0px;background: white;float: left;">';

                kk+='<div>';
                kk+='<p class="powerstyle" style="float: left;">净水温度</p>';
                kk+='<p class="powerstyle_a" style="margin-left:20px;" id='+temperatureid[0]+' ></p>';
                kk+='<p class="powerstyle_b">&degC</p>';
                kk+='</div>';

                kk+=' <div >';
                kk+='<p class="powerstyle" style="float: left;">灰水温度</p>';
                kk+='<p class="powerstyle_a" style="margin-left:20px;" id='+temperatureid[1]+'></p>';
                kk+='<p class="powerstyle_b">&degC</p>';
                kk+='</div>';

                kk+='<div >';
                kk+='<p class="powerstyle" style="float: left;">污水温度</p>';
                kk+='<p  class="powerstyle_a" style="margin-left:20px;" id='+temperatureid[2]+'></p>';
                kk+='<p class="powerstyle_b">&degC</p>';
                kk+=' </div>';

                kk+='<div >';
                kk+='<p class="powerstyle" style="float: left;">热水温度</p>';
                kk+='<p class="powerstyle_a" style="margin-left:20px;" id='+temperatureid[3]+'></p>';
                kk+='<p class="powerstyle_b">&degC</p>';
                kk+=' </div>';

                kk+=' <div >';
                kk+='<p class="powerstyle" style="float: left;">油箱温度</p>';
                kk+='<p class="powerstyle_a" style="margin-left:20px;" id='+temperatureid[4]+'></p>';
                kk+='<p class="powerstyle_b">&degC</p>';
                kk+='</div>';

                kk+='<div >';
                kk+='<p class="powerstyle" style="float: left;">控制仓温度</p>';
                kk+='<p class="powerstyle_a" style="margin-left:10px;" id='+powersid[6]+'></p>';
                kk+='<p class="powerstyle_b">&degC</p>';
                kk+='</div>';



                kk+='</div>';






                kk+='</div>';
                kk+=' </div>';

                kk+='<div class="panel panel-primary" style="height: 350px;width: 250px;float:left;margin-left: 10px;margin-right: 10px;">';
                kk+=' <div class="panel-heading">';
                kk+=' <h3 class="panel-title">信息列表</h3>';
                kk+='</div>';
                kk+=' <div class="panel-body">';

                kk+=' <div class="panelright" style="width: 280px;height: 200px;z-index: 888;">';
                kk+='<div  >';
                kk+='<p class="powerstyle" style="float: left;">车主姓名：</p>';
                kk+='<p class="powerstyle_a" id='+powersid[0]+'>奥巴马</p>';
                kk+='<p class="powerstyle_b">v</p>';
                kk+=' </div>';
                kk+=' <div >';
                kk+='<p class="powerstyle" style="float: left;">注册日期：</p>';
                kk+='<p class="powerstyle_a" id='+powersid[1]+'>2018-8-8</p>';
                kk+='<p class="powerstyle_b">v</p>';
                kk+='</div>';
                kk+='<div >';
                kk+='<p class="powerstyle" style="float: left;">车主电话：</p>';
                kk+='<p  class="powerstyle_a" id='+powersid[2]+'>13425144857</p>';
                kk+='<p class="powerstyle_b">v</p>';
                kk+=' </div>';
                kk+='<div >';
                kk+='<p class="powerstyle" style="float: left;">会员等级：</p>';
                kk+='<p class="powerstyle_a" id='+powersid[3]+'>A级</p>';
                kk+='<p class="powerstyle_b">h</p>';
                kk+=' </div>';
                kk+=' <div >';
                kk+='<p class="powerstyle" style="float: left;">炫酷指数：</p>';
                kk+='<p class="powerstyle_a" id='+powersid[4]+'>18</p>';
                kk+='<p class="powerstyle_b">h</p>';
                kk+='</div>';
                kk+=' <div >';
                kk+='<p class="powerstyle" style="float: left;">窝窝头    ：</p>';
                kk+='<p class="powerstyle_a" id='+powersid[5]+'>18</p>';
                kk+='<p class="powerstyle_b">只</p>';
                kk+='</div>';
                kk+='<div >';
                kk+='<p class="powerstyle" style="float: left;">VV:</p>';
                kk+='<p class="powerstyle_a" id='+powersid[6]+'>18</p>';
                kk+='<p class="powerstyle_b">oC</p>';
                kk+='</div>';
                kk+='</div>';


                kk+='</div>';
                kk+=' </div>';




                kk+=' </div>';

                return kk;

            }
            //初始化水量
            function InitWater(devicesid) {



                console.log('水箱水量：'+'bar'+devicesid);
                //var myLine = new Chart(document.getElementById("bar"+devicesid).getContext("2d")).Bar(barChartData);

                var myctx = document.getElementById("bar"+devicesid);


                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(myctx);
                // 指定图表的配置项和数据
                var option = {
                    barWidth:'50%',
                    //barGap:'20px',
                    grid:{
                        y:'10px',
                        x:'40px',
                        width:'80%',
                    },
                    //系列中的数据标注内容
                    markPoint: {
                        data: [
                            {type: 'max', name: '最大值'},
                            {type: 'min', name: '最小值'}
                        ]
                    },


                    tooltip : {
                        /* trigger: 'item',
                         formatter: "{a} <br/>{b} : {c} ({d}%)"*/
                    },
                    xAxis: {
                        data: ["净","灰","污","热","油"]
                    },
                    yAxis: {
                        type : 'value',
                        axisLabel : {
                            formatter: '{value} '
                        },
                        min:'0',
                        max:'100',

                        splitNumber:5,
                    },
                    series: [{
                        name: '水量',
                        type: 'bar',
                        data: [0, 0, 0,0,0]
                    }]
                };


              /*   var app = {};
                 app.timeTicket = setInterval(function () {

                 var randomId = 5 + ~~(Math.random() * 50);
                 var  a,b,c;
                 a=randomId+10,
                 b=randomId+20;
                 c=randomId+25;
                 myChart.setOption({

                 series: [{
                 name: '水量',
                 type: 'bar',
                 data: [a, b, c]
                 }]
                 });
                 }, 1000);*/


                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);

                WaterDATA.set(devicesid,myChart);



            }
            //初始化电量
            function Initpower(devicesid) {


                var myctx = document.getElementById("power"+devicesid);
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(myctx);
                // 指定图表的配置项和数据
                var option = {

                    barWidth:'30px',
                    grid:{
                        y:'10px',
                        x:'30px',
                        width:'80px',
                    },


                    tooltip : {
                       /*  trigger: 'item',
                         formatter: "{a} <br/>{b} : {c} ({d}%)"*/
                    },
                    xAxis: {
                        data: ["电池容量"]
                    },
                    yAxis: {
                        type : 'value',

                        min:'0',
                        max:'100',

                        splitNumber:5,
                    },
                    series: [{
                        name: '容量',
                        type: 'bar',
                        data: [0]
                    }]
                };



                /* var app = {};
                 app.timeTicket = setInterval(function () {

                 var randomId = 5 + ~~(Math.random() * 50);
                 var  a,b,c;
                 a=randomId+10,

                 myChart.setOption({

                 series: [{
                 name: '容量',
                 type: 'bar',
                 data: [a]
                 }]
                 });
                 }, 1000);*/



                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);

                PowerDATA.set(devicesid,myChart);

            }
            function ss() {

                $.ajax({
                    url:serverurl,       //跨域到http://www.wp.com，另，http://test.com也算跨域
                    type:'GET',                                //jsonp 类型下只能使用GET,不能用POST,这里不写默认为GET
                    dataType:'jsonp',                          //指定为jsonp类型
                    data:{"devicesid":row.deviceid},                //数据参数
                    jsonp:'callback',                          //服务器端获取回调函数名的key，对应后台有$_GET['callback']='getName';callback是默认值
                    jsonpCallback:'getdevicesinformation',                   //回调函数名

                    success:function(result){                  //成功执行处理，对应后台返回的getName(data)方法。

                        //  alert("执行成功");


                        intbuttonid(row.deviceid,devicesids);
                        //alert('测试：'+devicesids[0]);
                        var kk=intview(row.deviceid,devicesids);
                        $detail.html(kk);
                        InitWater(row.deviceid);
                        Initpower(row.deviceid);





                        function buttonSend(buttonid,devicesid, cmdk,cmdg,datasrc,colork,colorg ) {
                            // alert(buttonid);
                            var button00object=document.getElementById(buttonid);

                            if(button00object!=null)
                            {
                                button00object.style.backgroundColor=colorg;
                                button00object.onclick=function(){
                                    var colorss;
                                    var colorbut=document.getElementById(buttonid)
                                    if(colorbut!=null)
                                        colorss= colorbut.style.backgroundColor;
                                    if(colorss==colork)
                                    {
                                        send(datasrc+devicesid+cmdg);
                                        //document.getElementById(buttonid).style.backgroundColor=colorg;
                                    }else {
                                        // document.getElementById(buttonid).style.backgroundColor=colork;
                                        send(datasrc+devicesid+cmdk);
                                    }
                                };
                            }else {
                                console.log("按钮添加监听失败："+buttonid);
                            }


                        }
                        //总开关
                        buttonSend(devicesids[0],row.deviceid,"K1","G1","PID","red","grey");
                        //充电逆变
                        buttonSend(devicesids[19],row.deviceid,"KB0","GB0","PID","red","grey");
                        //空凋
                        buttonSend(devicesids[21],row.deviceid,"KB7","GB7","PID","red","grey");
                        //电热水器
                        buttonSend(devicesids[22],row.deviceid,"KB8","GB8","PID","red","grey");
                        //插座
                        buttonSend(devicesids[20],row.deviceid,"KB6","GB6","PID","red","grey");
                        //微波炉

                        buttonSend(devicesids[23],row.deviceid,"KB9","GB9","PID","red","grey");
                        //外侧灯
                        buttonSend(devicesids[14],row.deviceid,"KA5","GA5","PID","red","grey");
                        //后顶灯
                        buttonSend(devicesids[12],row.deviceid,"KA3","GA3","PID","red","grey");
                        //前顶灯
                        buttonSend(devicesids[5],row.deviceid,"K6","G6","PID","red","grey");
                        //射灯
                        // alert('LLLL'+devicesids[16]);
                        buttonSend(devicesids[17],row.deviceid,"KA8","GA8","PID","red","grey");
                        //星空灯  无
                        //alert('LLLL'+devicesids[16]);
                        buttonSend(devicesids[8],row.deviceid,"K9","G9","PID","red","grey");
                        //冷水泵
                        // alert('LLLL'+devicesids[16]);
                        buttonSend(devicesids[16],row.deviceid,"KA7","GA7","PID","red","grey");
                        //冰箱
                        buttonSend(devicesids[1],row.deviceid,"K2","G2","PID","red","grey");
                        //电影
                        buttonSend(devicesids[13],row.deviceid,"KA4","GA4","PID","red","grey");
                        //电视
                        buttonSend(devicesids[6],row.deviceid,"K7","G7","PID","red","grey");
                        //换气扇  无
                        buttonSend(devicesids[11],row.deviceid,"KA2","GA2","PID","red","grey");
                        //油烟机 无
                        buttonSend(devicesids[10],row.deviceid,"KA1","GA1","PID","red","grey");
                        //监控
                        buttonSend(devicesids[4],row.deviceid,"K5","G5","PID","red","grey");
                        var mm;
                        for(mm=0;mm<devicesids.length;mm++)
                        {
                            console.log("初始化按键ID："+devicesids[mm]);

                        }
                        expandok=0;
                    },
                    error:function(msg){
                        alert('执行错误');                 //执行成功
                        alert(msg.toSource());                 //执行错误
                    }
                });

            }

            function ss2() {



                        //  alert("执行成功");


                        intbuttonid(row.deviceid,devicesids);
                        //alert('测试：'+devicesids[0]);
                        var kk=intview(row.deviceid,devicesids);
                        $detail.html(kk);
                        InitWater(row.deviceid);
                        Initpower(row.deviceid);





                        function buttonSend(buttonid,devicesid, cmdk,cmdg,datasrc,colork,colorg ) {
                            // alert(buttonid);
                            var button00object=document.getElementById(buttonid);

                            if(button00object!=null)
                            {
                                button00object.style.backgroundColor=colorg;
                                button00object.onclick=function(){
                                    var colorss;
                                    var colorbut=document.getElementById(buttonid)
                                    if(colorbut!=null)
                                        colorss= colorbut.style.backgroundColor;
                                    if(colorss==colork)
                                    {
                                        send(datasrc+devicesid+cmdg);
                                        //document.getElementById(buttonid).style.backgroundColor=colorg;
                                    }else {
                                        // document.getElementById(buttonid).style.backgroundColor=colork;
                                        send(datasrc+devicesid+cmdk);
                                    }
                                };
                            }else {
                                console.log("按钮添加监听失败："+buttonid);
                            }


                        }


                function buttonSend2(buttonid,devicesid, cmdk,datasrc) {
                    // alert(buttonid);
                    var button00object=document.getElementById(buttonid);

                    if(button00object!=null)
                    {

                        button00object.onclick=function(){


                                send(datasrc+devicesid+cmdk);
                            button00object.style.backgroundColor='red';
                            setTimeout(function () {

                                button00object.style.backgroundColor='grey';


                            }, 1000*60);
                               // alert('语音播报中');
                            console.log("发送数据："+datasrc+devicesid+cmdk);

                        };
                    }else {
                        console.log("按钮添加监听失败："+buttonid);
                    }


                }

                        //总开关
                        buttonSend(devicesids[0],row.deviceid,"K1","G1","PID","red","grey");
                        //充电逆变
                        buttonSend(devicesids[19],row.deviceid,"KB0","GB0","PID","red","grey");
                        //空凋
                        buttonSend(devicesids[21],row.deviceid,"KB7","GB7","PID","red","grey");
                        //电热水器
                        buttonSend(devicesids[22],row.deviceid,"KB8","GB8","PID","red","grey");
                        //插座
                        buttonSend(devicesids[20],row.deviceid,"KB6","GB6","PID","red","grey");
                        //微波炉

                        buttonSend(devicesids[23],row.deviceid,"KB9","GB9","PID","red","grey");
                        //外侧灯
                        buttonSend(devicesids[14],row.deviceid,"KA5","GA5","PID","red","grey");
                        //后顶灯
                        buttonSend(devicesids[12],row.deviceid,"KA3","GA3","PID","red","grey");
                        //前顶灯
                        buttonSend(devicesids[5],row.deviceid,"K6","G6","PID","red","grey");
                        //射灯
                        // alert('LLLL'+devicesids[16]);
                        buttonSend(devicesids[17],row.deviceid,"KA8","GA8","PID","red","grey");
                        //星空灯  无
                        //alert('LLLL'+devicesids[16]);
                        buttonSend(devicesids[8],row.deviceid,"K9","G9","PID","red","grey");
                        //冷水泵
                        // alert('LLLL'+devicesids[16]);
                        buttonSend(devicesids[16],row.deviceid,"KA7","GA7","PID","red","grey");
                        //冰箱
                        buttonSend(devicesids[1],row.deviceid,"K2","G2","PID","red","grey");
                        //电影
                        buttonSend(devicesids[13],row.deviceid,"KA4","GA4","PID","red","grey");
                        //电视
                        buttonSend(devicesids[6],row.deviceid,"K7","G7","PID","red","grey");
                        //换气扇  无
                        buttonSend(devicesids[11],row.deviceid,"KA2","GA2","PID","red","grey");
                        //油烟机 无
                        buttonSend(devicesids[10],row.deviceid,"KA1","GA1","PID","red","grey");
                        //监控
                        buttonSend(devicesids[4],row.deviceid,"K5","G5","PID","red","grey");

                        //语音播报
                        buttonSend2(devicesids[26],row.deviceid,"V1","PID");
                        var mm;
                        for(mm=0;mm<devicesids.length;mm++)
                        {
                            console.log("初始化按键ID："+devicesids[mm]);

                        }
                        expandok=0;


            }

           // ss();
            ss2();
           // GetDevicesGPS(row.gps);
            setTimeout(function () {
                DevicesGPS(row.deviceid,"small",row.gps);

            }, 500);


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

    if (!window.WebSocket) {
        window.WebSocket = window.MozWebSocket;
    }
    if (window.WebSocket) {/* socket = new WebSocket("ws://localhost:8888/ws");*/

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
        //按钮应答
        respondButton(data);
        //按钮同步应答
        syncbutton(data);
        syncpower(data);
        syncpower2(data);
       // GetDevicesGPS(data);
        water(data);
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

       /* 净水温度*/
        var  powertext=document.getElementById("temparature"+"0"+devicesid);
        if(powertext!=null)
            powertext.textContent=water06;
        else
            console.log("temparature"+"0"+devicesid+":控制仓温度赋值失败");

        /* 灰水温度*/
        var  powertext=document.getElementById("temparature"+"1"+devicesid);
        if(powertext!=null)
            powertext.textContent=water08;
        else
            console.log("temparature"+"1"+devicesid+":控制仓温度赋值失败");

       /*污水温度*/
        var  powertext=document.getElementById("temparature"+"2"+devicesid);
        if(powertext!=null)
            powertext.textContent=water09;
        else
            console.log("temparature"+"2"+devicesid+":控制仓温度赋值失败");

        /*热水温度*/
        var  powertext=document.getElementById("temparature"+"3"+devicesid);
        if(powertext!=null)
            powertext.textContent=water07;
        else
            console.log("temparature"+"3"+devicesid+":控制仓温度赋值失败");

       /* 油箱温度*/
        var  powertext=document.getElementById("temparature"+"4"+devicesid);
        if(powertext!=null)
            powertext.textContent=water10;
        else
            console.log("temparature"+"4"+devicesid+":控制仓温度赋值失败");

       /*控制仓温度*/
       var  powertext=document.getElementById("powervalue"+"6"+devicesid);
         if(powertext!=null)
         powertext.textContent=water11;
         else
         console.log("powervalue"+"6"+devicesid+":控制仓温度赋值失败");


        var waterchat=WaterDATA.get(devicesid);
        if(waterchat)
        {

            waterchat.setOption({

                series: [{
                    name: '水量',
                    type: 'bar',
                    data: [water01, water03, water04,water02,water05]
                }]
            });


        }else
        {
            console.log('水图形不存在：'+devicesid);
        }




    }


    /*WebSocket:收到一条消息 DID00000068C 0.012.5 80223*/
    function syncpower2(respond) {
        var devicesid;
        var  data;
        var  cmd;

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

        //交流电压
        powertext=document.getElementById("powervalue"+"5"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(12,15);
        else
            console.log("powervalue"+"5"+devicesid+":能量ID为空");


        //有电量表
        if(AmmeterDATA.get(devicesid)=='0')
        {
            return;
        }
        //电池剩余容量
        var flag=AmmeterDATA.get(devicesid);
        //主电压 主电池
        powertext= document.getElementById("powervalue"+"0"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(1,5);
        else
            console.log("powervalue"+"0"+devicesid+":能量ID为空");
        //副电瓶
        powertext=document.getElementById("powervalue"+"1"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(5,9);
        else
            console.log("powervalue"+"1"+devicesid+":能量ID为空");
//         //电池电流
//        powertext=document.getElementById("powervalue"+"2"+devicesid);
//        if(powertext!=null)
//            powertext.textContent=data.substring(9,12);
//        else
//            console.log("powervalue"+"2"+devicesid+":能量ID为空");
//       //可用时间
//        powertext=document.getElementById("powervalue"+"3"+devicesid);
//        if(powertext!=null)
//            powertext.textContent=data.substring(12,15);
//        else
//            console.log("powervalue"+"3"+devicesid+":能量ID为空");
        //剩余电量


//            powertext=document.getElementById("powervalue"+"4"+devicesid);
//            if(powertext!=null)
//                powertext.textContent=data.substring(9,12);
//            else
//                console.log("powervalue"+"4"+devicesid+":能量ID为空");







        //控制仓温度
        /* powertext=document.getElementById("powervalue"+"6"+devicesid);
         if(powertext!=null)
         powertext.textContent=data.substring(27,31);
         else
         console.log("powervalue"+"6"+devicesid+":能量ID为空");*/



//            var powerchat=PowerDATA.get(devicesid);
//            if(powerchat)
//            {
//                var data=data.substring(9,12);
//                powerchat.setOption({
//
//                    series: [{
//                        name: '容量',
//                        type: 'bar',
//                        data: [data]
//                    }]
//                });
//
//
//            }else
//            {
//                console.log('电池容量图形不存在：'+devicesid);
//            }

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
        var powertext;

        powertext= document.getElementById("powervalue"+"0"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(1,5);
        else
            console.log("powervalue"+"0"+devicesid+":能量ID为空");

        powertext=document.getElementById("powervalue"+"1"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(5,9);
        else
            console.log("powervalue"+"1"+devicesid+":能量ID为空");

        powertext=document.getElementById("powervalue"+"2"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(9,15);
        else
            console.log("powervalue"+"2"+devicesid+":能量ID为空");

        powertext=document.getElementById("powervalue"+"3"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(15,20);
        else
            console.log("powervalue"+"3"+devicesid+":能量ID为空");

        powertext=document.getElementById("powervalue"+"4"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(20,24);
        else
            console.log("powervalue"+"4"+devicesid+":能量ID为空");

        //交流电压
       /* powertext=document.getElementById("powervalue"+"5"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(24,27);
        else
            console.log("powervalue"+"5"+devicesid+":能量ID为空");*/


        //控制仓温度
       /* powertext=document.getElementById("powervalue"+"6"+devicesid);
        if(powertext!=null)
            powertext.textContent=data.substring(27,31);
        else
            console.log("powervalue"+"6"+devicesid+":能量ID为空");*/


        var powerchat=PowerDATA.get(devicesid);
        if(powerchat)
        {
            var data=data.substring(24,27);
            powerchat.setOption({

                series: [{
                    name: '容量',
                    type: 'bar',
                    data: [data]
                }]
            });


        }else
        {
            console.log('电池容量图形不存在：'+devicesid);
        }


    }
    //DID0060AKGGGGGGGGGGGGGKGGGGGGGGGGG
    function syncbutton(respond) {
        var devicesid;
        var  data;
        var  cmd;
        if(respond.length>=38)
        {
            devicesid=respond.substring(3,11);
            data=respond.substring(11,respond.length);
            cmd=respond.substring(11,12);

        }else {
            return;
        }
        if(cmd!="A")
            return;
        //alert(devicesid);
        //  alert(data+'数据长度：'+data.length);
        //alert(cmd);

        var i;
        for( i=0;i<data.length-1;i++)
        {
            var id=getdevid(i);
            var a=data.substring(1+i,2+i);
            if(a=="G")
            {
                //  alert(a);
                buttonid(i,"grey",devicesid);
                //   ActionResponse(i,"G",1);

            }else {
                //alert(a);
                buttonid(i,"red",devicesid);
                //  ActionResponse(i,"K",1);
            }

        }



    }

    function getdevid( serial)
    {
        switch (serial)
        {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 17;

            case 3:
                return 5;
            case 4:
                return 12;
            case 5:
                return 14;

            case 6:
                return 16;
            case 7:
                return 100;
            case 8:
                return 101;

            case 9:
                return 4;
            case 10:
                return 6;
            case 11:
                return 13;
            case 12:
                return 102;
            case 13:
                return 1;
            case 14:
                return 103;

            case 15:
                return 22;
            case 16:
                return 20;
            case 17:
                return 17;


            case 19:
                return 19;



        }
        return 200;
    }

    function buttonid(id,color,devicesid) {

        var btn;


        switch (id)
        {
            case 0:
                //  alert(devicesid+color);
                if(color=="grey")
                {
                    colseallbutton(devicesid);

                }else {

                    btn=document.getElementById("button"+"00"+devicesid);
                    if(btn!=null)
                        btn.style.backgroundColor="red";
                    else
                        console.log("button00"+devicesid+":按键ID为空");
                }



                break;

            case 19:
                //alert(devicesid+color);

                btn=document.getElementById("button"+"19"+devicesid)
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button19"+devicesid+":按键ID为空");
                break;
            case 17:
                btn= document.getElementById("button"+"17"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button17"+devicesid+":按键ID为空");
                break;
            case 5:
                btn= document.getElementById("button"+"05"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button05"+devicesid+":按键ID为空");
                break;
            case 12:
                btn= document.getElementById("button"+"12"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button12"+devicesid+":按键ID为空");
                break;
            case 14:
                btn= document.getElementById("button"+"14"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button14"+devicesid+":按键ID为空");
                break;
            case 16:
                btn=document.getElementById("button"+"16"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button16"+devicesid+":按键ID为空");
                break;
            case 100:
                btn=document.getElementById("button"+"100"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button100"+devicesid+":按键ID为空");
                break;
            case 101:
                btn= document.getElementById("button"+"101"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button101"+devicesid+":按键ID为空");
                break;
            case 4:
                btn=document.getElementById("button"+"04"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button04"+devicesid+":按键ID为空");
                break;
            case 6:
                btn=document.getElementById("button"+"06"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button06"+devicesid+":按键ID为空");
                break;
            case 8:
                btn=document.getElementById("button"+"08"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button08"+devicesid+":按键ID为空");
                break;

            case 13:
                btn= document.getElementById("button"+"13"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button13"+devicesid+":按键ID为空");
                break;

            case 102:
                btn= document.getElementById("button"+"102"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button102"+devicesid+":按键ID为空");
                break;
            case 1:
                btn=document.getElementById("button"+"01"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button01"+devicesid+":按键ID为空");
                break;
            case 103:
                btn=document.getElementById("button"+"103"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button103"+devicesid+":按键ID为空");
                break;
            case 22:
                btn=document.getElementById("button"+"22"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button22"+devicesid+":按键ID为空");
                break;
            case 20:
                btn=document.getElementById("button"+"20"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button20"+devicesid+":按键ID为空");
                break;
            case 21:
                btn=document.getElementById("button"+"21"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button21"+devicesid+":按键ID为空");
                break;
            case 22:
                btn=document.getElementById("button"+"22"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button22"+devicesid+":按键ID为空");
                break;
            case 23:
                btn=document.getElementById("button"+"23"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button23"+devicesid+":按键ID为空");
                break;
            case 24:
                btn=document.getElementById("button"+"24"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button24"+devicesid+":按键ID为空");
                break;
            case 25:
                btn=document.getElementById("button"+"25"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button25"+devicesid+":按键ID为空");
                break;
            case 10:
                btn=document.getElementById("button"+"10"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button10"+devicesid+":按键ID为空");
                break;
            case 11:
                btn=document.getElementById("button"+"11"+devicesid);
                if(btn !=null)
                    btn.style.backgroundColor=color;
                else
                    console.log("button11"+devicesid+":按键ID为空");
                break;

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

    function respondButton(respond){
        var datasrc;
        var getdevicesid;
        var cmd;
        var data;
        var buttonid;


        if(respond.length>=14)
        {
            datasrc=respond.substring(0,3);
            getdevicesid =respond.substring(3,11);
            cmd=respond.substring(11,15);
            buttonid=respond.substring(15,17);
            data=respond.substring(17,respond.length);
            /*   if(cmd=="RsBu")
             {
             alert(datasrc);
             alert(getdevicesid);
             alert(cmd);
             alert(data);

             }*/
        }

        if(cmd !="RsBu")
            return;


        //DID0067RsBu00K
        switch (data)
        {
            case "G":
                // alert("button"+buttonid+getdevicesid);
                //总开关
                if(buttonid=="00")
                {

                    colseallbutton(getdevicesid);

                }else {
                    var btn;
                    btn=document.getElementById("button"+buttonid+getdevicesid);
                    if(btn!=null)
                        btn.style.backgroundColor="grey";
                    else
                        console.log("button"+buttonid+getdevicesid+":按键ID为空");
                }



                break;
            case "K":
                //alert("button"+buttonid+getdevicesid);
                var btn= document.getElementById("button"+buttonid+getdevicesid);
                if(btn!=null)
                    btn.style.backgroundColor="red";
                else
                    console.log("button"+buttonid+getdevicesid+":按键ID为空");

                break;


        }

    }



    /*    百度地图获取位置*/

    //获取窗口的高度
    var windowHeight;
    //获取窗口的宽度
    var windowWidth;
    //获取弹窗的宽度
    var popWidth;
    //获取弹窗高度
    var popHeight;
    function init(){
        windowHeight=$(window).height();
        windowWidth=$(window).width();
        popHeight=$(".window").height();
        popWidth=$(".window").width();
        /*        alert(windowHeight);
         alert(windowWidth);
         alert(popHeight);
         alert(popWidth);*/




    }
    //关闭窗口的方法
    function closeWindow(){
        $(".title img").click(function(){
            $(this).parent().parent().hide("slow");
        });
    }
    //定义弹出居中窗口的方法
    function popCenterWindow(devicesid,GPSInformation){
      //  init();


        //计算弹出窗口的左上角Y的偏移量
        //var popY=windowHeight-popHeight;
        //var popX=windowWidth-popWidth;
        //alert(www.cnblogs.com/jihua);
        //设定窗口的位置
       // $("#center").css("top",popY-50).css("left",popX-50).slideToggle("slow");

        DevicesGPS(devicesid,"big",GPSInformation);
        //closeWindow();
    }


    //devicesid 设备id ,findid 百度地图容器选择 small --小容器,big- 打容器。
    function DevicesGPS(devicesid,findid,GPSInformation) {
        // 百度地图API功能
        //GPS坐标
        /*   var x = 113.82424983;
         var y =22.7042908;*/

        var x = 0;
        var y =0;
        var ggPoint;
        //地图初始化
        var bm;
        var mapid;



       //var GPSInformation=GPSDATA.get(devicesid);
        // var GPSInformation="DID00000067$GPRMC,014428.00,A,2242.25745,N,11349.45499,E,0.113,,261016,,,D*73";
        if((GPSInformation !=null)&&(GPSInformation.length>=19))
        {
            //    alert("GPSOK:"+GPSInformation);
        }else {
            alert("GPS信息获取失败，请重新打开。");
            /* alert("DEVICE:"+devicesid);
             alert("GPS:"+GPSInformation);*/
            return;
        }

        function  analysisGPSup( str)
        {
            var gps = str.substring(19);
            var gprmc=gps.split(",");
            if(str.substring(12,17)=="GPRMC") {
                if (gprmc[1] == "A") {
                    /*  lat = Integer.valueOf(gprmc[2].substring(0, 2)) + Integer.valueOf(gprmc[2].substring(2, 4)) / 60.0 + (Integer.valueOf(gprmc[2].substring(5, 9)) + Integer.valueOf(gprmc[2].substring(9)) % 10 * 0.1) / 600000.0;//纬度
                     lng=Integer.valueOf(gprmc[4].substring(0,3))+Integer.valueOf(gprmc[4].substring(3,5))/60.0+(Integer.valueOf(gprmc[4].substring(6,10))+Integer.valueOf(gprmc[4].substring(10))%10*0.1)/600000.0;//经度*/

                    x= (parseFloat(gprmc[4].substring(0, 3)) + parseFloat(gprmc[4].substring(3, 5)/ 60.0)+ (parseFloat(gprmc[4].substring(6, 10)) + parseFloat(gprmc[4].substring(10) % 10 * 0.1) )/ 600000.0);//经度
                    y=parseFloat(gprmc[2].substring(0, 2))+parseFloat(gprmc[2].substring(2, 4))/ 60.0+(parseFloat(gprmc[2].substring(5,9))+parseFloat(gprmc[2].substring(9))% 10*0.1 ) /600000.0;//纬度

                    switch (gprmc[3]) {
                        case "N": break;
                        case "S"
                        :
                            lat =-lat
                            ;break;
                    }
                    switch (gprmc[5])
                    {
                        case "E": break;
                        case "W"
                        :
                            lng =-lng
                            ;break;
                    }


                }
            }else {
                return;
            }
        }

        // alert("GPSOOK:"+GPSInformation);
        analysisGPSup(GPSInformation);
        ggPoint = new BMap.Point(x,y);



        if(findid=="small")
        {

            mapid=document.getElementById('gps'+devicesid);
        }else if(findid=="big"){
           // gpsdatas[0]
           // mapid=document.getElementById('centermap'+'gps'+devicesid);
            mapid=document.getElementById("centermap");
        }else {
            return;
        }

        if(mapid!=null)
        {
            console.log('获取mapid生成地图:'+'gps'+devicesid);
            bm= new BMap.Map(mapid);
            bm.centerAndZoom(ggPoint, 15);
            bm.addControl(new BMap.NavigationControl());
            bm.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放

            /////全景控件//////////////////////////////////
            // 覆盖区域图层测试
            bm.addTileLayer(new BMap.PanoramaCoverageLayer());

            var stCtrl = new BMap.PanoramaControl(); //构造全景控件
            stCtrl.setOffset(new BMap.Size(20, 20));
            bm.addControl(stCtrl);//添加全景控件
            /////全景控件//////////////////////////////////


            /* *********3d 卫星图 开始************************* */
            var optss={offset:new BMap.Size(80,22)}
            bm.addControl(new BMap.MapTypeControl(optss));          //添加地图类型控件
            bm.disable3DBuilding();
            /* 3D 卫星图结束*/

            //坐标转换完之后的回调函数
            translateCallback = function (data){
                if(data.status === 0) {
                    //  alert('sssssss');
                    var marker = new BMap.Marker(data.points[0]);
                    bm.addOverlay(marker);   //添加GPS marker {offset:new BMap.Size(20,-10)}

                    bm.setCenter(data.points[0]);

                    if(findid=="small")
                    {
                        marker.addEventListener("dblclick", function(){
                            //   alert('小砂锅');


                            var mychar = document.getElementById("msgbox");
                            mychar.style.visibility="visible";
                            $("#opengps").click();//显示和隐藏
                            DevicesGPS(devicesid,"big",GPSInformation);

                         /*   $("#msgbox").slideToggle();//显示和隐藏*/
                           // popCenterWindow(devicesid,GPSInformation);




                        });

                    }


                }
            }
            function makerpoint() {
                var convertor = new BMap.Convertor();
                var pointArr = [];
                pointArr.push(ggPoint);
                convertor.translate(pointArr, 1, 5, translateCallback)

            }
            makerpoint();

        }else {
            console.log('获取mapid为空:'+mapid);
            console.log('获取mapid为空:'+'gps'+devicesid);

        }



    }

    function GetDevicesGPS(GPSInformation) {
        if(GPSInformation.length>=19)
        {}else {return};
        var gps = GPSInformation.substring(19);
        var gprmc=gps.split(",");
        if(GPSInformation.substring(12,17)=="GPRMC") {
            if (gprmc[1] == "A") {
                var devicesid=GPSInformation.substring(3,11);
                GPSDATA.set(devicesid,GPSInformation)

            }else {
                return;
            }
        }else {
            return;
        }


    }
    /*    百度地图获取位置结束*/


    ////////////////////////////////////////////websocket end//////////////////////////////////////////////////////////////////



</script>




<script>
    jQuery(document).ready(function() {
        App.init();
    });
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



<%--<script src="js/jquery-2.1.1.js"></script>--%>
<script src="assets/js/js/velocity.min.js"></script>
<script src="assets/js/js/main.js"></script> <!-- Resource jQuery -->


<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>

