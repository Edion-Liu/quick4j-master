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
    <title>天涯同行控制系统</title>
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

            <%--
            <li class="dropdown user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                    <img alt="" src="assets/img/avatar1_small.jpg"/>
                    <span class="username">
					Bob Nilson
				</span>
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="extra_profile.html"><i class="fa fa-user"></i> My Profile</a>
                    </li>
                    <li>
                        <a href="page_calendar.html"><i class="fa fa-calendar"></i> My Calendar</a>
                    </li>
                    <li>
                        <a href="inbox.html"><i class="fa fa-envelope"></i> My Inbox
                            <span class="badge badge-danger">
							3
						</span>
                        </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-tasks"></i> My Tasks
                            <span class="badge badge-success">
							7
						</span>
                        </a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="javascript:;" id="trigger_fullscreen"><i class="fa fa-move"></i> Full Screen</a>
                    </li>
                    <li>
                        <a href="extra_lock.html"><i class="fa fa-lock"></i> Lock Screen</a>
                    </li>
                    <li>
                        <a href="login.html"><i class="fa fa-key"></i> Log Out</a>
                    </li>
                </ul>
            </li>


            --%>

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

                <li class="start active">
                    <a href="/" id="btn-dashboard">
                        <i class="fa fa-home"></i><span class="title"> 首页 </span><span
                            class="selected"> </span>
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

                <li class="">
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
                        Blank Page <small>blank page</small>
                    </h3>
                    <ul class="page-breadcrumb breadcrumb">
                        <%--

                                                <li class="btn-group">
                                                    <button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
                                                    <span>
                                                        Actions
                                                    </span>
                                                        <i class="fa fa-angle-down"></i>
                                                    </button>
                                                    <ul class="dropdown-menu pull-right" role="menu">
                                                        <li>
                                                            <a href="#">Action</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">Another action</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">Something else here</a>
                                                        </li>
                                                        <li class="divider">
                                                        </li>
                                                        <li>
                                                            <a href="#">Separated link</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                --%>
                        <li>
                            <i class="fa fa-home"></i>
                            <a href="index.html">Home</a>
                            <i class="fa fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="#">Layouts</a>
                            <i class="fa fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="#">Blank Page</a>
                        </li>
                    </ul>
                    <!-- END PAGE TITLE & BREADCRUMB-->
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row">
                <div class="col-md-12">
                   <%-- <div style="margin:50px auto;border:1px solid #000;width:800px;height:750px;" >

                        <div style="margin:0 auto;border:1px solid white;width:600px;height:700px;text-align: center;">
                            <form  id="formreset"   >
                                <fieldset>
                                    <legend  style="margin:50px auto;border:1px solid white;width:600px;height:50px;text-align: center;">硬件设备修改/激活</legend>

                                    <div style="margin-left:70px;border:1px solid white;width:500px;height:380px;">

                                        <div style="float: left;" >
                                            <label >设备编号</label>  <input name="devicesid" id="devicesid" style="width:300px;margin-left: 50px; " placeholder="填写需要激活设备编号" type="text">
                                            <span class='state1'></span><br/><br/>
                                        </div>
                                        <div style="float: left;">
                                            <label >客户控制端</label>  <input name="controllerid" id="controllerid"style="width:300px; margin-left: 37px;" placeholder="填写客户注册手机号" type="text">
                                        </div>
                                        <div style="float: left;">
                                            <label >设备绑定密码</label>  <input name="devicepassword" id="devicepassword" style="width:300px;margin-left: 24px; " placeholder="绑定客户控制端的设备绑定密码" type="text">
                                        </div>
                                        <div style="float: left;">
                                            <label >绑定状态</label>  <input name="devicebinding" id="devicebinding"style="width:300px;margin-left: 50px; " placeholder="绑定状态,是则填true,否则填false" type="text">
                                        </div>
                                        <div style="float: left;">
                                            <label >在线状态</label>  <input name="onlinestatus" id="onlinestatus"style="width:300px;margin-left: 50px; " placeholder="填写掉线" type="text">
                                        </div>
                                        <div style="float: left;">
                                            <label >公司信息</label>  <input name="company" id="company" style="width:300px;margin-left: 50px; " placeholder="填写客户公司信息，个人则填写名字" type="text">
                                        </div>
                                        <div style="float: left;">
                                            <label >车牌号</label>  <input name="cardnumber" id="cardnumber" style="width:300px;margin-left: 63px; " placeholder="填写车牌号" type="text">
                                        </div>
                                        <div style="float: left;">
                                            <label >激活状态</label>  <input name="activates" id="activates" style="width:300px;margin-left: 50px; " placeholder="填写已激活" type="text">
                                        </div>
                                        <span style="margin-top: 350px;text-align: center;" class="help-block" contenteditable="true">温馨提示：同一用户请，填写同一公司名，便于查找。</span>

                                    </div>

                                </fieldset>
                            </form>
                            <button style="margin:100px 0px auto;border:1px solid #000;width:200px;height:50px;" class="btn"  onclick="resets()" >重置</button>
                            <!--   <input style="margin:100px 0px auto;border:1px solid #000;width:200px;height:50px;" class="btn" type="submit" value="提交"/>-->

                            <button style="margin:100px 0px auto;border:1px solid #000;width:200px;height:50px;" class="btn" onclick="updata()" >提交</button>
                            <button style="margin:10px 0px auto;border:1px solid #000;width:200px;height:50px;" class="btn" onclick="setdefault()" >设置默认值</button>



                        </div>






                    </div>--%>
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

        $('#someid').on('click', function () {
            $('#OverviewcollapseButton').removeClass("collapse").addClass("expand");
            $('#PaymentOverview').hide();
        });

    });
</script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        //Hide the overview when click
       /* $('#someid').on('click', function () {
            $('#OverviewcollapseButton').removeClass("collapse").addClass("expand");
            $('#PaymentOverview').hide();
        });*/
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>

















