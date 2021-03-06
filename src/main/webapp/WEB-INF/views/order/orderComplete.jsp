<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/order/orderComplete.css" rel="stylesheet">
	
	<title>Home</title>
	
	<style>		
		.wrapper{
			position:relative;
			width:100%;
		}

		#container{
			width:1180px;
			min-height:100%;
			margin:-117 auto -290;
			padding: 117 0 290;
		}
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/boot_nav.jsp"></c:import>
	<section id="container">
	
	
	
	
	
		<div class="content">
		
			<div class="top">
				<h2>주문완료</h2>
				<ol class="step">
					<li class="step01">
						<span>장바구니</span>
					</li>
					<li class="step02">
						<span>주문/결제</span>
					</li>
					<li class="step03 on">
						<span>주문완료</span>
					</li>
				</ol>
			</div>
			
			<div class="order_fix">
			
<!-- ===== ===== ===== order_summary ===== ===== ===== -->
				<div class="order_summary">
					<i></i>
					<strong>주문이 완료되었습니다.</strong>
					<ul>
						<li>배송지 <span>1개</span></li>
						<li>주문번호 <span>${paymentDTO.payment_id}</span></li>
					</ul>
					<span class="etc">자세한 주문내역은 <strong>MY쿡킷 &gt; 나의 주문정보 &gt; 주문/배송 조회</strong>에서 확인하실 수 있습니다.</span>                   	
					<div class="stamp_info">
						<dl>
							<dt>스탬프 완성하고,  최대 쿡킷 신메뉴를 <strong>무료</strong>로 받으세요!</dt>
							<dd>배송 완료 후, 스탬프와 혜택이 지급됩니다.</dd>
						</dl>
						<a href="javascript:;" class="btn_link">My 스탬프 가기</a>
					</div>
				</div>
				
<!-- ===== ===== ===== tip ===== ===== ===== -->
				<div class="tip">
					<div class="tip_head on">
						<a href="#tip" class="tip_toggle" data-open-text="내용 더 보기" data-close-text="내용 닫기">
							<div class="tit">쿡킷 TIP을 확인해주세요!</div>
						</a>
					</div>
					<div class="slide_area">
						<div class="slide_wrap">
							<div class="slide_track_wrap">
								<div class="slide_track">
									<c:forEach begin="1" end="2">
										<div class="slide_content">
											<div class="item">
												<i class="num">5</i>
												<strong>깊이가 있는<br>궁중팬이 좋아요!</strong>
												<p>찹스테이크 등 오일에 볶는 메뉴는<br>오일이 튀는 걸 조금 방지할 수 있습니다.</p>
												<img src="/mp/resources/images/op/img_tip05.png" alt="">
											</div>
										</div>
										<div class="slide_content">
											<div class="item">
												<i class="num">1</i>
												<strong>은색 보냉백을<br>확인해 주세요!</strong>
												<p>생선, 새우, 고기 등 냉동제품은 신선도<br>유지를 위해 은색의 보냉백에 담아 배송됩니다.</p>
												<img src="/mp/resources/images/op/img_tip01.png" alt="">
											</div>
										</div>
										<div class="slide_content">
											<div class="item">
												<i class="num">2</i>
												<strong>오일, 분말, 소스는<br>뒷면을 확인해주세요!</strong>
												<p>뒷면에 상세정보가 담겨있습니다.<br>조리전 확인해 주세요.</p>
												<img src="/mp/resources/images/op/img_tip04.png" alt="">
											</div>
										</div>
										<div class="slide_content">
											<div class="item">
												<i class="num">3</i>
												<strong>주문변경은 배송일 전일 <br>7시전까지만 가능해요</strong>
												<p>배송일, 배송지 변경은 [My쿡킷 &gt;<br>주문/배송조회]에서 직접 하실 수 있습니다.</p>
												<img src="/mp/resources/images/op/img_tip02.png" alt="">
											</div>
										</div>
										<div class="slide_content">
											<div class="item">
												<i class="num">4</i>
												<strong>배송시간은<br>전일 PM10시~AM7시입니다.</strong>
												<p>전일 저녁 배송되더라도 아침까지 품질에<br>문제없도록 보냉포장하여 배송되오니 안심하세요.</p>
												<img src="/mp/resources/images/op/img_tip03.png" alt="">
											</div>
										</div>
									</c:forEach>
										<div class="slide_content">
											<div class="item">
												<i class="num">5</i>
												<strong>깊이가 있는<br>궁중팬이 좋아요!</strong>
												<p>찹스테이크 등 오일에 볶는 메뉴는<br>오일이 튀는 걸 조금 방지할 수 있습니다.</p>
												<img src="/mp/resources/images/op/img_tip05.png" alt="">
											</div>
										</div>
								</div>
							</div>
							
							<div class="slide_nav_arrow">
								<div class="arr_area">
									<button type="button" class="btn_arrow prev" id="prev"></button>
									<button type="button" class="btn_arrow next" id="next"></button>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				
