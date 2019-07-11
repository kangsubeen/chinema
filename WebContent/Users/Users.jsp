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
	<h2>회원관리</h2>
<form id ="formsearch" class="form-inline">
	<div class="form-group">
		<label for="sel">구분:</label>
		<select class="form-control" id="sel">
			<option>전체</option>
			<option>번호</option>
			<option>이름</option>
			<option>성별</option>
			<option>생년월일</option>
			<option>주소</option>
			<option>핸드폰</option>
			<option>이메일</option>
			<option>포인트</option>
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
			<th>번호</th>
			<th>이름</th>
			<th>성별</th>
			<th>생년월일</th>
			<th>주소</th>
			<th>핸드폰</th>
			<th>이메일</th>
			<th>포인트</th>
		</tr>
		<tr>
			<td>
			<div class="radio-inline">
			<label><input type="radio" name="optradio" value="1">1</label>
			</div></td>
			<td>김병곤</td>
			<td>남</td>
			<td>1990...</td>
			<td>서울시...</td>
			<td>010-...</td>
			<td>a@d</td>
			<td>1000</td>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="2">2</label>
			</div></td>
			<td>김변곤</td>
			<td>녀</td>
			<td>1990...</td>
			<td>서울시...</td>
			<td>010-...</td>
			<td>a@d</td>
			<td>1000</td>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="3">3</label>
			</div></td>
			<td>김반곤</td>
			<td>남</td>
			<td>1990...</td>
			<td>서울시...</td>
			<td>010-...</td>
			<td>a@d</td>
			<td>1000</td>
		</tr>	
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="4">4</label>
			</div></td>
			<td>김본곤</td>
			<td>녀</td>
			<td>1990...</td>
			<td>서울시...</td>
			<td>010-...</td>
			<td>a@d</td>
			<td>1000</td>
		</tr>	
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="5">5</label>
			</div></td>
			<td>김분곤</td>
			<td>남</td>
			<td>1990...</td>
			<td>서울시...</td>
			<td>010-...</td>
			<td>a@d</td>
			<td>1000</td>
		</tr>
	</table>
</tbody>
</div>
</body>