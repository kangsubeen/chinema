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
	<h2>통계 -지역</h2>
<form id ="formsearch" class="form-inline">
		<div class="form-group">
			<label for="sel">지역 &nbsp;</label>
			<select class="form-control" id="sel">
				<option>전체</option>
				<option>서울특별시</option>
				<option>부산광역시</option>
				<option>대구광역시</option>
				<option>인천광역시</option>
				<option>광주광역시</option>
				<option>대전광역시</option>
				<option>울산광역시</option>
				<option>세종특별자치시</option>
				<option>강원도</option>
				<option>경기도</option>
				<option>경상남도</option>
				<option>경상북도</option>
				<option>전라남도</option>
				<option>전라북도</option>
				<option>제주특별자치도</option>
				<option>충청남도</option>
				<option>충청북도</option>	
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
		['서울', 4], // 항목, 값 (값은 숫자로 입력하면 그래프로 생성됨)
		['대전', 6],
		['대구', 8],
		['부산', 10],
		['제주', 2],
		['강원', 4], 
		['인천', 6],
		['마산', 8],
		['천안', 10],
		['창원', 2]
	]);

	// 그래프 옵션
	var options = {
		title : '지역별 예매율', // 제목
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
		<th>서울</th>
		<th>대전</th>
		<th>대전</th>
		<th>서울</th>
		<th>대전</th>
		<th>대전</th>
		<th>서울</th>
		<th>대전</th>
		<th>대전</th>
		<th>전체</th>
	</tr>
	<tr>
		<th class="danger">예매율</th>
		<td>35</td>
		<td>65</td>
		<td>35</td>
		<td>65</td>
		<td>35</td>
		<td>65</td>
		<td>35</td>
		<td>65</td>
		<td>35</td>
		<td>723</td>
	<tr>
</table>
</tbody>
</div>
</body>