<!-- ===== ===== ===== delivery_info ===== ===== ===== -->
				<div class="delivery_info ">
					<div class="delivery_head">
						<h3>배송지 정보를 꼭 확인하세요!</h3>
					</div>
					<div class="delivery_location">
						<div class="location_detail">
							<div class="detail_head">
								<h4>배송지</h4>
							</div>
							<div class="detail_content">
								<dl>
									<dt>
									<strong>${paymentDTO.recipient_name}</strong>
									</dt>
									<dd>
										<ul>
											<li>
												<!-- 배송주소 -->
												<span>${paymentDTO.address}</span>
											</li>
											<li>
												<!-- 휴대폰 -->
												<span>${paymentDTO.recipient_phone}</span>
											</li>
											<!-- <li class="method">
												배송방법
												<div class="detail">
													<span>공동현관 비밀번호 있음 <span>#1234#</span></span>
													<span>배송완료 메시지 <span>오전7시</span></span>
												</div>
											</li> -->
										</ul>
									</dd>
								</dl>
							</div>
						</div>
						<!-- Loop I START -->
						<c:set var="tempDate"></c:set>
						<c:forEach var="cartListDTOsI" items="${cartListDTOs}">
						<c:if test="${tempDate ne cartListDTOsI.cart_delivery_date}">
							<div class="product_detail">
							
								<div class="recieve_date">
									<strong>${cartListDTOsI.cart_delivery_date} 도착예정</strong>
									<span class="order_product">주문상품 총 x개</span>
									<span class="recieve_txt delivery_price">배송비 0원</span>
								</div>
								
								<div class="product_list">
									<ul>
										<!-- Loop  J START -->
										<c:forEach var="cartListDTOsJ" items="${cartListDTOs}">
										<c:if test="${cartListDTOsI.cart_delivery_date eq cartListDTOsJ.cart_delivery_date}">
											<li>
												<div class="product_info">
												
													<div class="img_wrap">
														<img src="/mp/resources/upload/menu/main/${cartListDTOsJ.product_id}/${cartListDTOsJ.product_file_name}" alt="">
													</div>
													
													<div class="info_wrap">
														<span class="tit">${cartListDTOsJ.product_name}</span><br>
														<span class="price" data-price="${cartListDTOsJ.product_price * cartListDTOsJ.cart_quantity}"><fmt:formatNumber value="${cartListDTOsJ.product_price * cartListDTOsJ.cart_quantity}" pattern="#,###"/>원</span>
														<span class="quantity" data-quantity="${cartListDTOsJ.cart_quantity}">수량 ${cartListDTOsJ.cart_quantity}개</span>
													</div>
													
												</div>
											</li>
										</c:if>
										</c:forEach>
										<!-- //Loop J END -->
									</ul>								
								</div>
								
								<!-- <div class="notice">
									<p>배송정보 변경은 <strong>2021-10-07 07:00</strong>까지만 가능합니다. (단, 사전예약 상품은 배송일 변경이 불가합니다.)</p>
								</div> -->
								
							</div>
							
						<c:set var="tempDate">${cartListDTOsI.cart_delivery_date}</c:set>
						</c:if>
						</c:forEach>
						<!-- //Loop I END -->						
					</div>
				</div>
				
<!-- ===== ===== ===== payment_info ===== ===== ===== -->
				<div class="payment_info">
				
					<div class="payment_info_head">
						<h3>결제정보</h3>
					</div>
					
					<div class="payment_info_content">
						<div class="pay_how">
							<dl class="em">
								<dt>결제수단</dt>
								<dd>신용카드</dd>
							</dl>
						</div>
						<div class="payment_info_detail">
							<dl>
								<dt>총 상품금액</dt>
								<dd><fmt:formatNumber value="${paymentDTO.payment_total_product_price}" pattern="#,###"/>원</dd>
							</dl>
							<dl>
								<dt>총 배송비</dt>
								<dd>+<fmt:formatNumber value="${paymentDTO.payment_total_delivery_price}" pattern="#,###"/>원</dd>
							</dl>
							<div class="detail_pay">
								<p>포인트 및 기타결제</p>
								<dl>
									<dt>CJ ONE 포인트</dt>
									<dd>-<fmt:formatNumber value="${paymentDTO.payment_use_point}" pattern="#,###"/>원</dd>
								</dl>
								<dl>
									<dt>쿳킷 기프트카드</dt>
									<dd>-0원</dd>
								</dl>
								<dl>
									<dt>CJ더마켓 기프트카드</dt>
									<dd>-0원</dd>
								</dl>
								<dl>
									<dt>CJ 기프트카드</dt>
									<dd>-0원</dd>
								</dl>
							</div>
							<dl class="total">
								<dt>총 결제금액</dt>
								<dd><fmt:formatNumber value="${paymentDTO.payment_total_payment_price}" pattern="#,###"/>원</dd>
							</dl>
						</div>
					</div>
					
				</div>
				
<!-- ===== ===== ===== btn_wrap ===== ===== ===== -->
				<div class="btn_wrap">
					<button type="button" class="btn white" id="compBtnMenu"><span>쇼핑 계속하기</span></button>
					<button type="button" class="btn green" id="compBtnOdrDtl" data-payment_id="${paymentDTO.payment_id}"><span>주문상세 조회</span></button>
				</div>
				
			</div>
			
			
			
		</div>	
		
		
		
		
		
	</section>
 	<c:import url="../temp/boot_footer.jsp"></c:import>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/mp/resources/js/order/orderComplete.js"></script>

</body>
</html>
