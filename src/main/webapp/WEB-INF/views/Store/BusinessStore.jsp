<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/Store_main.css?after">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/map.css?after">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
	crossorigin="anonymous"></script>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
	integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css"
	integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
* {
	margin: 0;
	padding: 0;
}
#wrap {
	width: 1400px;
	margin: 0 auto;
}
.contain {
	width: 100%;
	height: 127px;
	float: center -webkit-font-smoothing: antialiased;
	box-sizing: border-box;
}
aside {
	float: left;
	width: 60%;
	height: 700px;
}
line {
	float: left;
	width: 5%;
}
section {
	float: right;
	width: 35%;
	height: 700px;
}
/* ?????? ?????? 0 ~ 1540px */
@media ( max-width : 1660px) {
	#wrap {
		width: 100%;
	}
}
/* ?????? ?????? 0 ~ 480px */
@media ( max-width : 480px) {
	#wrap {
		width: 100%;
	}
	header {
		height: 300px;
	}
	aside {
		float: none;
		width: 100%;
		height: 1400px;
	}
	section {
		float: none;
		width: 100%;
		height: 1400px;
	}
}
@media ( min-width :1024px) {
	.flexgrid.columns-news li {
		width: 23%;
	}
}
/*?????? ??????*/
.search {
	position: relative;
	width: 532px;
	margin: 1 auto;
}
.d1 {
	background: #A3D0C3;
}
.d1 input {
	width: 100%;
	height: 42px;
	padding-left: 10px;
	border: 2px solid #7BA7AB;
	border-radius: 5px;
	outline: none;
	background: #F9F0DA;
	color: #9E9C9C;
	box-sizing: border-box;
}
.d1 button {
	position: absolute;
	top: 0;
	right: 0px;
	width: 42px;
	height: 42px;
	border: none;
	background: #7BA7AB;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
}
.d1 button:before {
	content: "\f002";
	font-family: FontAwesome;
	font-size: 16px;
	color: #F9F0DA;
}
.card-box {
	padding-bottom: 70px;
	display: block;
	width: 100%;
}
.card-box>ul::before {
	float: center;
	content: "?????? ?????????";
	font-size: 25px;
	font-weight: bold;
	padding-left: 205px;
	top: 10px;
}
.card-box>ul {
	text-align: left;
	display: block;
	padding: 0 10px;
}
.card-box>ul>li {
	display: block;
	width: 100%;
	padding: 10px;
}
/*??????*/
@media ( min-width : 770px) {
	.card-box {
		padding-bottom: 70px;
		display: block;
	}
	.card-box>ul {
		display: block;
		margin: 0 -10px;
	}
	.card-box>ul>li {
		width: 100%;
		padding: 10px;
	}
}
.card-box>ul>li>a {
	position: relative;
	display: block;
	overflow: hidden;
	border-radius: 10px;
	cursor: pointer;
}
.card-box>ul>li>a>img {
	width: 100%;
	height: auto;
	border-radius: 6px;
}
/*?????? ?????????*/
.card-box>ul>li {
	text-align: left;
}
.card-box>ul>li .text {
	position: absolute;
	bottom: 20px;
	left: 20px;
	z-index: 1;
	color: #fff;
	font-size: 30px;
	font-weight: bold;
	line-height: normal;
}
.overlay_info .address {
	font-size: 12px;
	color: #333;
	position: absolute;
	left: 14px;
	right: 14px;
	top: 13px;
	white-space: normal
}
<!--
????????? -->.page {
	text-align: center;

	width: 50%;
}
.pagination {
	list-style: none;
	display: inline-block;
	padding: 0;
	margin-top: 20px;
}


.pagination modals {

	text-align: center;
}

