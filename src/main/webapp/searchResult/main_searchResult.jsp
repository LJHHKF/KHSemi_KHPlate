<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    
        <style>
            *{box-sizing:border-box; padding:0px;}
            
            .header{height:140px;}
            .container{margin-left:0; margin-right:0; max-width:1920px;}
            .seachBox{width:850px; height:50px; line-height:50px; position:relative; top:40px; border-radius:20px;
                     border:1px solid silver; left:265px;
            }
            .seachBar{line-height:140px;}
            #seach{width:750px; height:30px; border-radius:15px; border:none;}
            #seachBtn{width:40px; height:35px; position: relative; left:40px;; font-size:8px; padding:0px; line-height:35px;
                        background-color:white; border:1px solid silver; border-radius:10px;
            }
            .body{height:1000px; max-width:1400px; margin:auto; margin-top:100px;}
            .contents{padding:0px;}
            .contents1{height:500px; margin:0px;}
            .contents2{height:500px; margin:0px;}
            .contents1>div{height:100%;}
            .contents2>div{height:100%;}
            .sideBar{border:1px solid silver; border-radius:20px; padding:0px;}
            ul{list-style:none; margin:0px; padding:0px; width:150px; text-align:center; width:100%;}
            li{height:50px; width:100%; font-size:14px; text-align:center; margin:0px; padding:0px; line-height:50px; cursor:pointer;
            }
            li:hover{color:silver;}
            .ulTag{margin-bottom:50px;}
            .firstLi{border-bottom:1px solid silver; font-weight:bold;}
            .rightMenu>button{
                width:80px;
                height:40px; 
                font-size:13px; 
                background-color:black; 
                border:none;
                border-radius:20px;
                color:white;
                position:relative; top:48px; right:40px;
            }
        </style>
</head>
<body>
    <div class="container">

        <div class="row header" id="header">
            <div class="col-12 col-lg-2 logo">logo</div>
            <div class="col-12 col-lg-8 seachBar">
                <div class="seachBox">
                    <input type="text" id="seach">
                    <input type="button" id="seachBtn" value="검색">
                </div>
            </div>
            <div class="col-12 col-lg-2 d-flex justify-content-evenly rightMenu">
                <button id="loginBtn">로그인</button>
                <button>회원가입</button>
            </div>
        </div>
        <div class="row body">
            <div class="col-12 col-lg-2 sideBar">
                <ul class="ulTag">
                    <li class="firstLi">Menu</li>
                    <li>한식</li>
                    <li>중식</li>
                    <li>일식</li>
                    <li>양식</li>
                    <li>음료/디저트</li>
                </ul>
                <ul class="ulTag">
                    <li class="firstLi">Community</li>
                    <li>잡담 게시판</li>
                    <li>리뷰 게시판</li>
                </ul>
                <ul class="ulTag">
                    <li class="firstLi">고객센터</li>
                    <li>1:1 문의</li>
                </ul>

            </div>
            <div class="col-12 col-lg-10 contents">
                <iframe src="/searchResult/searchResult.jsp" width="100%" height="100%" scrolling="auto"></iframe>
            </div>
        </div>
    </div>
</body>
</html>