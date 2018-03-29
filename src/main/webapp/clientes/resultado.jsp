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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado</h1>
        
        <p style="width: 400px">
            <s:if test="cliente.codigo != 0">
                <s:text name="nuevo.resultado.actualiza"/>
            </s:if>
            <s:else>
                <s:text name="nuevo.resultado.nuevo"/>
            </s:else>
        </p>
        
        <s:if test="cliente.codigo == 0 && cliente.publicidad == true">
            <p> <s:text name="nuevo.aviso"/></p>
        </s:if>
       

            <hr/>
            


            
            <s:debug/>
    </body>
</html>
