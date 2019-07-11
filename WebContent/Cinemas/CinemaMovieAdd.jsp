<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../main.html"/>
<head>
<style>
th{
	background-color: green;
}
#formsearch{
	float: right;
}
#adddel{
	margin:20px 10px 0 1000px;
}

#sel2{
	width:150px;
}

#ex3, #ex4{
	width:350px;
}

</style>
</head>
<body>
<div class="container">
<br>
	<h2>극장 - 영화등록 - 극장 상영관별 영화선택</h2>
<form id ="formsearch" class="form-inline">
	<div class="form-group">
		<label for="sel">구분:</label>
		<select class="form-control" id="sel">
			<option>전체</option>
			<option>번호</option>
			<option>제목</option>
			<option>감독</option>
			<option>장르</option>
			<option>등급</option>
			<option>개봉일</option>
			<option>국가</option>
			<option>가격</option>
		</select>
	</div>
	<div class="form-group">
		<label for="search"> 내용:</label>
		<input type="text" class="form-control" id="search" placeholder="내용을 입력하세요.">
	</div>
	<button type="submit" class="btn btn-default">검색</button>
</form>
<br>
<br>

<hr>
<tbody>
<form class="form-inline">
	<div class="col-xs-7 form-group">
		<label for="sel2">상영관명:</label>
		<select class="form-control" id="sel2">
			<option>구분</option>
		</select>
	</div>
	<br>
	<br>
	<table class="table table-hover">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>감독</th>
			<th>장르</th>
			<th>등급</th>
			<th>개봉일</th>
			<th>국가</th>
			<th>가격</th>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="1">1</label>
			</div></td>
			<td>병곤의 하루</td>
			<td>김병곤</td>
			<td>멜로</td>
			<td>19</td>
			<td>2018.08.18</td>
			<td>KO</td>
			<td>10,000</td>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="2">2</label>
			</div></td>
			<td>병곤의 하루</td>
			<td>김병곤</td>
			<td>멜로</td>
			<td>19</td>
			<td>2018.08.18</td>
			<td>KO</td>
			<td>10,000</td>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="3">3</label>
			</div></td>
			<td>병곤의 하루</td>
			<td>김병곤</td>
			<td>멜로</td>
			<td>19</td>
			<td>2018.08.18</td>
			<td>KO</td>
			<td>10,000</td>
		</tr>	
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="4">4</label>
			</div></td>
			<td>병곤의 하루</td>
			<td>김병곤</td>
			<td>멜로</td>
			<td>19</td>
			<td>2018.08.18</td>
			<td>IN</td>
			<td>10,000</td>
		</tr>	
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="5">5</label>
			</div></td>
			<td>병곤의 하루</td>
			<td>김병곤</td>
			<td>멜로</td>
			<td>19</td>
			<td>2018.08.18</td>
			<td>JA</td>
			<td>10,000</td>
		</tr>
	</table>
	<div class="col-xs-5">
		<label for="ex3">시작시간: </label>
		<input class="form-control" id="ex3" type="time">
	</div>		
	<div class="col-xs-2">
		<p> ~ </p>
	</div>
	<div class="col-xs-5">
		<label for="ex4">종료시간: </label>
		<input class="form-control" id="ex4" type="time">
	</div>		
	<br>
	<div id="adddel">
		<button type="submit" id="add" class="btn btn-success">등록</button>
	</div>
</form>
</tbody>
</div>
</body>