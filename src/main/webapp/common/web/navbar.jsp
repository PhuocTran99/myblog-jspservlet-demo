<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../taglib.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a href="<c:url value="/blog-home"/>">
                <img class="logo" src="https://cdn-icons-png.flaticon.com/256/4359/4359771.png" alt="logo"/>
            </a>
            <h1 class="navbar-brand">Ngày chủ nhật của tôi</h1>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/blog-home"/>">
                            <i class="fas fa-home"></i>
                            HOME
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">
                            <i class="fas fa-mug-hot"></i>
                            MORNIN'COFFEE
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">
                            <i class="fas fa-address-card"></i>
                            ABOUT ME
                        </a>
                    </li>
                    <li class="nav-item">
                        <c:choose>
                            <c:when test="${sessionScope.USERMODEL != null}">
                                <a class="nav-link" href="<c:url value="/blog-home?action=logout"/>">
                                    <i class="fas fa-sign-in-alt"></i>
                                    LOGOUT
                                </a>
                            </c:when>
                            <c:otherwise>
                                <a class="nav-link" href="<c:url value="/login"/>">
                                    <i class="fas fa-sign-in-alt"></i>
                                    LOGIN
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                    <c:if test="${sessionScope.USERMODEL != null}">
                        <h3 class="navbar-brand">Hi, ${sessionScope.USERMODEL.userName}!</h3>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
