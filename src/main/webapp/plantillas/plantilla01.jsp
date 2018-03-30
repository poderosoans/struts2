<%-- 
    Document   : plantilla01
    Created on : 2/05/2012, 10:11:27 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>   
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD - Struts 2</title>
        
        <!-- Styles -->
    <link href="assets/css/app.css" rel="stylesheet">

    <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">
                <!-- Header -->
                    <tiles:insertAttribute name="cabecera" />
            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->
            
            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <tiles:insertAttribute name="menu" />
                    </div>
                    <!-- Sidebar -->
                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <!-- CUERPO -->
                    <tiles:insertAttribute name="cuerpo" />

                </div> <!-- content -->
                
                
                <!-- Footer -->
                <tiles:insertAttribute name="pie" />
            </div>


        </div>
        <!-- END wrapper -->
        
        
                        
    <script type="text/javascript" src="assets/js/modernizr.min.js"></script>

    <script>
        var resizefunc = [];
    </script>
    
    <!-- Scripts -->
    <script type="text/javascript" src="assets/js/app.js"></script>

    <!-- jQuery  -->
    <script type="text/javascript" src="assets/js/detect.js"></script>
    <script type="text/javascript" src="assets/js/fastclick.js"></script>
    <script type="text/javascript" src="assets/js/jquery.blockUI.js"></script>
    <script type="text/javascript" src="assets/js/waves.js"></script>
    <script type="text/javascript" src="assets/js/jquery.slimscroll.js"></script>
    <script type="text/javascript" src="assets/js/jquery.scrollTo.min.js"></script>
    
    <script type="text/javascript" src="assets/js/jquery.core.js"></script>
    <script type="text/javascript" src="assets/js/jquery.app.js"></script>
    
    </body>
</html>
