<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>  
<head>  
    <title>책 목록</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        form {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

        form input[type="text"] {
            width: 200px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        form input[type="submit"] {
            padding: 10px 15px;
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 10px;
        }

        form input[type="submit"]:hover {
            background-color: #0056b3;
        }

        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table thead {
            background-color: #007bff;
            color: white;
        }

        table th, table td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        table tr:hover {
            background-color: #ddd;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        p {
            text-align: center;
            margin-top: 20px;
        }

        p a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border-radius: 4px;
            text-decoration: none;
        }

        p a:hover {
            background-color: #218838;
        }
    </style>
</head>  
<body>  
    <h1>책 목록</h1>  
    <p>  
        <form>  
            <input type="text" placeholder="검색" name="keyword" value="${keyword}" />  
            <input type="submit" value="검색" />  
        </form>  
    </p>  
    <table>  
        <thead>  
            <tr>  
                <td>제목</td>  
                <td>카테고리</td>  
                <td>가격</td>  
            </tr>  
        </thead>  
        <tbody>  
            <c:forEach var="row" items="${data}">  
                <tr>  
                    <td>  
                        <a href="detail?bookId=${row.book_id}">  
                            ${row.title}  
                        </a>  
                    </td>  
                    <td>${row.category}</td>  
                    <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${row.price}" /></td>  
                </tr>  
            </c:forEach>  
        </tbody>  
    </table>  
    <p>  
        <a href="create">생성</a>  
    </p>  
</body>  
</html>
