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
</style>
</head>
<body>
<div class="container">
<br>
	<h2>예매관리</h2>
<form id ="formsearch" class="form-inline">
	<div class="form-group">
		<label for="sel">구분:</label>
		<select class="form-control" id="sel">
			<option>전체</option>
			<option>예매번호</option>
			<option>아이디</option>
			<option>이름</option>
			<option>영화</option>
			<option>극장</option>
			<option>상영관</option>
			<option>예매일</option>
			<option>예매시각</option>
		</select>
	</div>
	<div class="form-group">
		<label for="search"> 내용:</label>
		<input type="text" class="form-control" id="search" placeholder="내용을 입력하세요.">
	</div>
	<button type="submit" class="btn btn-default">검색</button>
</form>
<tbody>
	<table class="table table-hover">
		<tr>
			<th>예매번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>영화</th>
			<th>극장</th>
			<th>상영관</th>
			<th>예매일</th>
			<th>예매시각</th>
		</tr>
		<tr>
			<td>
			<div class="radio-inline">
			<label><input type="radio" name="optradio" value="1">201807171</label>
			</div></td>
			<td>AA123</td>
			<td>김병곤</td>
			<td>스파이더맨</td>
			<td>신촌점</td>
			<td>2</td>
			<td>2018.07.17</td>
			<td>16:12:12</td>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="2">201807182</label>
			</div></td>
			<td>jdsfkji</td>
			<td>백동철</td>
			<td>앤트맨</td>
			<td>홍대점</td>
			<td>1</td>
			<td>2018.07.18</td>
			<td>18:12:13</td>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="3">201807183</label>
			</div></td>
			<td>ajjidf123</td>
			<td>김태인</td>
			<td>어벤져스</td>
			<td>이대점</td>
			<td>3</td>
			<td>2018.07.18</td>
			<td>09:01:01</td>
		</tr>	
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="4">201807184</label>
			</div></td>
			<td>qkqanrwk123</td>
			<td>홍성윤</td>
			<td>어벤져스</td>
			<td>이대점</td>
			<td>3</td>
			<td>2018.07.18</td>
			<td>09:01:02</td>
		</tr>	
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="5">201807185</label>
			</div></td>
			<td>djskf1</td>
			<td>강수빈</td>
			<td>어벤져스</td>
			<td>이대점</td>
			<td>3</td>
			<td>2018.07.18</td>
			<td>09:01:03</td>
		</tr>
	</table>
</tbody>
</div>
</body>