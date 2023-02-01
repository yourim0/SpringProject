
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%@include file="../include/header.jsp"%>
<link href="../resources/css/userAuthcss.css" rel="stylesheet" />
<div id="container" class="sub" data-menu-name="회원가입">
	<div class="container_align">
		<div id="SUB-GNB">
			<div id="submenu">
				<ul id="menu_submenu" class="menu_submenu ld1">
				</ul>
			</div>
		</div>
		<!-- <hr class="linebreak">  -->

		<div id="section">
			<section>
				<header>
					<div class="menu_path_box">
						<nav class="menu_path menu_depth_2">
							<a class="home" href="main">HOME</a>
							<div class="ld1">
								<ul class="menu_topmenu ld1">
									<li class="cd1 cd1c8 open hasChild childCount4 fix_menu"><a
										href="#"
										class="l1 menusrl_2 menutype_move_child open active hasChild childCount4"
										data-depth="1"><span>회원가입</span></a></li>
								</ul>
							</div>
						</nav>
					</div>
				</header>

				<div class="modules_fmcs_member modules_member">
					<div class="member_status">
						<h3>
							<span>회원가입 진행 순서</span>
						</h3>
						<ol class="status_count_4">
							<li><span>사번인증</span></li>
							<li class="active"><strong>이용약관동의</strong></li>
							<li><span>회원정보입력</span></li>
							<li><span>회원가입완료</span></li>
						</ol>
					</div>


					<div class="proc_agree">
						<form id="join_agree" method="post">
							<fieldset>
								<div class="agree">
									<h3 style="background: none; padding-left: 0">
										<input type="checkbox" name="all_check" id="all_check"
											value="Y"
											onclick="$(this).parents('form').find('input.agree_input').prop('checked', $(this).prop('checked'))"
											class="input_checkbox"><label for="all_check">s.f 사내
											동호회 예약 사이트 가입 전체 이용약관 및 개인정보 수집 이용에 동의합니다.</label>
									</h3>
								</div>

								<div class="agree">

									<h3>
										<span><strong>|</strong> 이용약관</span>
									</h3>
									</div>
									<div class="agree_content" tabindex="0">
										<div>
											<h3>제1장 총칙</h3>
											<h4>제1조 (목적)</h4>
											<p class="indent2">이 약관은 주식회사 s.f 사이트에서 제공하는 회원 서비스(이하 "서비스"라 합니다)를 이용함에 있어 이용자
												권리·의무 및 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
											<h4>제2조 (약관의 효력 및 변경)</h4>
											<ol class="indent2">
												<li>이 약관은 서비스 화면에 게시하거나 기타의 방법으로 공지함으로써 이용자에게 공시하고, 이에
													동의한 이용자가 서비스에 가입함으로써 효력이 발생합니다.</li>
												<li>s.f는 필요하다고 인정되는 경우 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스
													화면에 공지함으로써 이용자가 직접 확인할 수 있도록 할 것입니다.</li>
												<li>이용자는 변경된 약관에 동의하지 않으실 경우 서비스 이용을 중단하고 본인의 회원등록을 취소할
													수 있으며, 계속 사용하시는 경우에는 약관 변경에 동의한 것으로 간주되며 변경된 약관은 전항과 같은
													방법으로 효력이 발생합니다.</li>
												<li>이용자가 이 약관의 내용에 동의하는 경우 s.f의 서비스 제공행위 및 이용자의 서비스
													이용행위에는 이 약관이 우선적으로 적용될 것입니다. 이 약관에 명시되지 않은 사항에 대해서는
													전기통신기본법, 전기통신사업법, 정보통신망이용촉진및정보보호등에관한법률, 방송통신심의위원회 심의규정,
													정보통신 윤리강령, 프로그램 보호법 등 기타 대한민국의 관련법령과 상관습에 의합니다.</li>
											</ol>
											<h4>제3조 (용어의 정의)</h4>
											<ol class="indent2">
												<li>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>① 이용자 : 서비스에
													접속하여 s.f가 제공하는 서비스를 받는 회원 및 비회원<br>② 회원 : 서비스에 접속하여 이
													약관에 동의하고, ID(고유번호)와 PASSWORD(비밀번호)를 발급 및 인증 등 확인 절차를 거친 자<br>③
													비회원 : 회원가입을 하지 않고 s.f가 제공하는 서비스를 이용하는 자<br>④ ID(고유번호)
													: 회원 식별과 회원의 서비스 이용을 위하여 이용자가 선정하고 s.f가 승인하는 영문자와 숫자의 조합<br>⑤
													PASSWORD(비밀번호) : 회원의 정보 보호를 위해 이용자 자신이 설정한 문자와 숫자의 조합<br>⑥
													이용해지 : s.f 또는 회원이 서비스 이용 이후 그 이용계약을 종료시키는 의사표시
												</li>
												<li>이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별
													안내에서 정하는 바에 의합니다.</li>
											</ol>
											<h3>제2장 서비스 이용계약</h3>
											<h4>제4조 (이용계약의 성립)</h4>
											<p class="indent2">이용계약은 이용자의 약관내용에 대한 동의와 이용자의 이용신청에 대한
												s.f의 승낙으로 성립합니다.</p>
											<h4>제5조 (이용신청)</h4>
											<p class="indent2">이용신청은 서비스의 회원정보 화면에서 이용자가 s.f에서 요구하는
												가입신청 양식에 개인의 신상정보를 기록하는 방식으로 신청합니다.</p>
											<h4>제6조 (이용신청의 수락과 거절)</h4>
											<ol class="indent2">
												<li>s.f는 제5조에서 정한 사항을 정확히 기재하여 이용신청을 하였을 경우 특별한 사정이 없는
													한 서비스 이용신청을 수락합니다.</li>
												<li>s.f는 다음 각 호에 해당하는 경우에 대하여는 그 신청에 대한 제한 사유가 해소될 때까지
													일부 서비스 이용을 제한할 수 있습니다.<br>① 내용이 허위(차명 등)인 것으로 판명되거나,
													그러하다고 의심할만한 합리적인 사유가 발생할 경우<br>② 기타 s.f가 필요하다고 인정되는 경우
												</li>
												<li>s.f는 다음에 해당하는 경우에는 이용신청을 제한할 수 있습니다.<br>① 다른
													사람의 명의를 사용하여 신청하였을 때<br>② 신청서의 내용을 허위로 기재하였을 때<br>③
													사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청하였을 때<br>④ 기타 s.f가 정한
													이용신청 요건이 미비 되었을 때
												</li>
											</ol>
											<h4>제7조 (계약사항의 변경)</h4>
											<p class="indent2">회원은 회원정보관리를 통해 언제든지 자신의 정보를 열람하고 수정할 수
												있습니다. 회원은 이용신청 시 기재한 사항이 변경되었을 때에는 수정을 하여야 하며, 수정하지 아니하여
												발생하는 문제의 책임은 회원에게 있습니다.</p>
											<h3>제3장 서비스 제공 및 이용</h3>
											<h4>제8조 (서비스 이용)</h4>
											<ol class="indent2">
												<li>s.f는 회원의 이용신청을 수락한 때부터 서비스를 개시합니다. 단, 일부 서비스의 경우에는
													지정된 일자부터 서비스를 개시합니다.</li>
												<li>s.f의 업무상 또는 기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 사이트에
													공시하거나 회원에게 이를 통지합니다.</li>
												<li>서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, s.f의 업무상 또는
													기술상의 이유로 서비스가 일시 중지될 수 있고, 또한 정기점검 등 운영상의 목적으로 s.f가 정한 기간에는
													서비스가 일시 중지될 수 있습니다. 이러한 경우 s.f는 사전 또는 사후에 이를 공지합니다.</li>
												<li>회원에 가입한 후라도 일부 서비스 이용 시 서비스 제공자의 요구에 따라 특정 회원에게만
													서비스를 제공할 수도 있습니다.</li>
												<li>s.f는 서비스를 일정범위로 분할하여 각 범위별로 이용가능 시간을 별도로 정할 수 있습니다.
													이 경우 그 내용을 사전에 공지합니다.</li>
											</ol>
											<h4>제9조 (서비스의 변경, 중지 및 정보의 저장과 사용)</h4>
											<ol class="indent2">
												<li>회원은 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 국가의
													비상사태, 정전, s.f의 관리범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못하였거나
													삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실에 대해 s.f가 아무런 책임을 지지 않음에
													동의합니다.</li>
												<li>s.f가 정상적인 서비스 제공의 어려움으로 인하여 일시적으로 서비스를 중지하여야 할 경우에는
													서비스 중지 1주일전에 고지 후 서비스를 중지할 수 있으며, 이 기간동안 회원이 고지내용을 인지하지 못한데
													대하여 s.f는 책임을 부담하지 아니합니다. 상당한 이유가 있을 경우 위 사전 고지기간은 감축되거나 생략될
													수 있습니다.<br>또한 위 서비스 중지에 의하여 본 서비스에 보관되거나 전송된 메시지 및 기타
													통신 메시지 등의 내용이 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의
													손실이 있을 경우에 대하여도 s.f는 책임을 부담하지 아니합니다.
												</li>
												<li>s.f의 사정으로 서비스를 영구적으로 중단하여야 할 경우 제2항을 준용합니다. 다만, 이
													경우 사전 고지기간은 1개월로 합니다.</li>
												<li>s.f는 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여
													회원 또는 제3자에게 어떠한 책임도 부담하지 아니합니다.</li>
												<li>s.f는 회원이 이 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 중지할 수
													있습니다. 이 경우 s.f는 회원의 접속을 금지할 수 있으며, 회원이 게시한 내용의 전부 또는 일부를
													임의로 삭제할 수 있습니다.</li>
												<li>장기간 휴면 회원인 경우 안내 메일 또는 공지사항 발표 후 1주일간의 통지 기간을 거쳐
													서비스 사용을 중지할 수 있습니다.</li>
											</ol>
											<h4>제10조 (정보의 제공 및 광고의 게재)</h4>
											<ol class="indent2">
												<li>s.f는 회원이 서비스 이용 중 필요가 있다고 인정되는 다양한 정보 및 광고에 대해서는
													전자우편이나 서신우편, SMS(휴대폰 문자메시지), DM, 메신저 등의 방법으로 회원에게 제공할 수
													있으며, 만약 원치 않는 정보를 수신한 경우 회원은 이를 수신거부 할 수 있습니다.</li>
												<li>s.f는 서비스의 운용과 관련하여 서비스화면, 홈페이지, 전자우편 등에 광고 등을 게재할 수
													있으며, s.f는 서비스를 이용하고자 하는 회원이 이 광고게재에 대하여 동의하는 것으로 간주합니다.</li>
												<li>s.f는 서비스 상에 게재되어 있거나 서비스를 통한 광고주와의 판촉활동에 회원이 참여하거나
													교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다</li>
											</ol>
											<h4>제11조 (게시물 또는 내용물의 삭제)</h4>
											<ol class="indent2">
												<li>s.f는 회원이 게시하거나 등록하는 서비스 내의 모든 내용물이 다음 각 호의 경우에
													해당된다고 판단되는 경우 사전 통지 없이 삭제할 수 있으며, 이에 대해 s.f는 어떠한 책임도 지지
													않습니다.<br>① s.f, 다른 회원 또는 제3자를 비방하거나 중상 모략으로 명예를 손상시키는
													내용인 경우<br>② 공공질서 및 미풍양속에 위반되는 내용인 경우<br>③ 범죄적 행위에
													결부된다고 인정되는 내용일 경우<br>④ 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우<br>⑤
													서비스 성격에 부합하지 않는 정보의 경우<br>⑥ 기타 관계 법령 및 s.f에서 정한 규정 등에
													위배되는 경우
												</li>
												<li>s.f는 서비스에 게시된 내용을 사전 통지된 지 3일 이후 편집, 이동, 삭제할 수 있는
													권리를 보유하며, 게시된 내용이 이 약관에 위배되거나 상용 또는 비합법적, 불건전한 내용일 경우 및 해지
													회원이 게시한 게시물은 사전통보 없이 삭제할 수 있습니다.</li>
												<li>s.f는 게시된 내용이 일정기간 이상 경과되어, 게시물로써의 효력을 상실하여 그 존치 목적이
													불분명한 경우 공지사항 발표 후 1주일간의 통지기간을 거쳐 해당 게시물을 삭제할 수 있습니다.</li>
											</ol>
											<h4>제12조 (게시물의 저작권)</h4>
											<ol class="indent2">
												<li>회원이 서비스 내에 게시한 게시물의 저작권은 회원에게 있으며, s.f는 다른 서비스에서의
													개재 등 활용할 수 있습니다.</li>
												<li>회원의 게시물이 타인의 저작권, 프로그램 저작권 등을 침해함으로써 발생하는 민, 형사상의
													책임은 전적으로 회원이 부담하여야 합니다.</li>
												<li>회원은 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를
													상업적으로 사용할 수 없습니다.</li>
											</ol>
											<h4>제13조 (s.f의 소유권)</h4>
											<ol class="indent2">
												<li>s.f가 제공하는 서비스, 그에 필요한 소프트웨어, 이미지, 마크, 로고, 디자인,
													서비스명칭, 정보 및 상표 등과 관련된 지적재산권 및 기타권리는 s.f에게 소유권이 있습니다.</li>
												<li>회원은 s.f가 명시적으로 승인한 경우를 제외하고는 제1항 소정의 각 재산에 대한 전부 또는
													일부의 수정, 대여, 대출, 판매, 배포, 제작, 양도, 재라이센스, 담보권 설정행위, 상업적 이용행위를
													할 수 없으며, 제3자로 하여금 이와 같은 행위를 하도록 허락할 수 없습니다.</li>
											</ol>
											<h3>제4장 계약 당사자의 의무</h3>
											<h4>제14조 (회원의 의무 및 정보보안)</h4>
											<ol class="indent2">
												<li>회원은 서비스 이용을 위해 가입할 경우 현재의 사실과 일치하는 완전한 정보(이하
													"가입정보"라 한다)를 제공하셔야 합니다. 또한 가입정보에 변경이 발생할 경우 즉시 갱신하셔야 합니다.</li>
												<li>회원이 서비스 사용을 위한 가입절차를 완료하시면 아이디와 비밀 번호를 받게 됩니다. 회원의
													아이디, 비밀번호 관리를 위해<br>① 회원의 승인 없이 비밀번호, 아이디가 사용되는 문제가
													발생되면 즉시 s.f에 신고하셔야 하고<br>② 매 접속 종료 시 확실히 로그아웃을 하셔야
													합니다.
												</li>
												<li>회원은 서비스를 이용하면서 다음과 같은 행위를 하지 않기로 동의합니다.<br>①
													타인(소수를 포함)에게 위해를 가하는 행위<br> 가. 타인의 ID, PASSWORD 및 타인으로
													가장하는 행위<br> 나. 타인과의 관계를 허위로 명시하는 행위<br> 다. 타인을
													비방할 목적으로 사실 또는 허위의 사실을 적시하여 명예를 훼손하는 행위<br> 라. 자기 또는
													타인에게 재산상의 이익을 주거나 타인에게 손해를 가할 목적으로 허위의 정보를 유통시키는 행위<br>
													마. 수치심이나 혐오감 또는 공포심을 일으키는 말이나 음향, 글이나 화상 또는 영상을 계속하여 상대방에게
													도달하게 하여 상대방의 일상적 생활을 방해하는 행위<br> 바. s.f의 사전 승낙 없이 서비스를
													이용한 영리행위<br> 사. 타인의 정보통신서비스 이용명의를 도용하여 사용하는 행위<br>②
													불필요하거나 승인되지 않은 광고, 판촉물을 게재하거나, "정크 메일(junk mail)",
													"스팸(spam)", "행운의 편지(chain letters)", "도배글", "피라미드 조직" 등을
													권유하거나 게시, 게재 또는 전자우편으로 보내는 행위<br>③ 저속 또는 음란한 데이터, 텍스트,
													소프트웨어, 음악, 사진, 그래픽, 비디오 메시지 등(이하 "콘텐츠")을 게시, 게재 또는 전자우편으로
													보내는 행위<br>④ 권리(지적재산권을 포함한 모든 권리)가 없는 콘텐츠를 게시, 게재 또는
													전자우편으로 보내는 행위<br>⑤ 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비를 파괴, 방해 또는
													기능을 제한하기 위한 소프트웨어 바이러스를 게시, 게재 또는 전자우편으로 보내는 행위<br>⑥
													다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시, 게재, 전자우편으로 보내는 행위 등 다른
													사용자의 개인정보를 수집 또는 저장하는 행위<br>⑦ 재물을 걸고 도박하거나 사행행위를 하는 행위<br>⑧
													윤락행위를 알선하거나 음행을 매개하는 내용의 정보를 유통시키는 행위<br>⑨ 기타 불법적이거나
													부당한 행위
												</li>
												<li>회원은 이 약관 및 관계법령에서 규정한 사항을 준수하여야 합니다.</li>
											</ol>
											<h4>제15조 (s.f의 의무)</h4>
											<ol class="indent2">
												<li>s.f는 특별한 사정이 없는 한 회원이 신청한 서비스 제공 개시일에 서비스를 이용할 수
													있도록 합니다.</li>
												<li>s.f는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.</li>
												<li>s.f가 제공하는 서비스로 인하여 회원에게 손해가 발생한 경우 그러한 손해가 s.f의 고의나
													중과실에 기해 발생한 경우에 한하여 s.f에서 책임을 부담하며, 그 책임의 범위는 통상손해에 한합니다.</li>
												<li>s.f는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 신속히 처리하여야
													합니다. 다만, 신속한 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 통보하여야 합니다.</li>
												<li>s.f는 관련법령이 정하는 바에 따라서 회원 등록정보를 포함한 회원의 개인정보를 보호하기
													위하여 노력합니다. 회원의 개인정보보호에 관해서는 관련법령 및 제 16조에 제시된 내용을 지킵니다.</li>
											</ol>
											<h4>제16조 (개인정보보호정책)</h4>
											<ol class="indent2">
												<li>s.f는 이용 신청 시 회원이 제공하는 정보를 통하여 회원에 관한 정보를 수집하며, 회원의
													개인정보는 본 이용계약의 이행과 본 이용계약상의 서비스제공을 위한 목적으로 이용합니다.</li>
												<li>s.f는 서비스 제공과 관련하여 취득한 회원의 정보를 본인의 승낙 없이 제3자에게 누설 또는
													배포할 수 없으며 상업적 목적으로 사용할 수 없습니다. 다만, 다음의 각 호의 경우에는 그러하지
													아니합니다.<br>① 관계 법령에 의하여 수사상의 목적으로 관계기관으로부터 요구가 있는 경우<br>②
													방송통신심의위원회의 요청이 있는 경우<br>③ 기타 관계법령에서 정한 절차에 따른 요청이 있는
													경우
												</li>
											</ol>
											<h3>제5장 계약해지</h3>
											<h4>제17조 (계약해지 및 이용제한)</h4>
											<ol class="indent2">
												<li>회원이 이용계약을 해지하고자 하실 때에는 회원 본인이 직접 인터넷을 통해 당 사이트에 해지
													신청을 하여야 합니다.</li>
												<li>s.f는 보안 및 아이디 정책, 서비스의 원활한 제공 등과 같은 이유로 회원의 ID 및
													PASSWORD 변경을 요구하거나 변경 할 수 있습니다.</li>
												<li>s.f는 회원이 다음 각 호에 해당하는 행위를 하였을 경우 사전통지 없이 이용계약을 해지할
													수 있습니다.<br>① 회원이 제공한 데이터가 허위임이 판명된 경우<br>② 범죄적
													행위에 관련되는 경우<br>③ 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는
													실행할 경우<br>④ 타인의 서비스 아이디 및 비밀 번호를 도용한 경우<br>⑤ 타인의
													명예를 손상시키거나 불이익을 주는 경우<br>⑥ 서비스에 위해를 가하는 등 서비스의 건전한 이용을
													저해하는 경우<br>⑦ 기타 관련법령이나 s.f가 정한 이용조건에 위배되는 경우
												</li>
											</ol>
											<h3>제6장 기타</h3>
											<h4>제18조 (요금 및 유료정보)</h4>
											<p class="indent2">서비스 이용은 기본적으로 무료입니다. 단, 서비스에서 정한 별도의
												유료 정보와 유료서비스에 대해서는 그러하지 아니합니다.</p>
											<h4>제19조 (양도금지)</h4>
											<p class="indent2">회원은 서비스의 이용권한, 기타 이용계약상의 지위를 타인에게 양도,
												증여할 수 없으며, 이를 담보로 제공할 수 없습니다.</p>
											<h3>제7장 손해배상 등</h3>
											<h4>제20조 (손해배상)</h4>
											<p class="indent2">s.f는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가
												발생하더라도 동 손해가 s.f의 중대한 과실에 의한 경우를 제외하고 이에 대하여 책임을 부담하지 아니합니다.</p>
											<h4>제21조 (면책조항)</h4>
											<ol class="indent2">
												<li>s.f는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는
													서비스 제공에 관한 책임이 면제됩니다.</li>
												<li>s.f는 회원의 귀책사유로 인한 서비스이용의 장애에 대하여 책임을 지지 않습니다.</li>
												<li>s.f는 회원이 서비스를 이용하여 기대하는 이익이나 서비스를 통하여 얻은 자료로 인한 손해에
													관하여 책임을 지지 않습니다.</li>
												<li>s.f는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는
													책임을 지지 않습니다.</li>
											</ol>
											<h4>제22조 (관할법원)</h4>
											<ol class="indent2">
												<li>서비스 이용과 관련하여 s.f와 회원 사이에 분쟁이 발생한 경우, s.f와 회원은 발생한
													분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다</li>
												<li>제1항의 규정에도 불구하고 서비스 이용으로 발생한 분쟁에 대하여 소송이 제기될 경우 s.f
													소재지를 관할하는 법원을 관할법원으로 합니다.</li>
											</ol>
											<h4>부칙</h4>
											<p class="indent2">(시행일) 이 약관은 2018년 3월 1일부터 적용합니다.</p>
										</div>
									</div>
									<div class="agree_checkbox">
										<input id="form_agree_1" name="extra_datas['agree_1']"
											class="agree_input input_checkbox" type="checkbox" value="Y"><label
											for="form_agree_1">위 내용을 읽었으며, "이용약관"에 동의합니다.</label>
									</div>

									<h3>
										<span><strong>|</strong> 개인정보 수집·이용에 동의</span>
									</h3>
									<div class="agree_content" tabindex="0">
										<div>
											<h4>1. 개인정보의 수집항목 및 수집방법</h4>
											<p class="indent2">s.f 사내 동호회 신청 통합 사이트에서는 기본적인 회원 서비스 제공을
												위한 필수정보와 정보주체 각각의 기호와 필요에 맞는 서비스를 제공하기 위한 선택정보로 구분하여 다음의 정보를
												수집하고 있습니다. 가입정보에 대한 선택정보를 입력하지 않은 경우에도 서비스 이용에는 제한이 없습니다.(단
												실명인증이 필요한 서비스에서는 실명인증을 하지 않을 시 서비스 이용에 제한이 있을 수 있습니다)</p>
											<h5>가. 수집하는 개인정보의 항목</h5>
											<div class="table_box">
												<table class="table1 all_border indent3"
													style="clear: both;">
													<caption>수집하는 개인정보의 항목 : 수집하는 필수항목, 선택항목(본인인증,
														가입정보)</caption>
													<thead>
														<tr>
															<th scope="colgroup" colspan="2">수집하는 필수항목</th>
															<th scope="col" rowspan="2">선택항목</th>
														</tr>
														<tr>
															<th>본인인증</th>
															<th>가입정보</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<th scope="row">이름, 휴대폰번호</th>
															<td>아이디, 이름, 비밀번호, 비밀번호 변경열쇠(질문/답), 연락처(집/직장/휴대폰 중
																택일), 거주지 주소, 이메일주소, 차량번호</td>
															<td>DM, 문자, 이메일 수신설정</td>
														</tr>
													</tbody>
												</table>
											</div>
											<ul class="indent3">
												<li>컴퓨터에 의해 자동으로 수집되는 정보:웹사이트를 이용할 경우 다음의 정보는 로그인 기록을
													통하여 자동적으로 수집·저장됩니다. <br>- 접속 로그, 쿠키, 접속 IP 정보
												</li>
											</ul>
											<h5>나. 개인정보 수집방법</h5>
											<p class="indent3">s.f 사내 동호회 신청 통합 사이트 회원가입을 통한 수집</p>
											<h4>2. 개인정보의 수집·이용목적 및 보유·이용기간</h4>
											<p class="indent2">s.f 사내 동호회 신청 통합 사이트에서는 정보주체의 회원 가입일로부터
												서비스를 제공하는 기간 동안에 한하여 서비스를 이용하기 위한 최소한의 개인정보를 보유 및 이용 하게 됩니다.
												회원가입 등을 통해 개인정보의 수집？이용, 제공 등에 대해 동의하신 내용은 언제든지 철회하실 수 있습니다.
												회원 탈퇴를 요청하거나 수집/이용목적을 달성하거나 보유/이용기간이 종료한 경우, 사업 폐지 등의 사유발생시
												당해 개인정보를 지체 없이 파기합니다.</p>
											<div class="table_box">
												<table class="table1 all_border indent2"
													style="clear: both;">
													<caption>개인정보의 수집·이용목적 및 보유·이용기간 : 수집하는 개인정보의 항목,
														개인정보의 수집/이용 목적, 개인정보의 보유 및 이용기간</caption>
													<thead>
														<tr>
															<th scope="col">수집하는 개인정보의 항목</th>
															<th scope="col">개인정보의 수집/이용 목적</th>
															<th scope="col">개인정보의 보유 및 이용기간</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>이름, 휴대폰</td>
															<td>서비스 이용에 따른 본인 식별/인증 절차 이용</td>
															<td>회원정보와 함께 보유</td>
														</tr>
														<tr>
															<td>아이디, 비밀번호, 생년월일, 성별, 연락처(집/직장/휴대폰 중 택일), 거주지주소,
																이메일주소, 차량번호</td>
															<td>서비스 이용 및 회원관리, 불량회원의 부정 이용 방지, 비인가 사용방지, 민원 신청 및
																처리, 공지사항 전달, 게시물 등록, 자료 다운로드 등에 이용</td>
															<td>회원 탈퇴 시 까지<br>(2년마다 재동의가 요구됨)
															</td>
														</tr>
														<tr>
															<td>국가유공자 자격 여부장애인 등급관내 주민 자격 여부기초생활수급자 사실여부전체자녀수
																자격여부막내자녀나이 자격여부한부모가족 사실여부</td>
															<td>공공시설 이용요금 감면 서비스 이용</td>
															<td>행정안전부에서 제공하는 시스템을 통해 회원별 감면 사유를 확인하며, 해당 결과를 조회
																시점으로부터 1년간 보유</td>
														</tr>
													</tbody>
												</table>
											</div>
											<p class="indent2">
												정보주체는 개인정보의 수집·이용목적에 대한 동의를 거부할 수 있으며, 동의 거부시 s.f 사내 동호회 신청 통합
												사이트에 회원가입이 되지 않으며, s.f 사내 동호회 신청 통합 사이트에서 제공하는 서비스를 이용할 수 없습니다.<br>
											</p>
										</div>
									</div>
									<div class="agree_checkbox">
										<input id="form_agree_2" name="extra_datas['agree_2']"
											class="agree_input input_checkbox" type="checkbox" value="Y"><label
											for="form_agree_2">위 내용을 읽었으며, "개인정보 수집·이용에 동의"에
											동의합니다.</label>
									</div>

									<h3>
										<span><strong>|</strong> 개인정보 처리 및 위탁에 관한 안내</span>
									</h3>
									<div class="agree_content" tabindex="0">
										<div>
											<p class="indent1">s.f 사내 동호회 신청 통합사이트에서는 아래의 경우 개인정보보호법
												제26조에 의거 귀하의 개인정보를 외부에 위탁하여 처리하고자 합니다. 공공시설 이용요금 감면서비스 조회 시
												제공하는 개인정보는 개인정보보호법 제22조 제2항에 따라 정보주체와의 계약체결 등을 위하여 정보주체의 동의
												없이 처리할 수 있는 개인정보로 지정 합니다.</p>
											<div class="table_box">
												<table class="table1 all_border indent1"
													style="clear: both;">
													<caption>개인정보 처리 및 위탁에 관한 안내 : 연번, 개인정보파일명, 위탁하는
														업무의 내용, 수탁업체 현황(업체명, 주소, 전화, 근무시간)</caption>
													<colgroup>
														<col style="width: 5%">
														<col>
														<col>
														<col>
														<col>
														<col>
														<col>
													</colgroup>
													<thead>
														<tr>
															<th scope="col" rowspan="2">연번</th>
															<th scope="col" rowspan="2">개인정보파일명</th>
															<th scope="col" rowspan="2">위탁하는 업무의 내용</th>
															<th scope="colgroup" colspan="4">수탁업체 현황</th>
														</tr>
														<tr>
															<th scope="col">업체명</th>
															<th scope="col">주소</th>
															<th scope="col">전화</th>
															<th scope="col">근무시간</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<th scope="row">1</th>
															<td>통합회원 파일</td>
															<td>시스템 유지관리</td>
															<td>㈜혁산정보시스템</td>
															<td>서울시 영등포구 경인로 775 에이스하이테크시티 2동 1606호</td>
															<td>02-325-5757</td>
															<td>9:00~18:00</td>
														</tr>
														<tr>
															<th scope="row">2</th>
															<td>통합회원 파일</td>
															<td>시스템 운영 및 시설 운영</td>
															<td>강남문화재단s.f도시관리공단</td>
															<td>서울특별시 s.f 삼성로 628(삼성동66)</td>
															<td>02-6712-05241544-3113</td>
															<td>9:00~18:00</td>
														</tr>
														<tr>
															<th scope="row">3</th>
															<td>통합회원 파일</td>
															<td>감면 대상 여부 조회</td>
															<td>행정안전부</td>
															<td>서울특별시 종로구 세종대로 209</td>
															<td>2100-3399</td>
															<td>9:00~18:00</td>
														</tr>
													</tbody>
												</table>
											</div>
											<p class="indent1">정보주체는 개인정보 처리 및 위탁에 관한 동의 처리를 거부할 수
												있으며, 동의 거부시 s.f 사내 동호회 예 사이트에 회원가입이 되지 않으며, s.f 사내 동호회 신청 통합
												사이트에서 제공하는 서비스를 이용할 수 없습니다</p>
										</div>
									</div>
									<div class="agree_checkbox">
										<input id="form_agree_3" name="extra_datas['agree_3']"
											class="agree_input input_checkbox" type="checkbox" value="Y"><label
											for="form_agree_3">위 내용을 읽었으며, "개인정보 처리 및 위탁에 관한 안내"에
											동의합니다.</label>
									</div>

								</div>
								<p class="order_box">
								<button type="button" class="agree_button"
							onclick="check_checked()">동의</button>
									<!-- <a href="#"  onclick="check_checked">동의</a> --> 
									<a href="#"class="true">취소</a>
								</p>
							</fieldset>
						</form>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
<script>

//체크박스 유효성 검사
var form = document.getElementById('join_agree');
function check_checked(){
	if (!$("input:checkbox[id='form_agree_1']").is(":checked")){
		alert("전체 약관에 동의해주세요."); 
		return false;
	}
	if (!$("input:checkbox[id='form_agree_2']").is(":checked")){ 
		alert("전체 약관에 동의해주세요."); 
		return false;
	}
	if (!$("input:checkbox[id='form_agree_3']").is(":checked")){ 
		alert("전체 약관에 동의해주세요."); 
		return false;
	}
	alert("동의되었습니다");
	form.submit();

}


</script>
<%@include file="../include/footer.jsp"%>
