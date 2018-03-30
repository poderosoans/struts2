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
                <h4 class="page-title"><s:if test="cliente.codigo != 0">
                        <s:text name="formulario.titulo.actualizar"/>
                    </s:if>
                    <s:else>
                        <s:text name="formulario.titulo.nuevo"/>
                    </s:else></h4>
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
                        <s:if test="cliente.codigo != 0">
                            <s:text name="formulario.titulo.actualizar"/>
                        </s:if>
                        <s:else>
                            <s:text name="formulario.titulo.nuevo"/>
                        </s:else>
                    </li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- end row -->

    <div class="row">


        <s:form action="registrarCliente">
            <s:if test="cliente.codigo != 0">
                <s:hidden name="cliente.codigo" />
            </s:if>

            <s:textfield key="formulario.nombre" class="form-control" name="cliente.nombre"/>

            <s:textfield key="formulario.apellido" class="form-control" name="cliente.apellido"/>

            <s:radio key="formulario.genero" name="cliente.genero" list="#{'M':'Masculino','F':'Femenino'}"/>
            <s:select key="formulario.profesion" class="form-control" name="cliente.profesion" list="#{'A1':'Arquitectura','D1':'Derecho','M1':'Marketing'}"
                      headerKey=""
                      headerValue="---Seleccione---"/>

            <s:textfield key="formulario.numeroMovil" class="form-control" name="cliente.numeroMovil"/>

            <s:select  key="formulario.operadorMovil" class="form-control" name="cliente.operadorMovil"
                       list="#{'OP1':'Movistar','OP2':'Claro','OP3':'Entel'}"
                       headerKey=""
                       headerValue="---Seleccione---"/>

            <s:checkbox key="formulario.publicidad" name="cliente.publicidad"/> 

            <s:textfield key="formulario.correoElectronico" class="form-control" name="cliente.correo"/>

            <s:if test="cliente.codigo != 0">
                <s:submit class="btn btn-warning" key="formulario.boton.actualizar"/>
            </s:if>
            <s:else>
                <s:submit class="btn btn-primary" key="formulario.boton.registrar"/>
            </s:else>
        </s:form>

        <p><s:actionmessage/></p>

    </div>
    <!-- end row -->

</div> <!-- container -->


