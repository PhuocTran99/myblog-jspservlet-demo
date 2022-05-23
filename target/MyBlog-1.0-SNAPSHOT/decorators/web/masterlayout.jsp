<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<html>
<head>
    <title><dec:title default="Web Page"/></title>
    <dec:head/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="<c:url value="/templates/web/assets/favicon.ico"/>"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<c:url value="/templates/web/css/styles.css"/>" rel="stylesheet"/>
    <!-- Dev define -->
    <link rel="stylesheet" href="<c:url value="/templates/web/css/bonus.css"/>">
    <link rel="stylesheet" href="<c:url value="/templates/web/assets/fonts/fontawesome-free-5.15.4/css/all.min.css"/>">

</head>
<body>
    <%@ include file="/common/web/navbar.jsp"%>

    <dec:body/>

    <%@ include file="/common/web/footer.jsp"%>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="<c:url value="/templates/web/js/scripts.js"/>"></script>
</body>
</html>
