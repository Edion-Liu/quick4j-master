<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SpaceLab</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Fonts from Font Awsome -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!-- CSS Animate -->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- DataTables-->
    <link rel="stylesheet" href="assets/plugins/dataTables/css/dataTables.css">
    <link rel="stylesheet" href="assets/css/Customme.css">
</head>

<body>
    <section id="container">

        <section class="main-content-wrapper">
            <section id="main-content">


                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 id="devicesStatus"class="panel-title">设备状态信息</h3>
                                <div class="actions pull-right">
                                    <i class="fa fa-chevron-down"></i>
                                    <i class="fa fa-times"></i>
                                </div>
                            </div>
                            <div class="panel-body">
                                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>设备编号</th>
                                            <th>设备控制端</th>
                                            <th>GPS位置</th>
                                            <th>水箱水位</th>
                                            <th>电池管理</th>
                                            <th>按钮控制</th>
                                            <th>状态</th>

                                        </tr>
                                    </thead>

                                    <tbody>

                                        <tr>
                                            <td>0060</td>
                                            <td>13425144857</td>
                                            <td>深圳西乡</td>
                                            <td>
                                                <div class="col-md-6">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title">3d Buttons</h3>
                                                            <div class="actions pull-right">
                                                                <i class="fa fa-chevron-down"></i>
                                                                <i class="fa fa-times"></i>
                                                            </div>
                                                        </div>
                                                        <div class="panel-body">
                                                            <button type="button" class="btn btn-default btn-3d">Default</button>
                                                            <button type="button" class="btn btn-primary btn-3d">Primary</button>
                                                            <button type="button" class="btn btn-success btn-3d">Success</button>
                                                            <button type="button" class="btn btn-info btn-3d">Info</button>
                                                            <button type="button" class="btn btn-warning btn-3d">Warning</button>
                                                            <button type="button" class="btn btn-danger btn-3d">Danger</button>
                                                        </div>
                                                    </div>

                                                </div>
                                            </td>
                                            <td>20+</td>
                                            <td></td>
                                            <td>在线</td>
                                        </tr>
                                        <tr>
                                            <td>Paul Byrd</td>
                                            <td>Chief Financial Officer (CFO)</td>
                                            <td>New York</td>
                                            <td>64</td>
                                            <td>2010/06/09</td>
                                            <td>$725,000</td>
                                            <td>在线</td>
                                        </tr>



                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>

            </section>
        </section>

    </section>
    <!--Global JS-->
    <script src="assets/js/jquery-1.10.2.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/plugins/waypoints/waypoints.min.js"></script>
    <script src="assets/plugins/nanoScroller/jquery.nanoscroller.min.js"></script>
    <script src="assets/js/application.js"></script>
    <!--Page Leve JS -->
    <script src="assets/plugins/dataTables/js/jquery.dataTables.js"></script>
    <script src="assets/plugins/dataTables/js/dataTables.bootstrap.js"></script>
    <script>
    $(document).ready(function() {
        $('#example').dataTable();
    });
    </script>

</body>

</html>
