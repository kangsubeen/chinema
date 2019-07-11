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
	<h2>통계 -연령</h2>
<form id ="formsearch" class="form-inline">
		<div class="form-group">
			<label for="sel">연령 &nbsp;</label>
			<select class="form-control" id="sel">
				<option>전체</option>
				<option>10</option>
				<option>20</option>
				<option>30</option>
				<option>40</option>
				<option>50</option>
				<option>60</option>
				<option>70</option>
				<option>80</option>
				<option>90</option>
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
		['10대', 0,30], // 항목, 값 (값은 숫자로 입력하면 그래프로 생성됨)
		['20대', 0,20],
		['30대', 0,15],
		['40대', 0,10],
		['50대', 0,1],
		['60대', 0,2], 
		['70대', 0,9],
		['80대', 0,2],
		['90대', 0,8]
	]);

	// 그래프 옵션
	var options = {
		title : '연령별 예매율', // 제목
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
		<th>10대</th>
		<th>20대</th>
		<th>30대</th>
		<th>40대</th>
		<th>50대</th>
		<th>60대</th>
		<th>70대</th>
		<th>80대</th>
		<th>90대</th>
		<th>전체</th>
	</tr>
	<tr>
		<th class="danger">예매율</th>
		<td>30</td>
		<td>20</td>
		<td>10</td>
		<td>6</td>
		<td>5</td>
		<td>1</td>
		<td>2</td>
		<td>5</td>
		<td>5</td>
		<td>723</td>
	<tr>
</table>
</tbody>
</div>
</body>