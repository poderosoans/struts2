<%@taglib prefix="s" uri="/struts-tags"%>

           <ul>
               <li>
                   <s:url action="listar" id="listar"/>
                   <s:a href="%{listar}"><s:text name="enlace.listar.cliente"/></s:a>
               </li>
                <li>
                    
                    <s:url action="logout" id="salir"/>
                    <s:a href="%{salir}"><s:text name="enlace.logout"/> </s:a>
                </li>
                <li>
                      <s:url action="inicializarCliente" id="newCliente"/>
                      <s:a href="%{newCliente}"><s:text name="enlace.cliente.nuevo"/></s:a>
                </li>
                <li>
                    
                </li>
            </ul>   
        