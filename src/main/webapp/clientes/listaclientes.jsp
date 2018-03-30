<%-- 
    Document   : listaclientes
    Created on : 12/03/2018, 09:07:26 PM
    Author     : Java-LM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="page-title-box">
                <h4 class="page-title"><s:text name="enlace.listar.cliente"/></h4>
                <ol class="breadcrumb p-0 m-0">
                    <li>
                        <s:url action="principal" id="principal"/>
                        <s:a href="%{principal}">
                            <s:text name="enlace.menu.inicio"/>
                        </s:a>
                    </li>
                    <li class="active">
                        <s:text name="enlace.listar.cliente"/>
                    </li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- end row -->

    <div class="row">
        <s:if test="clientList.size() > 0">

            <div class="table-responsive">
                <table class="table table-hover table-colored table-primary">
                    <thead>
                    <th><s:text name="table.apellidos"/></th>
                    <th><s:text name="table.genero"/></th>
                    <th><s:text name="table.profesion"/></th>
                    <th><s:text name="table.movil"/></th>
                    <th><s:text name="table.publicidad"/></th>
                    <th><s:text name="table.email"/></th>
                    <th colspan="2"></th>
                    </thead>
                    <tbody>
                        <s:iterator value="clientList">    
                            <tr>
                                <td><s:property value="apellido" />, <s:property value="nombre" /></td>
                                <td><s:property value="genero" /></td>
                                <td><s:property value="profesion" /></td>
                                <td><s:property value="numeroMovil" /></td>
                                <td><s:property value="publicidad" /></td>
                                <td><s:property value="correo" /></td>
                                <td><s:url id="editURL" action="editClient">
                                        <s:param name="id" value="%{codigo}"></s:param>
                                    </s:url>
                                    <s:a href="%{editURL}" class="btn btn-warning btn-xs" role="button"><s:text name="table.editar" /></s:a>
                                    </td>
                                    <td><s:url id="deleteURL" action="deleteClient">
                                        <s:param name="id" value="%{codigo}"></s:param>
                                    </s:url>
                                    <s:a href="%{deleteURL}" onclick="return confirm('¿Desea eliminar el registro seleccionado?');" class="btn btn-danger btn-xs" role="button"><s:text name="table.eliminar" /></s:a>
                                    </td>
                                </tr>

                        </s:iterator>
                        <s:if test="hasActionMessages()">
                            <s:actionmessage />
                        </s:if>
                    </tbody>
                </table>
            </div>
        </s:if>
    </div>
    <!-- end row -->

</div> <!-- container -->

