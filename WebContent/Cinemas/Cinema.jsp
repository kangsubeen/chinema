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
	<h2>극장등록</h2>
	<form>
		<input class="form-control" id="photo" type="file">
		<div class="form-group">
			<div class="col-xs-9">
				<label for="ex0">번호: </label>
				<input class="form-control" id="ex0" type="number" placeholder="1" disabled>
			</div>	
			<div class="col-xs-9">
				<label for="ex2">극장명: </label>
				<input class="form-control" id="ex2" type="text" placeholder="신촌점">
			</div>		
			<div class="col-xs-9">
				<label for="ex3">상영관 갯수: </label>
				<select class="form-control" ld="ex3">
					<option>선택</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>	
			
			<div class="col-xs-3">
				<label for="ex41">시주소: </label>
				<select class="form-control" ld="ex41">
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
			<div class="col-xs-3">
				<label for="ex42">구주소: </label>
				<select class="form-control" ld="ex42">
					<option>시/군/구</option>
				</select>
			</div>	
			<div class="col-xs-3">
				<label for="ex43">나머지 주소: </label>
				<input class="form-control" id="ex43" type="text" placeholder="동성로 14길 51-12">
			</div>			
			<div class="col-xs-3">
				<label for="ex51">전화번호: </label>
				<select class="form-control" ld="ex51">
					<option>전체</option>
					<option>02</option>
					<option>051</option>
					<option>053</option>
					<option>032</option>
					<option>062</option>
					<option>042</option>
					<option>052</option>
					<option>044</option>
					<option>031</option>
					<option>033</option>
					<option>043</option>
					<option>041</option>
					<option>063</option>
					<option>061</option>
					<option>054</option>
					<option>055</option>
					<option>064</option>
					<option>011</option>
					<option>016</option>
					<option>019</option>
					<option>010</option>
				</select>
			</div>	
			<div class="col-xs-3">
				<label for="ex52"> &nbsp </label>
				<input class="form-control" id="ex52" type="text">
			</div>	
			<div class="col-xs-3">
				<label for="ex53"> &nbsp </label>
				<input class="form-control" id="ex53" type="text">
			</div>	
			
			<div class="col-xs-12">
				<label for="ex8">극장설명: </label>
				<textarea class="form-control" rows="10" id="ex8" placeholder="이 곳에 극장설명을 입력하세요."></textarea>
			</div>	
			
			
			<br>
			<h3>주차장</h3>
			<div class="col-xs-4">
				<label for="ex91">시주소: </label>
				<select class="form-control" ld="ex91">
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
			<div class="col-xs-4">
				<label for="ex92">구주소: </label>
				<select class="form-control" ld="ex92">
					<option>시/군/구</option>
				</select>
			</div>	
			<div class="col-xs-4">
				<label for="ex93">나머지 주소: </label>
				<input class="form-control" id="ex93" type="text" placeholder="동성로 14길 51-12">
			</div>	
			<div class="col-xs-4">
				<label for="ex101">전화번호: </label>
				<select class="form-control" ld="ex101">
					<option>전체</option>
					<option>02</option>
					<option>051</option>
					<option>053</option>
					<option>032</option>
					<option>062</option>
					<option>042</option>
					<option>052</option>
					<option>044</option>
					<option>031</option>
					<option>033</option>
					<option>043</option>
					<option>041</option>
					<option>063</option>
					<option>061</option>
					<option>054</option>
					<option>055</option>
					<option>064</option>
					<option>011</option>
					<option>016</option>
					<option>019</option>
					<option>010</option>
				</select>
			</div>	
			<div class="col-xs-4">
				<label for="ex102"> &nbsp </label>
				<input class="form-control" id="ex102" type="text">
			</div>	
			<div class="col-xs-4">
				<label for="ex103"> &nbsp </label>
				<input class="form-control" id="ex103" type="text">
			</div>	
			
			<div class="col-xs-4">
				<label for="ex11">주차자리수 </label>
				<input class="form-control" id="ex11" type="number">
			</div>	
			
			<div class="col-xs-4">
				<label for="ex121">기본요금(최초 30분): </label>
				<input class="form-control" id="ex121" type="number" placeholder="1,000">
			</div>	
			<div class="col-xs-4">
				<label for="ex122">추가요금(10분 당): </label>
				<input class="form-control" id="ex122" type="number" placeholder="500">
			</div>	
			

			
			<div class="col-xs-2">
			<button type="submit" id="submit" class="btn btn-success">등록</button>
			</div>	
		</div>
	</form>
</div>
</body>