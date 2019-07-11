<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../main.html"/>
<head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['구분', '비율'],
          ['', 0],
          ['', 0],
          ['', 0],
          ['회원', 65],
          ['비회원', 35]
        ]);

        var options = {
          title: '예매 회원비율 통계'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
<style>
#formsearch{
	float: right;
}

#piechart{
	float: left;
}

#table{
	float: right;
	width: 300px; 
	height: 100px;
	margin-top:200px;
}

th, td{
	text-align : center;
}
</style>
</head>
<body>
<div class="container">
<br>
	<h2>통계 -회원비율</h2>
<form id ="formsearch" class="form-inline">
		<div class="form-group has-success has-feedback">
			<label for="focusedInput">기간</label>
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
<div id="piechart" style="width: 800px; height: 500px;"></div>
<table id="table" class="table table-hover">
	<tr class="info">
		<th>구분</th>
		<th>회원</th>
		<th>비회원</th>
		<th>전체</th>
	</tr>
	<tr>
		<th class="danger">비율</th>
		<td>435</td>
		<td>215</td>
		<td>723</td>
	<tr>
</table>
</tbody>
</div>
</body>