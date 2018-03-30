<%-- 
    Document   : paso
    Created on : 2/11/2012, 11:04:45 AM
    Author     : portatil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="page-title-box">
                <h4 class="page-title">
                    <s:text name="titulo.resultado"/>
                </h4>
                <ol class="breadcrumb p-0 m-0">
                    <li>
                        <s:url action="principal" id="principal"/>
                        <s:a href="%{principal}">
                            <s:text name="enlace.menu.inicio"/>
                        </s:a>
                    </li>
                    <li>
                        <s:url action="listar" id="listar"/>
                        <s:a href="%{listar}" class="waves-effect">
                            <s:text name="enlace.listar.cliente"/>
                        </s:a>
                    </li>

                    <li class="active">
                        <s:text name="titulo.resultado"/>
                    </li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- end row -->

    <div class="row">

        
            <s:if test="cliente.codigo != 0">
                <div class="alert alert-warning" role="alert">
                    <p class="alert-color"><s:text name="nuevo.resultado.actualiza"/></p>
                </div>
            </s:if>
            <s:else>
                <div class="alert alert-success" role="alert">
                    <p class="alert-color"><s:text name="nuevo.resultado.nuevo"/></p>
                </div>
            </s:else>
        

            <s:if test="cliente.codigo == 0 && cliente.publicidad == true">
                <div class="alert alert-info" role="alert">
                    <p class="alert-color"><s:text name="nuevo.aviso"/></p>
                </div>
            </s:if>
        <hr/>

        <s:debug/>
    </div>
    <!-- end row -->

</div> <!-- container -->
