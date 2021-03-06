<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>관리자 페이지</title>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/management/management_product.css">
  	
  	
  	<!-- summernote light -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    
    
	<style>
		html,body{
			height:100%;
			margin:0; 
		}
		.wrapper{
			min-height:100%;
			margin-top:85px;
			margin-bottom:-290px;
			}
		.push{
			height:290px;		
			}
			
		#content{
			width: 1440px;
			margin: 0 auto;
		}
	</style>	
	
	</head>
	<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
		
		<div class="wrapper">		
		<!-- 여기에 페이지 작업 -->
			
		
		
		<section id="content">
		
			<h1 class="title_txt"> Cookit Product ManageMent </h1>
			<h3 class="login_state">Login on : ${member.member_user_id}</h3>
			
			
			<div class="container">
				
				<!-- 상품관리 왼쪽 네비바 -->
				<c:import url="./product_nav.jsp"></c:import>
				
				<div class="inner_contents">
				
					<form id="inputForm" action="prdUpload" method="post" enctype="multipart/form-data">
					
						<div class="input_block">
							<label for="inputPrdName">상품 이름</label>
							<input type="text" id="inputPrdName" name="product_name">
						</div>
						
						<div class="input_block">
							<label for="inputPrdSubName">상품 서브 이름</label>
							<input type="text" id="inputPrdSubName" name="product_sub_name">
						</div>
						
						<div class="input_block">
							<label for="inputPrdPrice">상품 가격</label>
							<input type="text" id="inputPrdPrice" name="product_price">
						</div>
						
						<div class="input_block">
							<label for="inputPrdEtc">상품 조리법</label>
							<input type="text" id="inputPrdEtc" name="product_recipe">
						</div>
						
						<div class="input_block summernote">
							<label for="summernote">상품 설명</label>
							<textarea id="summernote" name="product_description"></textarea>
						</div>
						
						<div class="input_block inputPrdDescription">
							<label for="inputPrdDescription">상품 정보</label>
							<textarea id="inputPrdDescription" name="product_info"></textarea>
						</div>
						
						<div class="input_block">
							<label for="inputPrdMainFile">상품 썸네일</label>
							<input type="file" id="inputPrdMainFile" name="main_files" multiple="multiple">
						</div>
						
						<div class="input_block">
							<label for="inputPrdSliderFile">상품 슬라이더 이미지</label>
							<input type="file" id="inputPrdSliderFile" name="slider_files" multiple="multiple">
						</div>
						
						<div class="input_block">
							<label for="startDate">상품 배송가능 시작일자</label>
							<input type="text" class="datepicker" id="startDate" name="product_start_date" autocomplete="off">
						</div>
						
						<div class="input_block">
							<label for="endDate">상품 배송가능 종료일자</label>
							<input type="text" class="datepicker" id="endDate" name="product_end_date" autocomplete="off">
						</div>
						
						<div class="input_block">
							<label for="inputPrdCount">상품 총 수량</label>
							<input type="text" id="inputPrdCount" name="product_total_count">
						</div>
						
						<div class="input_block">
							<!-- 처음에만 같은 값으로 지정하고 변경할려면 menu_manage페이지에서 하나씩 변경가능하게 구현하면 좋을듯 -->
							<label for="inputPerDateCount">상품 날짜별 최대 수량</label>
							<input type="text" id="inputPerDateCount" name="product_max_count">
						</div>
						
						<button type="submit" class="insert_btn">상품디비추가</button>
						
					</form>
				
				</div>
			</div>
			
		</section>
			
		<!-- 여기까지 -->
		<div class="push"></div>
		</div>
		<c:import url="../temp/boot_footer.jsp"></c:import>
		
		<script type="text/javascript">
			$(document).on("click", ".del_btn", function() {
				let product_id = $(this).next("#product_id").val();
				let answer = confirm("상품번호 " + product_id + " 를 PRODUCT DB에서 삭제하시겠습니까?");
				
				if(answer){
					$.ajax({
						url: 'menu_delete?product_id=' + product_id,
						type: 'get',
						dataType: 'html',
						success: function(result){
							let a = $(result).find(".product_table").html();
							$(".product_table").html(a);
						}
					});	
				}
			});
		
		</script>
		
		<script type="text/javascript">
		
		$( function() {
		  $( ".datepicker" ).datepicker({
			  dateFormat: 'yy-mm-dd' //Input Display Format 변경
             ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
             ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
             ,changeYear: true //콤보박스에서 년 선택 가능
             ,changeMonth: true //콤보박스에서 월 선택 가능              
             ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
             ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
             ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
             ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
             ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
             ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
             ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
             ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)   
		  });
		});
		
	      $('#summernote').summernote({
	        placeholder: 'Hello stand alone ui',
	        tabsize: 2,
	        height: 500,
	        toolbar: [
	          ['style', ['style']],
	          ['font', ['bold', 'underline', 'clear']],
	          ['color', ['color']],
	          ['para', ['ul', 'ol', 'paragraph']],
	          ['table', ['table']],
	          ['insert', ['link', 'picture', 'video']],
	          ['view', ['fullscreen', 'codeview', 'help']]
	        ]
	      });
		</script>
	</body>
</html>