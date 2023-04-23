<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Kakao 지도 시작하기</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&family=Roboto&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="allstore_inquire.css" />
</head>

<body>
    <div class=container>
        <div class="store_list">
            <div class="search_layout">
                <div class="seachBox">
                    <input type="text" id="seach">
                    <input type="button" id="seachBtn" value="검색">
                </div>
            </div>
            <div class="restaurant_list_layout">
                <ul class="restaurant_list">
                    <li class="restaurant">
                        <div class="img_layout">
                            <img src="restaurant_img1.jpg">
                        </div>
                        <div class="info_layout">
                            <div class="info_layout_left">
                                <p class="restaurant_info restaurant_name">장어집 123</p>
                                <p class="restaurant_info restaurant_address">중구 을지로 103-1 무슨빌딩 2층</p>
                            </div>
                            <div class="info_layout_right">
                                <div class="restaurant_info restaurant_score">
                                    <ul class="stars">
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                    </ul>
                                </div>
                                <p class="restaurant_info restaurant_category">#한식 #일식</p>
                            </div>
                        </div>
                    </li>
                    <li class="restaurant">
                        <div class="img_layout">
                            <img src="restaurant_img1.jpg">
                        </div>
                        <div class="info_layout">
                            <div class="info_layout_left">
                                <p class="restaurant_info restaurant_name">장어집 123</p>
                                <p class="restaurant_info restaurant_address">중구 을지로 103-1 무슨빌딩 2층</p>
                            </div>
                            <div class="info_layout_right">
                                <div class="restaurant_info restaurant_score">
                                    <ul class="stars">
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                    </ul>
                                </div>
                                <p class="restaurant_info restaurant_category">#한식 #일식</p>
                            </div>
                        </div>
                    </li>
                    <li class="restaurant">
                        <div class="img_layout">
                            <img src="restaurant_img1.jpg">
                        </div>
                        <div class="info_layout">
                            <div class="info_layout_left">
                                <p class="restaurant_info restaurant_name">장어집 123</p>
                                <p class="restaurant_info restaurant_address">중구 을지로 103-1 무슨빌딩 2층</p>
                            </div>
                            <div class="info_layout_right">
                                <div class="restaurant_info restaurant_score">
                                    <ul class="stars">
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                    </ul>
                                </div>
                                <p class="restaurant_info restaurant_category">#한식 #일식</p>
                            </div>
                        </div>
                    </li>
                    <li class="restaurant">
                        <div class="img_layout">
                            <img src="restaurant_img1.jpg">
                        </div>
                        <div class="info_layout">
                            <div class="info_layout_left">
                                <p class="restaurant_info restaurant_name">장어집 123</p>
                                <p class="restaurant_info restaurant_address">중구 을지로 103-1 무슨빌딩 2층</p>
                            </div>
                            <div class="info_layout_right">
                                <div class="restaurant_info restaurant_score">
                                    <ul class="stars">
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                    </ul>
                                </div>
                                <p class="restaurant_info restaurant_category">#한식 #일식</p>
                            </div>
                        </div>
                    </li>
                    <li class="restaurant">
                        <div class="img_layout">
                            <img src="restaurant_img1.jpg">
                        </div>
                        <div class="info_layout">
                            <div class="info_layout_left">
                                <p class="restaurant_info restaurant_name">장어집 123</p>
                                <p class="restaurant_info restaurant_address">중구 을지로 103-1 무슨빌딩 2층</p>
                            </div>
                            <div class="info_layout_right">
                                <div class="restaurant_info restaurant_score">
                                    <ul class="stars">
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                        <a class="stars__link"><i class="stars__icon fas fa-star"></i></a>
                                    </ul>
                                </div>
                                <p class="restaurant_info restaurant_category">#한식 #일식</p>
                            </div>
                        </div>
                    </li>
                </ul>

                <div class="navigator">
                    <ul class="navigator_list">
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <button class="navigator_direction_btn"><i class="fa-solid fa-angle-left"></i></button>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">1</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">2</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">3</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">4</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">5</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">6</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">7</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">8</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">9</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <a class="item" href="/searchResult.html">10</a>
                            </div>
                        </li>
                        <li class="navigator_list_item">
                            <div class=navigator_list_item_btn_layout>
                                <button class="navigator_direction_btn"><i class="fa-solid fa-angle-right"></i></button>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>

        </div>
        <div id="map" style="width:1400px; height:929px"></div>
    </div>

    <!-- 별점 등록 Script -->
    <script>
        let stars = document.querySelectorAll('.stars__link');
        let phrase = document.querySelector('.stars-phrase');

        /* using a variation of Chris Ferdinandi's get-siblings.js script (https://gist.github.com/cferdinandi/6203237)  */
        var getNextSiblings = function (elem) {
            var siblings = [];
            var sibling = elem;
            for (; sibling; sibling = sibling.nextElementSibling)
                siblings.push(sibling);
            return siblings;
        }

        var getPrevSiblings = function (elem) {
            var siblings = [];
            var sibling = elem;
            for (; sibling; sibling = sibling.previousElementSibling)
                siblings.push(sibling);
            console.log(siblings);
            return siblings;
        }

        stars.forEach((el, idx) => {
            el.addEventListener('click', (e) => {
                let nextSibs = getNextSiblings(el);
                nextSibs.forEach((sib) => {
                    sib.children[0].classList.add('js-clear');
                    sib.children[0].classList.remove('js-fill');
                });
                let prevSibs = getPrevSiblings(el);
                prevSibs.forEach((sib) => {
                    sib.children[0].classList.add('js-fill');
                });
            });
        });

    </script>


    <!-- 지도 Script -->
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2504febed8c67836e8db1a31bda054e9"></script>
    <script>
        var container = document.getElementById('map');
        var options = {
            center: new kakao.maps.LatLng(37.567917, 126.983043),
            level: 1
        };

        var map = new kakao.maps.Map(container, options);

        // 지도를 클릭한 위치에 표출할 마커입니다
        var marker = new kakao.maps.Marker({
            // 지도 중심좌표에 마커를 생성합니다 
            position: map.getCenter()
        });
        // 지도에 마커를 표시합니다
        marker.setMap(map);

        // 지도에 클릭 이벤트를 등록합니다
        // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
        kakao.maps.event.addListener(map, 'click', function (mouseEvent) {

            // 클릭한 위도, 경도 정보를 가져옵니다 
            var latlng = mouseEvent.latLng;

            // 마커 위치를 클릭한 위치로 옮깁니다
            marker.setPosition(latlng);

            var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
            message += '경도는 ' + latlng.getLng() + ' 입니다';

            var resultDiv = document.getElementById('x');
            resultDiv.innerHTML = message;
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        // 마커가 드래그 가능하도록 설정합니다 
        marker.setDraggable(true);
        // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
        // marker.setMap(null);    
    </script>


</body>

</html>