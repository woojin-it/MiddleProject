<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/member/join.css" rel="stylesheet">
	<title>일반회원 약관동의 | CJ ONE</title>
	
	<style>		
		.html,body{height:100%}
		.wrapper{
			position:relative;
			width:100%;
		}
		#container{
			width:1060px;
			min-height:100%;
			margin:-90 auto -238;
			padding: 117 0 238;
		}
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="../temp/member_nav.jsp"></c:import>	
	<section id="container">
	
		<div class="cont_header" >
			<h1 class="h1_tit">회원 가입</h1>
			<P class="h_desc">
				라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의 카드로 즐기세요~
			</P>
		</div>
		<div class="cont_area">
			<div class="member_join uni">
				<div class="step_join">
					<ul class="col4">
						<li class="step1">
							약관동의
							<span class="haze">진행 후</span>
						</li>
						<li class="step2 on">
							회원정보 입력
							<span class="haze">진행 중</span>
						</li>
						<li class="step3">
							가입완료
							<span class="haze">진행 전</span>
						</li>
					</ul>
				</div>
			</div>	
		</div>
		<div class="cont_area">
			<form id="form1" method="post">
				<div class="table_header">
					<h3 class="h3_tit">기본정보</h3>
					<div class="info">
						<p class="msg_mandatory">
							<span>표시는 필수 입력 항목입니다.</span>
						</p>
					</div>
				</div>
				<div class="table_col">
					<table>
						<colgroup>
							<col class="title">
							<col class="body">
						</colgroup>
						<tbody>
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="input_member_name">
										<span>이름</span>
									</label>									
								</th>
								<td>
									<span class="input_txt w250">
										<input type="text" id="member_name" name="member_name" class="text" placeholder="성함을 입력해주세요.">
									</span>
								</td>
							</tr>
							<tr class="input">	
								<th scope="row" class="mandatory">
									<label for="member_name">
										<span>아이디</span>
									</label>									
								</th>
								<td>
									<div class="input_group">
										<span class="input_txt w250">
											<input type="text" name="member_user_id" id="member_user_id" maxlength="12" class="text" placeholder="아이디를 입력해주세요.">
										</span>
										<button type="button" class="btn btn_search">중복확인</button>
										<button type="button" class="btn btn_search" style="background-color:#fff; color:000; font-weight:300;">
											<span>CJ ONE 통합 아이디 안내</span>
										</button>
									</div>
									<p class="msg_info em hide" id="msg_id01">
										6~12자리의 영문 소문자 또는 영문 소문자+숫자 아이디를 입력해 주세요.
									</p>
									<p class="msg_info em hide" id="msg_id02">
										사용 가능한 아이디입니다.
									</p>
									<p class="msg_info em hide" id="msg_id03">
										이미 사용중인 아이디입니다. 다른 아이디를 입력해주세요.
									</p>
									<p class="msg_desc">
										CGV, CJ온스타일 등 기존의 CJ ONE 제휴 브랜드 회원님의 경우는 기존에 사용하고 계신
										아이디가 새롭게 생성하신 <br>통합아이디로 변경됩니다.
									</p>
								</td>
							</tr>
							
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_password">
										<span>비밀번호</span>
									</label>									
								</th>
								<td>
									<span class="input_txt w250">
										<input type="text" placeholder="비밀번호를 입력해주세요." maxlength="50" name="member_password" id="member_password" class="text">
									</span>
									<p class="msg_info em hide" id="msg_pwd">
										비밀번호는 영문자,숫자,특수문자 모두 최소 1가지 이상 조합한 8~12자리이어야 합니다.
									</p>
									<p class="msg_desc">
										영문자, 숫자, 특수문자 조합하여 8~12자리, 아이디와 4자리이상 동일,
										반복 문자 숫자 불가
										<br>
										사용 가능 특수 문자 : !"#$%&'()*+,-./:;<=>?@[]^_'{|}~
									</p>
								</td>
							</tr>
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_password_s">
										<span>비밀번호 확인</span>
									</label>									
								</th>
								<td>
									<span class="input_txt">
										<input type="text" id="imember_password_s" name="member_password_s" class="text">
									</span>
									<p class="msg_info em hide" id="msg_pwds">
										입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.
									</p>
								</td>
							</tr>
							
							
							
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="member_birth">
										<span>생년월일</span>
									</label>									
								</th>
								<td>
									<div class="birthday_select">
									<div class="select_wrap w120 strack"></div>
										<span class="select w120 hide">
											<select id="birth_yy" name="birth_yy">
											<option>년</option>
											<option value="2021">2021</option>
											<option value="2020">2020</option>
											<option value="2019">2019</option>
											<option value="2018">2018</option>
											<option value="2017">2017</option>
											<option value="2016">2016</option>
											<option value="2015">2015</option>
											<option value="2014">2014</option>
											<option value="2013">2013</option>
											<option value="2012">2012</option>
											<option value="2011">2011</option>
											<option value="2010">2010</option>
											<option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
											<option value="1999">1999</option>
											<option value="1998">1998</option>
											<option value="1997">1997</option>
											<option value="1996">1996</option>
											<option value="1995">1995</option>
											<option value="1994">1994</option>
											<option value="1993">1993</option>
											<option value="1992">1992</option>
											<option value="1991">1991</option>
											<option value="1990">1990</option>
											<option value="1989">1989</option>
											<option value="1988">1988</option>
											<option value="1987">1987</option>
											<option value="1986">1986</option>
											<option value="1985">1985</option>
											<option value="1984">1984</option>
											<option value="1983">1983</option>
											<option value="1982">1982</option>
											<option value="1981">1981</option>
											<option value="1980">1980</option>
											<option value="1979">1979</option>
											<option value="1978">1978</option>
											<option value="1977">1977</option>
											<option value="1976">1976</option>
											<option value="1975">1975</option>
											<option value="1974">1974</option>
											<option value="1973">1973</option>
											<option value="1972">1972</option>
											<option value="1971">1971</option>
											<option value="1970">1970</option>
											<option value="1969">1969</option>
											<option value="1968">1968</option>
											<option value="1967">1967</option>
											<option value="1966">1966</option>
											<option value="1965">1965</option>
											<option value="1964">1964</option>
											<option value="1963">1963</option>
											<option value="1962">1962</option>
											<option value="1961">1961</option>
											<option value="1960">1960</option>
											<option value="1959">1959</option>
											<option value="1958">1958</option>
											<option value="1957">1957</option>
											<option value="1956">1956</option>
											<option value="1955">1955</option>
											<option value="1954">1954</option>
											<option value="1953">1953</option>
											<option value="1952">1952</option>
											<option value="1951">1951</option>
											<option value="1950">1950</option>
											<option value="1949">1949</option>
											<option value="1948">1948</option>
											<option value="1947">1947</option>
											<option value="1946">1946</option>
											<option value="1945">1945</option>
											<option value="1944">1944</option>
											<option value="1943">1943</option>
											<option value="1942">1942</option>
											<option value="1941">1941</option>
											<option value="1940">1940</option>
											<option value="1939">1939</option>
											<option value="1938">1938</option>
											<option value="1937">1937</option>
											<option value="1936">1936</option>
											<option value="1935">1935</option>
											<option value="1934">1934</option>
											<option value="1933">1933</option>
											<option value="1932">1932</option>
											<option value="1931">1931</option>
											</select>
										</span>
									
									</div>
									<p class="msg_desc">
										설정하신 생일을 기준으로 15일 전 생일쿠폰이 발행됩니다.
									</p>
								</td>
							</tr>
							
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="input_member_name">
										<span>휴대전화</span>
									</label>									
								</th>
								<td>
									<span class="input_txt">
										<input type="text" id="input_member_name" class="text">
									</span>
								</td>
							</tr>
							
							<tr class="input">
								<th scope="row" class="mandatory">
									<label for="input_member_name">
										<span>이메일</span>
									</label>									
								</th>
								<td>
									<span class="input_txt">
										<input type="text" id="input_member_name" class="text">
									</span>
								</td>
							</tr>
							
							
							
						</tbody>					
					</table>
				
				</div>
		
		
			</form>
		</div>
	</section>
 	<c:import url="../temp/member_footer.jsp"></c:import>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/check.js"></script>



</body>
</html>