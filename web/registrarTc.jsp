<%-- 
    Document   : registrarTc
    Created on : 11/03/2020, 08:15:02 PM
    Author     : yohan.puerta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Registrar Tipo Conductor</title>
    <meta name="description" content="Página donde se van a registrar todos los tipos conductores" />
    <jsp:include page="./modulos/head.jsp"></jsp:include>
</head>

<body class="no-skin">
    <jsp:include page="./modulos/navbar.jsp"></jsp:include>

    <div class="main-container ace-save-state" id="main-container">
        <script type="text/javascript">
                try{ace.settings.loadState('main-container')}catch(e){}
        </script>

        <jsp:include page="./modulos/sidebar.jsp"></jsp:include>

        <div class="main-content">
                <div class="main-content-inner">
                        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                                <ul class="breadcrumb">
                                        <li>
                                                <i class="ace-icon fa fa-home home-icon"></i>
                                                <a href="#">Inicio</a>
                                        </li>


                                </ul><!-- /.breadcrumb -->

                                <div class="nav-search" id="nav-search">
                                        <form class="form-search">
                                                <span class="input-icon">
                                                        <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                                                        <i class="ace-icon fa fa-search nav-search-icon"></i>
                                                </span>
                                        </form>
                                </div><!-- /.nav-search -->
                        </div>

                        <div class="page-content">
                                <div class="ace-settings-container" id="ace-settings-container">
                                        <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                                                <i class="ace-icon fa fa-cog bigger-130"></i>
                                        </div>

                                        <div class="ace-settings-box clearfix" id="ace-settings-box">
                                                <div class="pull-left width-50">
                                                        <div class="ace-settings-item">
                                                                <div class="pull-left">
                                                                        <select id="skin-colorpicker" class="hide">
                                                                                <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                                                                <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                                                                <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                                                                <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                                                        </select>
                                                                </div>
                                                                <span>&nbsp; Choose Skin</span>
                                                        </div>

                                                        <div class="ace-settings-item">
                                                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
                                                                <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                                                        </div>

                                                        <div class="ace-settings-item">
                                                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
                                                                <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                                                        </div>

                                                        <div class="ace-settings-item">
                                                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
                                                                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                                                        </div>

                                                        <div class="ace-settings-item">
                                                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
                                                                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                                                        </div>

                                                        <div class="ace-settings-item">
                                                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
                                                                <label class="lbl" for="ace-settings-add-container">
                                                                        Inside
                                                                        <b>.container</b>
                                                                </label>
                                                        </div>
                                                </div><!-- /.pull-left -->

                                                <div class="pull-left width-50">
                                                        <div class="ace-settings-item">
                                                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
                                                                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                                                        </div>

                                                        <div class="ace-settings-item">
                                                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
                                                                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                                                        </div>

                                                        <div class="ace-settings-item">
                                                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
                                                                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                                                        </div>
                                                </div><!-- /.pull-left -->
                                        </div><!-- /.ace-settings-box -->
                                </div><!-- /.ace-settings-container -->

                                <div class="page-header">
                                        <h1>
                                                Gestionar los Vehículos
                                                <small>
                                                        <i class="ace-icon fa fa-angle-double-right"></i>
                                                Lista de Vehículos
                                                </small>
                                        </h1>
                                </div><!-- /.page-header -->

                                <div class="row">
                                        <div class="col-xs-12">
                                                <!-- PAGE CONTENT BEGINS -->
                                                <!-- /.row -->

                                                <div class="row">
                                                        <div class="col-xs-12">
                                                                <div class="table-header">
                                                                        Registrar Tipo Conductor
                                                                </div>

                                                                <!-- div.table-responsive -->

                                                                <!-- div.dataTables_borderWrap -->
                                                                <div>

                                                                    <form action="tipoConductorControlador" method="POST">
                                                                        <div class="form-group">
                                                                            <label class="col-sm-2 control-label no-padding-right">
                                                                                Nombre
                                                                            </label>
                                                                            <div class="col-sm-10">
                                                                                <input type="text" name="txtNomTc" class="form-control" placeholder="Ingresar nombre Tipo de Conductor">
                                                                            </div>
                                                                        </div>
                                                                        <button type="submit" name="btnGuardarTc" class="btn btn-success">
                                                                            <i class="fa fa-save"></i>
                                                                            Registrar
                                                                        </button>
                                                                        <br><br>
                                                                        <div>
                                                                            <%=(request.getAttribute("mensaje") != null? request.getAttribute("mensaje"):"")%>
                                                                        </div>
                                                                    </form>

                                                                </div>

                                                                        <div class="modal-footer no-margin-top">

                                                                                <ul class="pagination pull-right no-margin">
                                                                                        <li class="prev disabled">
                                                                                                <a href="#">
                                                                                                        <i class="ace-icon fa fa-angle-double-left"></i>
                                                                                                </a>
                                                                                        </li>

                                                                                        <li class="active">
                                                                                                <a href="#">1</a>
                                                                                        </li>

                                                                                        <li>
                                                                                                <a href="#">2</a>
                                                                                        </li>

                                                                                        <li>
                                                                                                <a href="#">3</a>
                                                                                        </li>

                                                                                        <li class="next">
                                                                                                <a href="#">
                                                                                                        <i class="ace-icon fa fa-angle-double-right"></i>
                                                                                                </a>
                                                                                        </li>
                                                                                </ul>
                                                                        </div>
                                                                </div><!-- /.modal-content -->
                                                        </div><!-- /.modal-dialog -->
                                                </div>

                                                <!-- PAGE CONTENT ENDS -->
                                        </div><!-- /.col -->
                                </div><!-- /.row -->
                        </div><!-- /.page-content -->
                </div>
        </div><!-- /.main-content -->

    <jsp:include page="./modulos/footer.jsp"></jsp:include>

</body>
</html>

<jsp:include page="./modulos/scripts.jsp"></jsp:include>