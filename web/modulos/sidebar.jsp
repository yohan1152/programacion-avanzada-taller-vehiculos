<%-- 
    Document   : sidebar
    Created on : 15/03/2020, 08:10:57 PM
    Author     : Yohan Puerta
--%>

<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
    <script type="text/javascript">
            try{ace.settings.loadState('sidebar')}catch(e){}
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                    <button class="btn btn-success">
                            <i class="ace-icon fa fa-signal"></i>
                    </button>

                    <button class="btn btn-info">
                            <i class="ace-icon fa fa-pencil"></i>
                    </button>

                    <button class="btn btn-warning">
                            <i class="ace-icon fa fa-users"></i>
                    </button>

                    <button class="btn btn-danger">
                            <i class="ace-icon fa fa-cogs"></i>
                    </button>
            </div>

            <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>

                    <span class="btn btn-info"></span>

                    <span class="btn btn-warning"></span>

                    <span class="btn btn-danger"></span>
            </div>
    </div><!-- /.sidebar-shortcuts -->

    <ul class="nav nav-list">
            <li class="">
                    <a href="index.jsp">
                            <i class="menu-icon fa fa-tachometer"></i>
                            <span class="menu-text"> Inicio </span>
                    </a>

                    <b class="arrow"></b>
            </li>

            <li class="active open">
                    <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-book"></i>
                            <span class="menu-text"> Gestionar Vehículos</span>

                            <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                            <li class="active">
                                    <a href="index.jsp">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Lista de Vehículos
                                    </a>

                                    <b class="arrow"></b>
                            </li>

                            <li class="">
                                    <a href="registrarTc.jsp">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Registrar Tipo Conductor
                                    </a>

                                    <b class="arrow"></b>
                            </li>
                            <li class="">
                                    <a href="registrarConductor.jsp">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Registrar Conductor
                                    </a>

                                    <b class="arrow"></b>
                            </li>
                            <li class="">
                                    <a href="registrarTv.jsp">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Registrar Tipo Vehículo
                                    </a>

                                    <b class="arrow"></b>
                            </li>
                             <li class="">
                                    <a href="registrarVehiculo.jsp">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Registrar Vehículo
                                    </a>

                                    <b class="arrow"></b>
                            </li>
                            <li class="">
                                    <a href="registrarRuta.jsp">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Registrar Ruta
                                    </a>

                                    <b class="arrow"></b>
                            </li>
                            <li class="">
                                    <a href="registrarContrato.jsp">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Registrar Contrato
                                    </a>

                                    <b class="arrow"></b>
                            </li>
                             <!-- <li class="">
                                    <a href="#">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Registrar Rutas
                                    </a>

                                    <b class="arrow"></b>
                            </li> -->
                    </ul>
            </li>

    </ul><!-- /.nav-list -->

    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>