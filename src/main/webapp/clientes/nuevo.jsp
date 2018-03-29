<%-- 
    Document   : paso
    Created on : 2/11/2012, 11:04:45 AM
    Author     : portatil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <title>JSP Page</title>
        <s:head/>
    </head>
    <body>
        
        <s:if test="cliente.codigo != 0">
             <h1><s:text name="formulario.titulo.actualizar"/></h1>
        </s:if>
        <s:else>
        <h1><s:text name="formulario.titulo.nuevo"/></h1>
        </s:else>
        <s:form action="registrarCliente">
            <s:if test="cliente.codigo != 0">
                <s:hidden name="cliente.codigo" />
            </s:if>
            <s:textfield key="formulario.nombre" name="cliente.nombre"/>
            <s:textfield key="formulario.apellido" name="cliente.apellido"/>
            <s:radio key="formulario.genero" name="cliente.genero" list="#{'M':'Masculino','F':'Femenino'}"/>
            <s:select key="formulario.profesion" name="cliente.profesion" list="#{'A1':'Arquitectura','D1':'Derecho','M1':'Marketing'}"
                      headerKey=""
                      headerValue="---Seleccione---"/>
            <s:textfield key="formulario.numeroMovil" name="cliente.numeroMovil"/>
            <s:select  key="formulario.operadorMovil" name="cliente.operadorMovil"
                      list="#{'OP1':'Movistar','OP2':'Claro','OP3':'Entel'}"
                      headerKey=""
                      headerValue="---Seleccione---"/>
            <s:checkbox key="formulario.publicidad" name="cliente.publicidad"/> 
            <s:textfield key="formulario.correoElectronico" name="cliente.correo"/>
            <s:if test="cliente.codigo != 0">
                <s:submit key="formulario.boton.actualizar"/>
            </s:if>
            <s:else>
                <s:submit key="formulario.boton.registrar"/>
            </s:else>
        </s:form>
        
        <p><s:actionmessage/></p>
        
    </body>
</html>

