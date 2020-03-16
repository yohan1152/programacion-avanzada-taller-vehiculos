<%-- 
    Document   : registrarVehiculo
    Created on : 11/03/2020, 08:35:26 PM
    Author     : yohan.puerta
--%>

<%@page import="modelos.TipoVehiculo"%>
<%@page import="dao.tipoVehiculoDAO"%>
<%@page import="modelos.TipoConductor"%>
<%@page import="java.util.List"%>
<%@page import="dao.tipoConductorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Registrar Vehículos</title>
    <meta name="description" content="Página donde se van a egistrar todos los vehículos" />
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
                                                                        Registrar Vehículo
                                                                </div>

                                                                <!-- div.table-responsive -->

                                                                <!-- div.dataTables_borderWrap -->
                                                                <div>

                                                                    <form action="vehiculoControlador" method="POST">
                                                                        <div class="form-group">
                                                                            <label class="col-sm-2 control-label no-padding-right">
                                                                                Placa
                                                                            </label>
                                                                            <div class="col-sm-10">
                                                                                <input type="text" name="txtPlacaVeh" class="form-control" maxlength="6" placeholder="Ingresar Placa del Vehículo sin espacios">
                                                                            </div>
                                                                        </div>
                                                                        <br><br><br>
                                                                        <div class="form-group">
                                                                            <label class="col-sm-2 control-label no-padding-right">
                                                                                Marca
                                                                            </label>
                                                                            <div class="col-sm-10">
                                                                                <input type="text" name="txtMarcaVeh" class="form-control" placeholder="Ingresar Marca del Vehículo">
                                                                            </div>
                                                                        </div>
                                                                        <br><br>
                                                                        <div class="form-group">
                                                                            <label class="col-sm-2 control-label no-padding-right">
                                                                                Modelo
                                                                            </label>
                                                                            <div class="col-sm-10">
                                                                                <input type="text" name="txtModeloVeh" class="form-control" placeholder="Ingresar Modelo del Vehículo">
                                                                            </div>
                                                                        </div>
                                                                        <br><br>
                                                                        <div class="form-group">
                                                                            <label class="col-sm-2 control-label no-padding-right">
                                                                                Matricula
                                                                            </label>
                                                                            <div class="col-sm-10">
                                                                                <input type="text" name="txtMatriculaVeh" class="form-control" placeholder="Ingresar Matricula del Vehículo">
                                                                            </div>
                                                                        </div>
                                                                        <br><br>
                                                                        <div class="form-group">
                                                                            <label class="col-sm-2 control-label no-padding-right">
                                                                                Año
                                                                            </label>
                                                                            <div class="col-sm-10">
                                                                                <input type="text" name="txtAnoVeh" class="form-control" maxlength="4" placeholder="Ingresar Año del Vehículo">
                                                                            </div>
                                                                        </div>
                                                                        <br><br>
                                                                        <div class="form-group">
                                                                            <label class="col-sm-2 control-label no-padding-right">
                                                                                Tipo Vehículo
                                                                            </label>
                                                                            <div class="col-sm-10">
                                                                                <select name="txtTipoVeh" class="form-control" required>
                                                                                    <%
                                                                                        tipoVehiculoDAO tipoVehiDAO = new tipoVehiculoDAO();
                                                                                        List<TipoVehiculo> listTipoVehi = tipoVehiDAO.listTipoVehiculos();

                                                                                        for(TipoVehiculo tipoVehi : listTipoVehi){
                                                                                    %>
                                                                                    <option value="<%= tipoVehi.getIdTv()%>"><%= tipoVehi.getNomTv()%></option>
                                                                                    <% } %>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <br><br>
                                                                        <button type="submit" name="btnGuardarVeh" class="btn btn-success">
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