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
	<h2>매출 -기간별</h2>
<form id ="formsearch" class="form-inline">
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
		['구분', '목표', '매출', '달성율'], // 항목 정의
		['1월', 100, 80, 80], // 항목, 값 (값은 숫자로 입력하면 그래프로 생성됨)
		['2월', 120, 90, 75],
		['3월', 140, 100, 70]
	]);

	// 그래프 옵션
	var options = {
		title : '기간별 매출', // 제목
		width : 1240, // 가로 px
		height : 400, // 세로 px
		bar : {
			groupWidth : '40%' // 그래프 너비 설정 %
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
		<th>목표</th>
		<th>매출</th>
		<th>달성율</th>
		<th>분기목표</th>
		<th>분기매출</th>
		<th>달성율</th>
		<th>전년도</th>
		<th>전년대비</th>
	</tr>
	<tr>
		<th class="danger">1월</th>
		<td>1,000</td>
		<td>900</td>
		<td>90%</td>
		<td>4,500</td>
		<td>900</td>
		<td>4.6%</td>
		<td>700</td>
		<td>110%</td>
	</tr>
	<tr>
		<th class="danger">2월</th>
		<td>1,200</td>
		<td>700</td>
		<td>60%</td>
		<td>4,500</td>
		<td>1,500</td>
		<td>28%</td>
		<td>600</td>
		<td>120%</td>
	</tr>
	<tr>
		<th class="danger">3월</th>
		<td>1,400</td>
		<td>900</td>
		<td>80%</td>
		<td>4,500</td>
		<td>2,400</td>
		<td>48%</td>
		<td>800</td>
		<td>110%</td>
	</tr>
	<tr>
		<th class="success">합계</th>
		<td>4,500</td>
		<td>2,500</td>
		<td>70%</td>
		<td>4,500</td>
		<td>2,400</td>
		<td>48%</td>
		<td>2,100</td>
		<td>110%</td>
	</tr>
</table>

</tbody>
</div>
</body>