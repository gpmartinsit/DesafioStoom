
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="time" value="<%= new Date().getTime()%>"/>
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i> </a>


<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Page level plugin JavaScript-->
<script src="vendor/datatables/jquery.dataTables.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

<!-- Core plugin File-input --->
<script src="vendor/bootstrap-fileinput/js/plugins/sortable.js" type="text/javascript"></script>
<script src="vendor/bootstrap-fileinput/js/fileinput.js" type="text/javascript"></script>
<script src="vendor/bootstrap-fileinput/js/locales/pt-BR.js" type="text/javascript"></script>
<script src="vendor/bootstrap-fileinput/themes/fas/theme.js" type="text/javascript"></script>
<script src="vendor/bootstrap-fileinput/themes/explorer-fas/theme.js" type="text/javascript"></script>


<script type="text/javascript" src="vendor/bootstrap-select/dist/js/bootstrap-select.js"></script>
<script type="text/javascript" src="vendor/bootstrap-select/dist/js/i18n/defaults-pt_BR.min.js"></script>

<script type="text/javascript" src="vendor/jquery-redirect/jquery.redirect.js"></script>
<script type="text/javascript" src="vendor/jquery-mask/dist/jquery.mask.min.js"></script>
<script src="vendor/bootbox/bootbox.min.js"></script>
<script src="vendor/bootbox/bootbox.locales.min.js"></script>

<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/funcoes.js?s=${time}"></script>
<script src="js/sb-admin.js?s=${time}"></script>