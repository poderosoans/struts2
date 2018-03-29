<%-- 
    Document   : listaclientes
    Created on : 12/03/2018, 09:07:26 PM
    Author     : Java-LM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de clientes</title>
    </head>
    <body>
        <s:if test="clientList.size() > 0">
        <table>
            <thead>
                <th>Apellidos y Nombres</th>
                <th>Género</th>
                <th>Profesión</th>
                <th>Número Movil</th>
                <th>Publicidad</th>
                <th>Correo electrónico</th>
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
                        <s:a href="%{editURL}">Edit</s:a>
                    </td>
                    <td><s:url id="deleteURL" action="deleteClient">
                            <s:param name="id" value="%{codigo}"></s:param>
                        </s:url>
                        <s:a href="%{deleteURL}">Delete</s:a>
                    </td>
                </tr>
                
                </s:iterator>
                <s:if test="hasActionMessages()">
                <s:actionmessage />
                </s:if>
            </tbody>
        </table>
        </s:if>
        
    </body>
</html>
