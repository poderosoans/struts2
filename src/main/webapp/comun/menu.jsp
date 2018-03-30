<%@taglib prefix="s" uri="/struts-tags"%>


<ul>
    <li class="menu-title">Menu</li>

    <li>
        <s:url action="principal" id="principal"/>
        <s:a href="%{principal}" class="waves-effect">
            <i class="mdi mdi-view-dashboard"></i><span>
                <s:text name="enlace.menu.inicio"/>
            </span>
        </s:a>
    </li>

    <li>
        <s:url action="listar" id="listar"/>
        <s:a href="%{listar}" class="waves-effect">
            <i class="mdi mdi-format-list-bulleted"></i><span>
                <s:text name="enlace.listar.cliente"/>
            </span>
        </s:a>

    </li>

    <li>
        <s:url action="inicializarCliente" id="newCliente"/>
        <s:a href="%{newCliente}" class="waves-effect">
            <i class="mdi mdi-account-multiple-plus"></i><span>
                <s:text name="enlace.cliente.nuevo"/>
            </span>
        </s:a>
    </li>

    <li>
        <s:url action="logout" id="salir"/>
        <s:a href="%{salir}" class="waves-effect">
            <i class="mdi mdi-logout"></i><span>
                <s:text name="enlace.logout"/>
            </span>
        </s:a>
    </li>

</ul>
