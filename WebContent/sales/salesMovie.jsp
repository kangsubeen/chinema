<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../main.html"/>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
#formsearch{
	float: right;
}
#table{
	width : 1240;
	margin-top : 30px;
}

th, td{
	text-align : center;
}

#chart_div{
	float: left;
}
</style>
</head>
<body>
<div class="container">
<br>
	<h2>매출 -영화별</h2>
<form id ="formsearch" class="form-inline">
		<div class="form-group">
			<label for="sel">영화명 &nbsp;</label>
			<select class="form-control" id="sel">
				<option>전체</option>
				<option>앤트맨</option>
				<option>슈퍼맨</option>
				<option>배트맨</option>
				<option>아이언맨</option>
				<option>토르</option>
				<option>헐크</option>
			</select>
		</div>
		<div class="form-group has-success has-feedback">
			<label for="focusedInput">기간 &nbsp;</label>
			<input class="form-control" id="focusedInput" type="date">
			<span class="glyphicon glyphicon-ok form-control-feedback"></span>
		</div>
		<div class="form-group">
			<p> ~ <p>
		</div>
		<div class="form-group has-success has-feedback">
			<label for="inputSuccess2"></label>
			<input type="date" class="form-control" id="inputSuccess2">
			<span class="glyphicon glyphicon-ok form-control-feedback"></span>
		</div>
		<div id="search" class="form-group">
			<button type="submit" id="search2" class="btn btn-success">검색</button>
		</div>
</form>
<tbody>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
	// 차트를 사용하기 위한 준비입니다.
	google.charts.load('current', {packages:['corechart']});
</script>

<div id="chart_div"></div><!-- 여기에 차트가 생성됩니다. -->

<script>
google.charts.setOnLoadCallback(drawChart);

function drawChart() {

	// 차트 데이터 설정
	var data = google.visualization.arrayToDataTable([
		['구분', '매출'], // 항목 정의
		['앤트맨', 100], // 항목, 값 (값은 숫자로 입력하면 그래프로 생성됨)
		['슈퍼맨', 150],
		['배트맨', 130],
		['아이언맨', 80],
		['토르', 250],
		['헐크', 250]
	]);

	// 그래프 옵션
	var options = {
		title : '극장별 매출', // 제목
		width : 1240, // 가로 px
		height : 400, // 세로 px
		bar : {
			groupWidth : '30%' // 그래프 너비 설정 %
		},
		legend : {
			position : 'none' // 항목 표시 여부 (현재 설정은 안함)
		}
	};

	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	chart.draw(data, options);
}

</script>

<p>(단위: 만원)</p>
<table id="table" class="table table-hover">
	<tr class="info">
		<th>구분</th>
		<th>앤트맨</th>
		<th>슈퍼맨</th>
		<th>배트맨</th>
		<th>아이언맨</th>
		<th>토르</th>
		<th>헐크</th>
		<th>전체</th>
	</tr>
	<tr>
		<th class="danger">매출</th>
		<td>100</td>
		<td>150</td>
		<td>80</td>
		<td>100</td>
		<td>120</td>
		<td>750</td>
		<td>1,350</td>
	<tr>
</table>
</tbody>
</div>
</body>