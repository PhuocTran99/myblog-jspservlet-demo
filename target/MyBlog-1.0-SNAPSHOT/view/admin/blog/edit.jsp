<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.blog.model.BlogModel" %>
<%@ include file="/common/taglib.jsp"%>

<c:url var="APIurl" value="/api-admin-blog"/>
<c:url var="BLOGurl" value="/admin-blog?type=list"/>

<html>
<head>
    <title>MY SUNDAY</title>
    <link rel="stylesheet" href="<c:url value="/templates/admin/css/style.css"/>">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">--%>
    <style>
        .pagination.disabled a,  .pagination.disabled a:hover,  .pagination.disabled a:focus,  .pagination.disabled span {
            color: #eee;
            background: #fff;
            cursor: default;
        }

        .pagination { float: left; }

        .pagination.disabled li.active a {
            color: #fff;
            background: #cccccc;
            border-color: #cccccc;
        }

        .paging-container select {
            float: left;
            margin: 20px 0 20px 10px;
            padding: 9px 3px;
            border-color: #ddd;
            border-radius: 4px;
        }

        #table { margin-bottom: 0; }
    </style>
    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="<c:url value="/templates/admin/js/pagination.js"/>"></script>

</head>

<body>
    <div class="container" style="margin-top: 0; padding: 0 120px">
        <form id="submitForm" enctype="multipart/form-data">
            <input type="hidden" id="blogId" name="id" value="${model.id}">
            <table id="table" style="width: 800px" class="table table-striped">
                <tr>
                    <th style="background-color: #456bd8; color: whitesmoke">Category</th>
                    <td>
                        <select name="categoryId">
                            <option>-- choose --</option>
                            <c:forEach var="item" items="${categories}">
                                <option value="${item.id}" <c:if test="${model.categoryId == item.id}">selected</c:if>>${item.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th style="background-color: #456bd8; color: whitesmoke">Title</th>
                    <td><input style="width: 100%" type="text" name="title" value="${model.title}"></td>
                </tr>
                <tr>
                    <th style="background-color: #456bd8; color: whitesmoke">Thumbnail</th>
                    <td><input style="width: 100%" type="text" name="thumbnail" value="${model.thumbnail}"></td>
                </tr>
                <tr>
                    <th style="background-color: #456bd8; color: whitesmoke">Short Description</th>
                    <td><textarea name="shortDescription" cols="75" rows="3">${model.shortDescription}</textarea></td>
                </tr>
                <tr>
                    <th style="background-color: #456bd8; color: whitesmoke">Content</th>
                    <td><textarea id="contentBlog" name="content" cols="75" rows="75">${model.content}</textarea></td>
                </tr>
            </table>
            </br>

            <input id="btnSubmitForm" type="submit" value="<c:choose><c:when test="${model.id == 0}">Create blog</c:when><c:otherwise>Update blog</c:otherwise></c:choose>">
        </form>
    </div>

    <script>
        var editor = '';
        $(document).ready(function () {
            editor = CKEDITOR.replace('contentBlog');
        });

        $('#btnSubmitForm').click(function (e) {
            e.preventDefault();
            var data = {};
            var formData = $('#submitForm').serializeArray();
            $.each(formData, function (i, v) {
               data[''+v.name+''] = v.value;
            });
            data['content'] = editor.getData();
            var id = $('#blogId').val();
            if (id == '0') {
                createBlog(data);
            } else {
                updateBlog(data);
            }
        });

        function createBlog(data) {
            $.ajax({
                url: '${APIurl}',
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                    window.location.href = '${BLOGurl}';
                },
                error: function (problem) {
                    console.log(problem);
                }
            });
        }

        function updateBlog(data) {
            $.ajax({
                url: '${APIurl}',
                type: 'PUT',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                    window.location.href = '${BLOGurl}';
                },
                error: function (problem) {
                    console.log(problem);
                }
            });
        }
    </script>
</body>
</html>
