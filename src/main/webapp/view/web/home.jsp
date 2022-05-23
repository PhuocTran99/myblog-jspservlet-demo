<%@ page import="java.util.List" %>
<%@ page import="com.blog.model.BlogModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Sunday</title>
<%--    <meta charset="utf-8"/>--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>--%>
<%--    <meta name="description" content=""/>--%>
<%--    <meta name="author" content=""/>--%>
<%--    <!-- Favicon-->--%>
<%--    <link rel="icon" type="image/x-icon" href="<c:url value="/templates/web/assets/favicon.ico"/>"/>--%>
<%--    <!-- Core theme CSS (includes Bootstrap)-->--%>
<%--    <link href="<c:url value="/templates/web/css/styles.css"/>" rel="stylesheet"/>--%>
<%--    <!-- Dev define -->--%>
<%--    <link rel="stylesheet" href="<c:url value="/templates/web/css/bonus.css"/>">--%>
<%--    <link rel="stylesheet" href="<c:url value="/templates/web/assets/fonts/fontawesome-free-5.15.4/css/all.min.css"/>">--%>

</head>
<body>

    <!-- Page header with logo and tagline-->
    <header class="py-5 bg-linear1 border-bottom mb-4">
        <div class="container margin-top-58px">
            <div class="text-center my-5">
                <h1 class="fw-bolder">Welcome to Phuoc Tran's blog!</h1>
                <p class="lead mb-0">A journey of a thousand miles begins with a single step.</p>
            </div>
        </div>
    </header>

    <!-- Page content-->
    <div class="container">
        <div style="justify-content: space-evenly" class="row">
            <!-- Blog entries-->
            <div class="col-lg-6">
                <!-- Featured blog post-->

<%--                <div class="card mb-4">--%>
<%--                    <!-- Thumbnail -->--%>
<%--                    <a href="<c:url value="/blog-post"/>"><img class="card-img-top" src="<c:url value="/templates/web/assets/pic/featured_post.jpg"/>" alt="..." /></a>--%>
<%--                    <div class="card-body">--%>
<%--                        <!-- Created Date -->--%>
<%--                        <div class="small text-muted">January 1, 2021</div>--%>
<%--                        <!-- Title -->--%>
<%--                        <h2 class="card-title">Đà Lạt mộng mơ 2021</h2>--%>
<%--                        <!-- Short Description -->--%>
<%--                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>--%>
<%--                        <a class="btn btn-primary" href="<c:url value="/blog-post"/>">Read more →</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <c:forEach var="item" items="${listmodel}">
                    <c:if test="${item.id == 60}">
                        <div class="card mb-4">
                            <!-- Thumbnail -->
                            <a href="<c:url value="/blog-post?id=${item.id}"/>"><img class="card-img-top" src="<c:url value="/templates/web/assets/pic/featured_post.jpg"/>" alt="..." /></a>
                            <div class="card-body">
                                <!-- Created Date -->
                                <div class="small text-muted">${item.createdDate}</div>
                                <!-- Title -->
                                <h2 class="card-title">${item.title}</h2>
                                <!-- Short Description -->
                                <p class="card-text">${item.shortDescription}</p>
                                <a class="btn btn-primary" href="<c:url value="/blog-post?id=${item.id}"/>">Read more →</a>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>

                <!-- Nested row for non-featured blog posts-->
                <div class="row">
<%--                    <div class="col-lg-6">--%>
<%--                        <!-- Blog post-->--%>

<%--                        <div class="card mb-4">--%>
<%--                            <a href="#"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>--%>
<%--                            <div class="card-body">--%>
<%--                                <div class="small text-muted">January 1, 2021</div>--%>
<%--                                <h2 class="card-title h4">Post Title</h2>--%>
<%--                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla.</p>--%>
<%--                                <a class="btn btn-primary" href="#">Read more →</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- Blog post-->--%>
<%--                        <div class="card mb-4">--%>
<%--                            <a href="#"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>--%>
<%--                            <div class="card-body">--%>
<%--                                <div class="small text-muted">January 1, 2021</div>--%>
<%--                                <h2 class="card-title h4">Post Title</h2>--%>
<%--                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla.</p>--%>
<%--                                <a class="btn btn-primary" href="#">Read more →</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-6">--%>
<%--                        <!-- Blog post-->--%>
<%--                        <div class="card mb-4">--%>
<%--                            <a href="#"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>--%>
<%--                            <div class="card-body">--%>
<%--                                <div class="small text-muted">January 1, 2021</div>--%>
<%--                                <h2 class="card-title h4">Post Title</h2>--%>
<%--                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla.</p>--%>
<%--                                <a class="btn btn-primary" href="#">Read more →</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- Blog post-->--%>
<%--                        <div class="card mb-4">--%>
<%--                            <a href="#"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>--%>
<%--                            <div class="card-body">--%>
<%--                                <div class="small text-muted">January 1, 2021</div>--%>
<%--                                <h2 class="card-title h4">Post Title</h2>--%>
<%--                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam.</p>--%>
<%--                                <a class="btn btn-primary" href="#">Read more →</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

                    <c:set var="count" value="${1}"/>
                    <div class="col-lg-6">
                    <c:forEach var="item" items="${listmodel}">
                            <div class="card mb-4">
                                <!-- Thumbnail -->
                                <a href="<c:url value="/blog-post?id=${item.id}"/>"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <!-- Created Date -->
                                    <div class="small text-muted">${item.createdDate}</div>
                                    <!-- Title -->
                                    <h2 class="card-title h4">${item.title}</h2>
                                    <!-- Short Description -->
                                    <p class="card-text">${item.shortDescription}</p>
                                    <a class="btn btn-primary" href="<c:url value="/blog-post?id=${item.id}"/>">Read more →</a>
                                </div>
                            </div>
                        <c:if test="${count%2 == 0}">
                            </div>
                            <div class="col-lg-6">
                        </c:if>
                        <c:set var="count" value="${count+1}"/>
                    </c:forEach>
                    </div>
                </div>
                <!-- Pagination-->
                <nav aria-label="Pagination">
                    <hr class="my-0" />
                    <ul class="pagination justify-content-center my-4">
                        <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Newer</a></li>
                        <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item disabled"><a class="page-link" href="#">...</a></li>
                        <li class="page-item"><a class="page-link" href="#">15</a></li>
                        <li class="page-item"><a class="page-link" href="#">Older</a></li>
                    </ul>
                </nav>
            </div>
            <!-- Side widgets-->
            <div class="col-lg-4">
                <!-- Search widget-->
                <div class="card mb-4">
                    <div class="card-header">Search</div>
                    <div class="card-body">
                        <div class="input-group">
                            <input class="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" />
                            <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                        </div>
                    </div>
                </div>
                <!-- Categories widget-->
                <div class="card mb-4">
                    <div class="card-header">Categories</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <ul class="list-unstyled mb-0">
                                    <c:forEach var="item" items="${categories}">
                                        <li><a href="">${item.name}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Side widget-->
                <div class="card mb-4">
                    <div class="card-header">Side Widget</div>
                    <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
