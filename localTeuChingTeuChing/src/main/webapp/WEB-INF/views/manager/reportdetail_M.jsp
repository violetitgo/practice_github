<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Teu-Ching Teu-Ching</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=EB+Garamond:400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="http://52.78.116.59:8080/teuching/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/animate.css">

<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/magnific-popup.css">

<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/aos.css">

<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/ionicons.min.css">

<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/jquery.timepicker.css">


<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/flaticon.css">
<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/icomoon.css">
<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/style.css">
<!-- 기존꺼말고 새로갖다박은거임 -->
<link rel="stylesheet" href="http://52.78.116.59:8080/teuching/resources/css/manager/managerDetail.css">
</head>
<body>
	<%@ include file="../include/top.jsp"%>

	<div class="wrapper">
		<div class="ansbox-top">
			<div id="person" style="background-image:url(http://52.78.116.59:8080/teuching/resources/upload/profileImg/${res.tr_email}.PNG);"
				class="img rounded-circle ftco-animate mb-2 fadeInUp ftco-animated">
				<c:if test="${ res.ans_yn eq 'Y'}">
					<div id="check"
						style="text-align: right; transform: translate(-70%, -35%); color: #b91e2d; font-size: 5vw">✔</div>
				</c:if>
			</div>
				<h5>${res.report_date }
					<c:if test="${type eq 'tra' }">
						<input type="hidden" name="nick_name" value="${res.nick_name }">
						<input type="hidden" name="type" value="tra">
					</c:if>
					<c:if test="${type eq 'rev' }">
						<input type="hidden" name="trainer_name"
							value="${res.trainer_name }">
						<input type="hidden" name="type" value="rev">
					</c:if>
					<input type="hidden" name="rep_cont" value="${res.rep_cont }">
					<input type="hidden" name="report_handel"
						value="${res.report_handel }"> <input type="hidden"
						name="handel_cont" value="${res.handel_cont }"> <input
						type="hidden" name="report_date" value="${res.report_date }">
					<input type="hidden" name="ans_yn" value="${res.ans_yn }">
					<input type="hidden" name="report_idx" value="${res.report_idx }">
				</h5>
				<h2>나의 문의 내역</h2>
		</div>
		<div class="ansbox-bottom">

			<div class="col-lg-8 ftco-animate">
				<c:if test="${fn:length(file) > 0}">
				<div style="float: right">
					<p id="checkfile" onclick="checkfile();"
						style="float: right; margin-bottom: -1%; color: #2c396b; cursor: pointer">📁첨부파일</p>
					<br>
					<div id="showclose" style="text-align: right; display: none">
						<c:forEach items="${file }" var="f">
							<a
								href="http://52.78.116.59:8080/teuching/resources/
								upload/${f.rename_filename}">${f.origin_filename }</a>
							<br>
						</c:forEach>
					</div>
				</div>
				</c:if>
				<h3 class="mb-4">신고내용</h3>
				<p id="font-size">${res.rep_cont }</p>
			</div>

			<div class="col-lg-8 ftco-animate">
				<h3 class="mb-4">처리결과</h3>
				<c:if test="${res.report_handel ne ' ' }">
					<p id="font-size">${res.report_handel }</p>
				</c:if>
				<c:if test="${res.report_handel eq ' ' }">
					<p id="font-size">아직 처리결과가 작성되지 않았습니다</p>
				</c:if>
			</div>

			<div class="col-lg-8 ftco-animate">
				<h3 class="mb-4">처리내용</h3>
				<c:if test="${res.handel_cont ne ' ' }">
					<p id="font-size">${res.handel_cont }</p>
				</c:if>
				<c:if test="${res.handel_cont eq ' ' }">
					<p id="font-size">아직 처리내용이 작성되지 않았습니다</p>
				</c:if>
			</div>
			<br>
		</div>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script>
		function checkfile() {
			const showclose = document.querySelector('#showclose');
			if (showclose.style.display == 'none') {
				showclose.style.display = 'block';
			} else {
				showclose.style.display = 'none';
			}
		}
	</script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/jquery.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/popper.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/bootstrap.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/jquery.easing.1.3.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/jquery.waypoints.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/jquery.stellar.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/owl.carousel.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/aos.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/jquery.animateNumber.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/bootstrap-datepicker.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/jquery.timepicker.min.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/google-map.js"></script>
	<script src="http://52.78.116.59:8080/teuching/resources/js/main.js"></script>
</body>
</html>