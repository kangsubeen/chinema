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
	<h2>통계 -시간</h2>
<form id ="formsearch" class="form-inline">
		<div class="form-group">
			<label for="sel">시간 &nbsp;</label>
			<select class="form-control" id="sel">
				<option>전체</option>
				<option>9~10시</option>
				<option>10~11시</option>
				<option>11~12시</option>
				<option>12~13시</option>
				<option>13~14시</option>
				<option>14~15시</option>
				<option>15~16시</option>
				<option>16~17시</option>
				<option>17~18시</option>
				<option>18~19시</option>
				<option>19~20시</option>
				<option>20~21시</option>
				<option>21~22시</option>				
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
		['구분', '예매율'], // 항목 정의
		['09~10시', 3], // 항목, 값 (값은 숫자로 입력하면 그래프로 생성됨)
		['10~11시', 4],
		['11~12시', 11],
		['12~13시', 13],
		['13~14시', 20],
		['14~15시', 30], 
		['15~16시', 45],
		['16~17시', 30],
		['17~18시', 45],
		['18~19시', 64],
		['19~20시', 30],
		['20~21시', 10],
		['21~22시', 8]
	]);

	// 그래프 옵션
	var options = {
		title : '시간별 예매율', // 제목
		width : 1240, // 가로 px
		height : 400, // 세로 px
		bar : {
			groupWidth : '50%' // 그래프 너비 설정 %
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
		<th>9~10시</th>
		<th>10~11시</th>
		<th>11~12시</th>
		<th>12~13시</th>
		<th>13~14시</th>
		<th>14~15시</th>
		<th>15~16시</th>
		<th>16~17시</th>
		<th>17~18시</th>
		<th>18~19시</th>
		<th>19~20시</th>
		<th>20~21시</th>
		<th>21~22시</th>
		<th>전체</th>
	</tr>
	<tr>
		<th class="danger">예매율</th>
		<td>5</td>
		<td>10</td>
		<td>20</td>
		<td>35</td>
		<td>40</td>
		<td>35</td>
		<td>46</td>
		<td>80</td>
		<td>60</td>
		<td>70</td>
		<td>30</td>
		<td>15</td>
		<td>5</td>
		<td>723</td>
	<tr>
</table>
</tbody>
</div>
</body>