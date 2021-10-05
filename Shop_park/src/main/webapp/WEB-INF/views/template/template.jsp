<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!-- 타일즈를 쓸려면 상기 내용을 입력 하여야된다. -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 타이틀 안에 tiles:insertAttribute를 적용 하면 tiles-config.xml에 있는 타이틀 내용을 가져 온다 -->
<title><tiles:insertAttribute name="title" /></title>

<!-- 태그 초기화 작업(css 위치를 링크를 통해 적어 준다. -->
<link rel="stylesheet" href="/resources/common/reset.css">

<!-- 제이쿼리 문법을 로딩 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<!-- 부트스트랩 사용을 위해 css, js를 로딩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

<style type="text/css">
body {
	line-height: 1;
	font-family: 'BMEuljiro10yearslater';
	font-size: 18px;
}

.container-fluid {
	width: 80%;
}

.row {
	background-color: aqua;
}

div {
	border: 1px solid black;
}
</style>


</head>
<body>
	<!-- container-fluid를 지정 하면 모니터 크기와 상관 없이 같은 비율로 크게 적용 된다 -->
	<div class="container-fluid">

		<!-- row는 행의 수량 -->
		<div class="row">
			<!-- col은 열의 수량 -->
			<!-- 한 행안에 열을 col을 나누면 수량만큼 균등하게 자동으로 나누어 진다. -->
			<div class="col">

				<!-- tiles-config.xml에 적용 되어 있는 위치의 파일을 가져 온다. -->
				<tiles:insertAttribute name="menu" />
				<!-- tiles-config.xml 파일 안에 있음 : <put-attribute name="menu" value="/WEB-INF/views/template/menu.jsp" /> -->
			</div>

		</div>

		<div class="row">
			<!-- 한 행은 12등분이 되어 있음 -->
			<!-- col-숫자는 12등분을 나눠 정렬 할수 있음 -->
			<div class="col-2">
				<tiles:insertAttribute name="side" />
			</div>
			<div class="col-10">
				<tiles:insertAttribute name="body" />
			</div>

		</div>


	</div>

</body>
</html>