<%-- 
    Document   : index
    Created on : 2/11/2012, 11:04:33 AM
    Author     : portatil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login | CRUD - Struts 2</title>

        <!-- Styles -->
        <link href="assets/css/app.css" rel="stylesheet">

        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
    </head>

    <body class="bg-transparent">

        <!-- HOME -->
        <section>
            <div class="container-alt">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="wrapper-page">

                            <div class="m-t-40 account-pages">
                                <div class="text-center account-logo-box">
                                    <h2 class="text-uppercase">
                                        <a href="#" class="text-success">
                                            <span>Struts<span>2</span></span>
                                        </a>
                                    </h2>
                                    <!--<h4 class="text-uppercase font-bold m-b-0">Sign In</h4>-->
                                </div>
                                <div class="account-content">

                                    <div class="row m-b-20">
                                        <div class="col-sm-12 text-center">
                                            <div class="dropdown">
                                                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                    <s:text name="titulo.idioma"/>
                                                    <span class="caret"></span>
                                                </button>
                                                <s:url var="ingles" includeParams="all" value="">
                                                    <s:param name="request_locale">en</s:param>
                                                </s:url>	
                                                <s:url var="espanol" includeParams="all" value="">
                                                    <s:param name="request_locale">es</s:param>
                                                </s:url>
                                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                                    <li><s:a href="%{espanol}">
                                                            <img src="assets/images/es.png" alt="">
                                                            <s:text name="enlace.idioma.espanol"/></s:a></li>
                                                    <li><s:a href="%{ingles}">
                                                            <img src="assets/images/en.png" alt="">
                                                            <s:text name="enlace.idioma.ingles"/></s:a></li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>

                                    <s:form action="login" class="form-horizontal">      

                                        <s:textfield class="form-control" key="formulario.username" name="usuario.username"/>

                                        <s:password class="form-control" key="formulario.password" name="usuario.password"/>

                                        <s:submit class="btn btn-primary w-md btn-bordered" key="formulario.boton"/>

                                    </s:form>

                                    <div class="clearfix"></div>

                                    <s:if test="hasActionErrors()">
                                        <div class="alert alert-danger" style="margin-top:10px" role="alert">
                                            <s:actionerror/>
                                        </div>
                                    </s:if>
                                </div>
                            </div>
                            <!-- end card-box-->

                        </div>
                        <!-- end wrapper -->

                    </div>
                </div>
            </div>
        </section>
        <!-- END HOME -->


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