.pagination li {
	display: inline;
	text-align: center;
}
.pagination a {
	float: left;
	display: block;
	font-size: 24px;
	text-decoration: none;
	padding: 5px 12px;
	color: #96a0ad;
	line-height: 1.5;
}
.first {
	margin-right: 15px;
}
.last {
	margin-left: 15px;
}
.first:hover, .last:hover, .left:hover, .right:hover {
	color: #2e9cdf;
}
.pagination a.active {
	cursor: default;
	color: #ffffff;
}
.pagination a:active {
	outline: none;
}
.modals .num {
	margin-left: 10px;
	padding: 0;
	width: 30px;
	height: 30px;
	line-height: 30px;
	-moz-border-radius: 100%;
	-webkit-border-radius: 100%;
	border-radius: 100%;
}
.modals .num:hover {
	background-color: #2e9cdf;
	color: #ffffff;
}
.modals .num.active, .modals .num:active {
	background-color: #2e9cdf;
	cursor: pointer;
}
.arrow-left {
	width: 0;
	height: 0;
	border-top: 10px solid transparent;
	border-bottom: 10px solid transparent;
	border-right: 10px solid blue;
}
.custom_zoomcontrol span {
	display: block;
	width: 36px;
	text-align: center;
	cursor: pointer;
	border-bottom: 1px solid #bfbfbf;
}
</style>
</head>
<body>
	<div id="wrap">
		<br>
		<div class="contain">
			<%@include file="../layout/header_main.jsp"%>
		</div>




		<aside>
			<!-- ?????? -->
			<main role="main">
				<br>
				<h3 style="font-size: 20px; text-align: left; margin: 10px;">You
					can make a reservation at this store.</h3>
				<hr>
				<ul class="flexgrid columns-news">
					<c:forEach var="item" items="${storeList}">
						<li>
							<!--  <span class="grid-number">??????</span>-->
							<a
							href="/Business/view?biz_seq=${item.biz_seq }&userId=${loginID}">
								<input type="hidden" id="click" value="${item.biz_seq }">
								<figure style="overflow-y: hidden; height: 150px;">
									<img
										src="${pageContext.request.contextPath}/files/${item.sysname}"
										class="d-block w-100">

								</figure>
								<div style="width: 100%;">
									<h2 style="height: 50px; text-align: center;">${item.businessNameEng}</h2>
								</div>
							</a>
						</li>
					</c:forEach>
				</ul>
			</main>
			
			<!-- ????????????!! -->
		<div style="text-align:center;">
            <navi aria-label="Page navigation example ">
            <ul
               class="pagination mt-4 justify-content-center align-items-center">
               <c:choose>
                  <c:when test="${param.page<=1}">
                     <li class="page-item  "><a class="page-link"
                        onclick="alert('?????? ???????????? ????????????.');">&lt</a></li>
                  </c:when>
                  <c:otherwise>
                     <li class="page-item"><a class="page-link"
                        href="${pageContext.request.contextPath}/Business/viewAll?&page=${param.page-1}">&lt</a></li>
                  </c:otherwise>
               </c:choose>
               <c:forEach var="i" begin="${paging.startNum}"
                  end="${paging.endPage}" step="1">
                  <li class="page-item"><a class="page-link"
                     href="${pageContext.request.contextPath}/Business/viewAll?&page=${i}">${i}</a></li>
               </c:forEach>

               <c:choose>

                  <c:when test="${param.page >= paging.endPage }">
                     <li class="page-item  "><a class="page-link"
                        onclick="alert('????????? ????????? ?????????.');">&gt</a></li>
                  </c:when>
                  <c:otherwise>
                     <li class="page-item"><a class="page-link"
                        href="${pageContext.request.contextPath}/Business/viewAll?&page=${param.page+1}">&gt</a></li>
                  </c:otherwise>
               </c:choose>
            </ul>

            </navi>
         </div>
			
			
			
			<%-- <div class="page" style="text-align: center; margin-left: 1px">
				<ul class="pagination modals">
					<c:if test="${paging.startPage != 1 }">
						<li><a class="active num"
							href="/Business/signup?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
						var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<li><a class="active num ">${p }</a>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<li><a class="num"
									href="/Business/signup?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<li><a class="num"
							href="/Business/signup?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
					</c:if>
				</ul>
			</div> --%>

		</aside>


		<!--?????????-->

		<line></line>

		<section>

			<form:form commandName="searchVO" method="get" name="listForm"
				id="listForm" action="/Business/signup">


				<div>
					<div class="map_wrap">
						<div id="map"
							style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
						<!-- ???????????? ????????? div ????????? -->
						<div class="custom_typecontrol radius_border">
							<span id="btnRoadmap" class="selected_btn"
								onclick="setMapType('roadmap')">MAP</span> <span id="btnSkyview"
								class="btn" onclick="setMapType('skyview')">SKY</span>
						</div>
						<!-- ?????? ??????, ?????? ????????? div ????????? -->
						<div class="custom_zoomcontrol radius_border">
							<span onclick="zoomIn()"><img
								src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"
								alt="??????"></span> <span onclick="zoomOut()"><img
								src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png"
								alt="??????"></span> <span><a href="/Business/signup"><img
									src="${pageContext.request.contextPath}/resources/images/reset.png"
									alt="??????"> </a></span>
						</div>
					</div>
				</div>
				<!--  <div>
				
					<input type="text" class="text" id="searchWrd" name="searchWrd"
						placeholder="???????????? ??????????????????" style="width: 300px;"
						value="${searchVO.searchWrd }" />
						
						
						 <a href="" onclick="fn_search();" class="btn-login"
						style="width: 100px; height: 40px; margin-left: 5px;"><spring:message code="btn.search" text="???????????????" /></a>
				</div>-->
				<br>
				<div class="d1">
					<div class="search">
						<input type="text" id="searchWrd" name="searchWrd"
							placeholder="I'm sorry. I'll be developing it soon."
							value="${searchVO.searchWrd }" disabled> <a href=""
							onclick="fn_search();" class="btn-login"><button
								type="button" class="pulse"></button></a>
					</div>
				</div>



			</form:form>

			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2fa91fa0473f76d7311f40d80a8f1521&libraries=services"></script>
			<script>
				var click = document.getElementById('click').value;
				var mapContainer = document.getElementById('map'), // ????????? ????????? div  
				mapOption = {
					center : new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
					level : 5, // ????????? ?????? ??????
				};
				var map = new kakao.maps.Map(mapContainer, mapOption); // ????????? ???????????????
				//???????????? ???????????? ?????? ?????? ???????????? ????????? ???????????? ???????????? ??????????????? ????????? ???????????????
				function setMapType(maptype) {
					var roadmapControl = document.getElementById('btnRoadmap');
					var skyviewControl = document.getElementById('btnSkyview');
					if (maptype === 'roadmap') {
						map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);
						roadmapControl.className = 'selected_btn';
						skyviewControl.className = 'btn';
					} else {
						map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
						skyviewControl.className = 'selected_btn';
						roadmapControl.className = 'btn';
					}
				}
				// ?????? ??????, ?????? ??????????????? ?????? ????????? ????????? ???????????? ????????? ???????????? ???????????????
				function zoomIn() {
					map.setLevel(map.getLevel() - 1);
				}
				// ?????? ??????, ?????? ??????????????? ?????? ????????? ????????? ???????????? ????????? ???????????? ???????????????
				function zoomOut() {
					map.setLevel(map.getLevel() + 1);
				}
				//??????-?????? ?????? ????????? ???????????????
				var geocoder = new kakao.maps.services.Geocoder();
				var rdnmadrList = new Array();
				var cmpnmList = new Array();
				var num = new Array();
				var rdnList = JSON.parse('${rdnmadrListJson}');
				// ??? ?????????!! 
				for ( var k in rdnList) {
					var $obj = rdnList[k];
					var aa = $obj.address1Kor;
					var bb = $obj.businessNameEng;
					var cc = $obj.biz_seq;
					var dd = $obj.address1
					rdnmadrList.push(aa);
					cmpnmList.push(bb);
					num.push(cc);
					eng.push(dd);
				}
				//?????? ????????? 
				rdnmadrList
						.forEach(function(addr, index) {
							// ????????? ????????? ???????????????
							geocoder
									.addressSearch(
											addr,
											function(result, status) {
												// ??????????????? ????????? ??????????????? 
												if (status === kakao.maps.services.Status.OK) {
													// ?????? ?????????! ?????? ??????
													var coords = new kakao.maps.LatLng(
															result[0].y,
															result[0].x);
													// ??????????????? ?????? ????????? ????????? ???????????????
													var marker = new kakao.maps.Marker(
															{
																map : map,
																position : coords,
																clickable : true
															});
													var content = '<div class="overlay_info">';
													content += "    <a><strong>"
															+ cmpnmList[index]
															+ '</strong></a>';
													content += '    <div class="desc">';
													content += '        <span class="address">'
															+ eng[index]
															+ '</span>';
													content += '    </div>';
													content += '</div>';
													// ?????????????????? ????????? ?????? ????????? ???????????????
													var infowindow = new kakao.maps.InfoWindow(
															{
																//  content: cmpnmList[index], 
																content : content,
															});
													kakao.maps.event
															.addListener(
																	marker,
																	'mouseover',
																	makeOverListener(
																			map,
																			marker,
																			infowindow));
													kakao.maps.event
															.addListener(
																	marker,
																	'mouseout',
																	makeOutListener(infowindow));
													function makeOverListener(
															map, marker,
															infowindow) {
														return function() {
															infowindow
																	.open(map,
																			marker);
														};
													}
													function makeOutListener(
															infowindow) {
														return function() {
															infowindow.close();
														};
													}
													kakao.maps.event
															.addListener(
																	marker,
																	'click',
																	function() {
																		// ?????? ?????? ?????????????????? ???????????????
																		location.href = '/Business/view?biz_seq='
																				+ num[index];
																	});
													// ????????? ????????? ??????????????? ?????? ????????? ??????????????????
													if (index == 0) {
														map.setCenter(coords);
													}
												}
											});
						});
			</script>


			<!-- ?????? ?????????!! -->

			<br> <br></br>
			<!-- 1?????? -->

			<!-- ????????????  -->
			<script>
				function random_imglink() {
					var myimages = new Array()
					/* ????????? ????????? ?????? ?????? */
					myimages[1] = "${pageContext.request.contextPath}/resources/images/1.png"
					myimages[2] = "${pageContext.request.contextPath}/resources/images/2.png"
					/* ????????? ????????? ?????? ?????? */
					var imagelinks = new Array()
					imagelinks[1] = "https://www.tripadvisor.com/Restaurants-g294197-zfn7778640-Seoul.html"
					imagelinks[2] = "https://theculturetrip.com/asia/south-korea/articles/korean-cuisine-crash-course-top-10-dishes-to-know/"
					var ry = Math.floor(Math.random() * myimages.length)
					if (ry == 0)
						ry = 1
					document
							.write('<a href=' + '"' + imagelinks[ry] + '"' + ' target=_blank><img src="' + myimages[ry] + '" border=0></a>')
				}
				random_imglink();
			</script>



			<br> <br></br>
			<!-- 2?????? -->
			<script>
				function random_imglink() {
					var myimages = new Array()
					/* ????????? ????????? ?????? ?????? */
					myimages[1] = "${pageContext.request.contextPath}/resources/images/3.png"
					myimages[2] = "${pageContext.request.contextPath}/resources/images/4.png"
					/* ????????? ????????? ?????? ?????? */
					var imagelinks = new Array()
					imagelinks[1] = "https://www.tripadvisor.com/Restaurants-g294197-zfn7778638-Seoul.html"
					imagelinks[2] = "https://www.willflyforfood.net/seoul-food-guide-25-must-eat-restaurants-in-seoul-south-korea/"
					var ry = Math.floor(Math.random() * myimages.length)
					if (ry == 0)
						ry = 1
					document
							.write('<a href=' + '"' + imagelinks[ry] + '"' + ' target=_blank><img src="' + myimages[ry] + '" border=0></a>')
				}
				random_imglink();
			</script>
			<br> <br></br>
			<!-- 3?????? -->
			<script>
				function random_imglink() {
					var myimages = new Array()
					/* ????????? ????????? ?????? ?????? */
					myimages[1] = "${pageContext.request.contextPath}/resources/images/5.png"
					myimages[2] = "${pageContext.request.contextPath}/resources/images/6.png"
					/* ????????? ????????? ?????? ?????? */
					var imagelinks = new Array()
					imagelinks[1] = "https://www.tripadvisor.com/Restaurants-g294197-zfn7778650-Seoul.html"
					imagelinks[2] = "https://www.creatrip.com/en/blog/1822/TOP-5-Busan-Pork-Rice-Soup-Restaurants"
					var ry = Math.floor(Math.random() * myimages.length)
					if (ry == 0)
						ry = 1
					document
							.write('<a href=' + '"' + imagelinks[ry] + '"' + ' target=_blank><img src="' + myimages[ry] + '" border=0></a>')
				}
				random_imglink();
			</script>






		</section>
	</div>
	<%@include file="../layout/alarm.jsp"%>
</body>
</html>