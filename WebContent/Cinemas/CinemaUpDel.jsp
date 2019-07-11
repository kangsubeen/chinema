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

</style>
</head>
<body>
<div class="container">
<br>
	<h2>극장수정/삭제</h2>
<form id ="formsearch" class="form-inline">
	<div class="form-group">
		<label for="sel">구분:</label>
		<select class="form-control" id="sel">
			<option>전체</option>
			<option>번호</option>
			<option>극장명</option>
			<option>상영관</option>
			<option>주소</option>
			<option>번호</option>
			<option>주차규모</option>
			<option>주차주소</option>
			<option>주차번호</option>
		</select>
	</div>
	<div class="form-group">
		<label for="search"> 내용:</label>
		<input type="text" class="form-control" id="search" placeholder="내용을 입력하세요.">
	</div>
	<button type="submit" class="btn btn-default">검색</button>
</form>
<tbody>
<form>
	<table class="table table-hover">
		<tr>
			<th>번호</th>
			<th>극장명</th>
			<th>상영관</th>
			<th>주소</th>
			<th>번호</th>
			<th>주차규모</th>
			<th>주차장주소</th>
			<th>주차장전화번호</th>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="1">1</label>
			</div></td>
			<td>동두천점</td>
			<td>3</td>
			<td>서울시 동두천구...</td>
			<td>02-352-5645</td>
			<td>235</td>
			<td>서울시 동두천구...</td>
			<td>02-352-5646</td>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="2">2</label>
			</div></td>
			<td>신촌점</td>
			<td>3</td>
			<td>서울시 마포구...</td>
			<td>02-382-8955</td>
			<td>150</td>
			<td>서울시 마포구...</td>
			<td>02-382-8956</td>
		</tr>
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="3">3</label>
			</div></td>
			<td>홍대입구점</td>
			<td>2</td>
			<td>서울시 마포구...</td>
			<td>02-382-5688</td>
			<td>189</td>
			<td>서울시 마포구...</td>
			<td>02-382-5612</td>
		</tr>	
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="4">4</label>
			</div></td>
			<td>이대점</td>
			<td>3</td>
			<td>서울시 서대문구...</td>
			<td>02-456-4568</td>
			<td>352</td>
			<td>서울시 서대문구...</td>
			<td>02-456-4569</td>
		</tr>	
		<tr>
			<td><div class="radio-inline">
			<label><input type="radio" name="optradio" value="5">5</label>
			</div></td>
			<td>김포점</td>
			<td>3</td>
			<td>경기도 김포시...</td>
			<td>031-265-8794</td>
			<td>450</td>
			<td>경기도 김포시...</td>
			<td>031-265-1556</td>
		</tr>
	</table>
	<div id="adddel">
		<button type="submit" id="add" class="btn btn-success">수정</button>
		<button type="submit" id="del" class="btn btn-success">삭제</button>
	</div>
</form>
</tbody>
</div>
</body>