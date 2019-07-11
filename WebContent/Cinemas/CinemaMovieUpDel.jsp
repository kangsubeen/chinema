<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../main.html"/>
<head>
<style>
#addupdel{
	margin:20px 10px 0 950px;
}
</style>
</head>
<body>
<div class="container">
<form>
<br>
	<h2>극장 - 영화등록 - 극장 상영관별 확인/수정/삭제</h2>
	<br>
	<br>
	<h3>극장명 : 김포점</h3>
	<h4><div class="checkbox">
		<label><input type="checkbox" value="">상영관 : 1</label>
	</div></h4>
	<hr>
	<h5><div class="checkbox">
		<label><input type="checkbox" value="">스파이더맨</label>
	</div></h5>
		<div class="radio-inline">
			<label><input type="radio" name="optradio">
				<button type="button" id="time1" class="btn btn-success">09:00 <br>~<br> 11:00</button>
			</label>&nbsp &nbsp &nbsp &nbsp
			<label><input type="radio" name="optradio">
				<button id="time2" class="btn btn-success">11:20 <br>~<br> 13:20</button>
			</label>&nbsp &nbsp &nbsp &nbsp
			<label><input type="radio" name="optradio">
				<button id="time3" class="btn btn-success">13:40 <br>~<br> 15:40</button>
			</label>
		</div>

	<hr>
	<h5><div class="checkbox">
		<label><input type="checkbox" value="">앤트맨</label>
	</div></h5>
		<div class="radio-inline">
			<label><input type="radio" name="optradio">
				<button type="button" id="time1" class="btn btn-success">09:00 <br>~<br> 11:00</button>
			</label>&nbsp &nbsp &nbsp &nbsp
			<label><input type="radio" name="optradio">
				<button id="time2" class="btn btn-success">11:20 <br>~<br> 13:20</button>
			</label>
		</div>
		
	<br>
	<br>
	<br>
	<hr>	
	<h4><div class="checkbox">
	<label><input type="checkbox" value="">상영관 : 2</label>
	</div></h4>
	<hr>
	<h5><div class="checkbox">
		<label><input type="checkbox" value="">스파이더맨</label>
	</div></h5>
		<div class="radio-inline">
			<label><input type="radio" name="optradio">
				<button type="button" id="time1" class="btn btn-success">09:00 <br>~<br> 11:00</button>
			</label>&nbsp &nbsp &nbsp &nbsp
			<label><input type="radio" name="optradio">
				<button id="time2" class="btn btn-success">11:20 <br>~<br> 13:20</button>
			</label>&nbsp &nbsp &nbsp &nbsp
			<label><input type="radio" name="optradio">
				<button id="time3" class="btn btn-success">13:40 <br>~<br> 15:40</button>
			</label>
		</div>
	<br>
	<br>	
	<div id="addupdel">
		<button type="submit" id="add" class="btn btn-success">확인</button>
		<button type="submit" id="up" class="btn btn-success">수정</button>
		<button type="submit" id="del" class="btn btn-success">삭제</button>
	</div>
</form>
</div>
</body>