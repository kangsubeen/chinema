<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../main.html"/>
<head>
<style>
label{
	float: left;
}

#photo{
	float: left;
	width:285px;
	height:363px;
}

#submit{
	margin:20px 10px 0 1050px;
}

label{
	margin: 10px
}
</style>
</head>
<body>
<div class="container">
<br>
	<h2>영화등록</h2>
	<form>
		<input class="form-control" id="photo" type="file">
		<div class="form-group">
			<div class="col-xs-3">
				<label for="ex0">번호: </label>
				<input class="form-control" id="ex0" type="number" placeholder="1" disabled>
			</div>	
			<div class="col-xs-6">
				<label for="ex1">국가: </label>
				<select class="form-control" ld="ex1">
					<option>구분</option>
					<option>KO</option>
					<option>US</option>
					<option>CA</option>
					<option>IN</option>
					<option>JA</option>
				</select>
			</div>
			<div class="col-xs-9">
				<label for="ex2">제목: </label>
				<input class="form-control" id="ex2" type="text" placeholder="변곤의 하루">
			</div>		
			<div class="col-xs-9">
				<label for="ex3">장르: </label>
				<select class="form-control" ld="ex3">
					<option>구분</option>
					<option>액션</option>
					<option>멜로</option>
					<option>드라마</option>
					<option>서스펜스</option>
					<option>SF</option>
				</select>
			</div>	
			
			<div class="col-xs-9">
				<label for="ex4">감독이름: </label>
				<input class="form-control" id="ex4" type="text" placeholder="김변곤">
			</div>		
			<div class="col-xs-9">
				<label for="ex5">등급: </label>
				<select class="form-control" ld="ex5">
					<option>구분</option>
					<option>전체관람</option>
					<option>12</option>
					<option>15</option>
					<option>19</option>
				</select>
			</div>	
			
			<div class="col-xs-6">
				<label for="ex6">개봉일: </label>
				<input class="form-control" id="ex6" type="date">
			</div>	
			
			<div class="col-xs-6">
				<label for="ex7">가격: </label>
				<input class="form-control" id="ex7" type="number" placeholder="10,000">
			</div>	
			
			<div class="col-xs-12">
				<label for="ex8">영화설명: </label>
				<textarea class="form-control" rows="10" id="ex8" placeholder="이 곳에 영화설명을 입력하세요."></textarea>
			</div>	
			
			<div class="col-xs-2">
			<button type="submit" id="submit" class="btn btn-success">등록</button>
			</div>	
		</div>
	</form>
</div>
</body>