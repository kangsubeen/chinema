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
	<h2>통계 -영화별</h2>
<form id ="formsearch" class="form-inline">
		<div class="form-group">
			<label for="sel">영화 &nbsp;</label>
			<select class="form-control" id="sel">
				<option>전체</option>
				<option>앤트맨</option>
				<option>스파이더맨</option>
				<option>배트맨</option>
				<option>수퍼맨</option>
				<option>토르</option>
				<option>헐크</option>
				<option>타노스</option>
				<option>아이언맨</option>
				<option>캡틴아메리카</option>
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
		['구분', '', '예매율'], // 항목 정의
		['앤트맨', 0, 30], // 항목, 값 (값은 숫자로 입력하면 그래프로 생성됨)
		['스파이더맨', 0, 25],
		['배트맨', 0, 35],
		['수퍼맨', 0, 45],
		['토르', 0, 10],
		['헐크', 0, 16], 
		['타노스', 0, 52],
		['아이언맨', 0, 30],
		['캡틴아메리카', 0, 8]
	]);

	// 그래프 옵션
	var options = {
		title : '영화별 예매율', // 제목
		width : 1240, // 가로 px
		height : 400, // 세로 px
		bar : {
			groupWidth : '100%' // 그래프 너비 설정 %
		},
		legend : {
			position : 'none' // 항목 표시 여부 (현재 설정은 안함)
		}
	};

	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	chart.draw(data, options);
}

</script>


<table id="table" class="table table-hover">
	<tr class="info">
		<th>구분</th>
		<th>앤트맨</th>
		<th>스파이더맨</th>
		<th>배트맨</th>
		<th>수퍼맨</th>
		<th>토르</th>
		<th>헐크</th>
		<th>타노스</th>
		<th>아이언맨</th>
		<th>캡틴아메리카</th>
		<th>전체</th>
	</tr>
	<tr>
		<th class="danger">예매율</th>
		<td>30</td>
		<td>52</td>
		<td>30</td>
		<td>15</td>
		<td>3</td>
		<td>15</td>
		<td>56</td>
		<td>12</td>
		<td>5</td>
		<td>723</td>
	<tr>
</table>
</tbody>
</div>
</body>