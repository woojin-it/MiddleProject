<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/event/planView.css" rel="stylesheet">


<html>
<head>

<script src="http://code.jquery.com/jquery-latest.js"></script>
	<title>이벤트 - 집밥을 특별하게, 쿡킷</title>
	
	<style>
		html,body{
			height:100%;
			margin:0; 
		}
		
		.wrapper{
			position:relative;
			width: 100%;	
		}
		
		#container{
			width: 1180px;
			min-height:100%;
			margin: -117 auto -290;
			padding: 117 0 290;
		}
	</style>	
	
</head>
<body>

<div class="wrapper">		

<c:import url="../temp/boot_nav.jsp"></c:import>
<!-- 여기에 페이지 작업 -->

	<section id="container">
	
			<div id="content" class="ev_content">
	
		<div class="ev_wrap">
			<h1 class="title">이벤트</h1>
			
			<div class="tab_wrap">
            <ul class="tabs">
                <li><a href="/mp/event/eventMain"><span>진행중</span></a></li>
                <li class="on"><a href="/mp/event/winnerMain"><span>당첨자 발표<em class="hide">선택됨</em></span></a></li>
            </ul>
        </div>
			
			<div class="view">
				<div class="head">
                        <h2 class="tit">${dto.event_winner_subject} 
                        	<span class="date">${dto.event_winner_regDate}</span></h2>
                    </div>
			
				<!-- view contents -->
					<div class="conts">
                        <div class="txt">
                         	${dto.event_winner_content}
                        </div>
                    </div>
	        	
			</div>
			
			<c:if test="${not empty member and member.member_user_id eq 'admin' }">
			<a href="./eventDelete?event_id=${dto.event_winner_id}" class="delete btn_remove" ><span>글 삭제</span></a>
			</c:if>
			</div>
			
				<div class="btn_wrap">
                	<a href="${pageContext.request.contextPath}/event/winnerMain" class="btn pop green" role="button" >
                	<span>목록</span></a>
                </div>
			
			
		</div>
	
	</section>	
	</div>
	
	
	

 <c:import url="../temp/boot_footer.jsp"></c:import>

<script type="text/javascript">
	$(".btn_remove").on('click', function() {
		
		 if(confirm("이 글을 삭제하시겠습니까?") == true){
		    }
		    else{
		        return false;
		    }
	})
</script>

</body>
</html>
