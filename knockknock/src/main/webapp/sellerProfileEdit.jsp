<%@page import="com.smhrd.model.MemberDAO"%>
<%@page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@page import="com.smhrd.model.CustomerDTO"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 회원정보수정</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<div class="box" id="profileBox">
		<div class="profile-pic">
			<img src="./profile.jpg" alt="Profile Picture"> <input
				type="file" id="profilePicInput" style="display: none;"
				accept="image/*">
			<button class="button" id="changePicButton">사진 변경</button>
		</div>
		<div class="profile-info">
			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					id="password" placeholder="변경할 비밀번호를 입력해주세요" class="textinput">
			</div>
			<div class="form-group">
				<label for="password-confirm">비밀번호 확인</label> <input type="password"
					id="password-confirm" placeholder="비밀번호를 다시 입력해주세요"
					class="textinput">
			</div>
			<div class="form-group">
				<label for="nickname">닉네임</label> <input type="text"
					id="nicknameEdit" placeholder="사용할 닉네임을 입력해주세요"
					value="${userInfo.getCust_nick()}" class="textinput">
			</div>
			<div class="form-group">
				<label for="address">주소</label> <input type="text"
					id="sample4_postcode" placeholder="우편번호"> <input
					type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><input
					type="text" name="address" id="sample4_roadAddress"
					placeholder="도로명주소" readonly="readonly"> <input type="text"
					id="sample4_jibunAddress" placeholder="지번주소" readonly="readonly">
				<span id="guide" style="color: #999; display: none"></span> <input
					type="text" id="sample4_extraAddress" placeholder="참고항목"
					readonly="readonly"> <input type="text" name="address"
					id="sample4_detailAddress" placeholder="상세주소">
			</div>
			<div class="form-group">
				<label for="phone">전화번호</label>
				<div class="phone-input">
					<select id="phone-provider">
						<option value="KT">KT</option>
						<option value="SKT">SKT</option>
						<option value="LGU">LGU+</option>
					</select> <input type="text" name="phone" class="textinput phoneinput">-<input
						type="text" name="phone" class="textinput phoneinput">-<input
						type="text" name="phone" class="textinput phoneinput">
				</div>
			</div>
			<div class="form-group">
				<label for="email">이메일</label>
				<div>
					<input type="email" id="email" placeholder="이메일을 입력해주세요">@
					<select>
						<option value="@gmail.com">gmail.com</option>
						<option value="@naver.com">naver.com</option>
						<option value="@kakao.com">kakao.com</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="homepage">홈페이지 URL</label> <input type="text"
					id="homepage" placeholder="변경할 주소를 입력해주세요">
			</div>
		</div>
		<div class="additional-info">
			<div class="bio">
				<label for="bio">자기소개</label>
				<textarea id="bio"></textarea>
			</div>
			<div class="portfolio">
				<label for="portfolio">포트폴리오</label>
				<div class="input-container">
					<input type="file" class="file-input"> <input type="text"
						class="text-input">
					<button type="button" class="add-button">추가</button>
				</div>
			</div>
		</div>
		<div class="buttons">
			<input type="button" value="정보수정" onclick="" class="button">
			<input type="button" value="회원탈퇴" onclick="" class="button">
		</div>
	</div>
	<script type="text/javascript" src="./assets/js/portfolio.js"></script>
	<script type="text/javascript" src="./assets/js/userEdit.js"></script>
	<script type="text/javascript" src="./assets/js/header.js"></script>
</body>
</html>