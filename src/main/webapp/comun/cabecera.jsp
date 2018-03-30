<%@taglib prefix="s" uri="/struts-tags"%>
<!-- LOGO -->
<div class="topbar-left">
    <s:url action="principal" id="principal"/>
        <s:a href="%{principal}" class="logo">
            <span>Struts<span>2</span></span><i class="mdi mdi-layers"></i>
        </s:a>
   
</div>

<!-- Button mobile view to collapse sidebar menu -->
<div class="navbar navbar-default" role="navigation">
    <div class="container">
        <!-- Navbar-left -->
        <ul class="nav navbar-nav navbar-left">
            <li>
                <button class="button-menu-mobile open-left waves-effect">
                    <i class="mdi mdi-menu"></i>
                </button>
            </li>


        </ul>
        <!-- Right(Notification) -->
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="#" class="right-menu-item dropdown-toggle" data-toggle="dropdown">
                    <i class="mdi mdi-flag"></i>
                </a>

                <s:url var="ingles" includeParams="all" value="">
                    <s:param name="request_locale">en</s:param>
                </s:url>	
                <s:url var="espanol" includeParams="all" value="">
                    <s:param name="request_locale">es</s:param>
                </s:url>


                <ul class="dropdown-menu dropdown-menu-right arrow-dropdown-menu arrow-menu-right user-list notify-list">
                    <li><s:a href="%{espanol}">
                            <img src="assets/images/es.png" alt="">
                            <s:text name="enlace.idioma.espanol"/></s:a></li>
                    <li><s:a href="%{ingles}">
                            <img src="assets/images/en.png" alt="">
                            <s:text name="enlace.idioma.ingles"/></s:a></li>
                    </ul>
                </li>

                <li>
                    <a href="#" class="right-menu-item dropdown-toggle" data-toggle="dropdown">
                        <i class="mdi mdi-settings"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right arrow-dropdown-menu arrow-menu-right dropdown-lg user-list notify-list">
                        <li>
                            <h5><s:text name="titulo.bienvenida"/></h5>
                    </li>
                    <li>
                        <s:url action="logout" id="salir"/>
                        <s:a href="%{salir}">
                            <i class="ti-power-off m-r-5"></i><span>
                                <s:text name="enlace.logout"/>
                            </span>
                        </s:a>
                </ul>
            </li>

        </ul> <!-- end navbar-right -->

    </div><!-- end container -->
</div><!-- end navbar -->