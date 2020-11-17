<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Date"%>
<c:set var="time" value="<%= new Date().getTime()%>"/>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Portal interno Cliptech">
<meta name="author" content="Igor Palma">



<!-- Bootstrap core CSS-->
<link href="vendor/bootstrap/css/bootstrap.min.css?time=${time}" rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css?time=${time}" rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css?time=${time}" rel="stylesheet">

<link href="vendor/bootstrap-select/dist/css/bootstrap-select.css?time=${time}" rel="stylesheet">

<!-- File-input core CSS-->
<link href="vendor/bootstrap-fileinput/css/fileinput.css?time=${time}" media="all" rel="stylesheet" type="text/css"/>
<link href="vendor/bootstrap-fileinput/themes/explorer-fas/theme.css?time=${time}" media="all" rel="stylesheet" type="text/css"/>

<!-- Custom styles for this template-->
<link href="css/sb-admin.css?time=${time}" rel="stylesheet">



