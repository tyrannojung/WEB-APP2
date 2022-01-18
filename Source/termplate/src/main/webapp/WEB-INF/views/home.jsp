<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="./include/header.jsp" %>
	<script src="/abc/js/api_package.js"></script>
	<!-- Web구글로그인 -->
	<meta name ="google-signin-client_id" content="725846148931-kkao26bsp0ek8klt0uqoud2h4m37egsv.apps.googleusercontent.com">
	<script src="https://apis.google.com/js/platform.js"></script>
	<!-- 페이스북 로그인 -->
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1588150011384568" nonce="SiOBIhLG"></script>
	<script>
		var deviceType
		$(function() {
			// 디바이스 체크 함수
			// Web : deviceType : null
			// 아이폰 : deviceType : ios
			// 안드로이드 : deviceType : android
		   	appDeviceCheck();
			// Web일때
			if(deviceType == null) {
				goolegAsyncInit();
			    fbAsyncInit();	
			}
			// App일때
			else {
				// 네이티브 통신 함수
				appReactCmn();
			}
		});
	</script>
</head>
<body>
	<div id="GgCustomLogin" style="display:none">구글로그인</div>
    <div class="wrap">
    	<div id="nav">
    	</div>
        <div class="fixedtop_icon"><a href="#">TOP<div></div></a></div>
        <div class="main">
            <div class="sec" id="sec1">
                <div class="sec1_bg sec1_bg1">
                    <div class="txtbox txtbox1">
                        <div class="big_txt txt_move">
                            Artificial Intelligence  <br /> 
                            Blockchain  <br /> 
                            Contents & Convergence
                        </div>
                        <div class="s_txt txt_move">
                            인공지능·블록체인 기술 플랫폼 개발 및 
                            미래지향형 빅데이터 시스템 사업 추진.
                        </div>
                        <a href="#sec2" class="page_bt txt_move">
                            <button>
                                <div></div>
                                <div></div>
                                <span>
                                    abc BlockChain
                                    <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24"viewBox="0 0 24 24"><rect fill="none" height="24" width="24"/><path d="M11.71,17.99C8.53,17.84,6,15.22,6,12c0-3.31,2.69-6,6-6c3.22,0,5.84,2.53,5.99,5.71l-2.1-0.63C15.48,9.31,13.89,8,12,8 c-2.21,0-4,1.79-4,4c0,1.89,1.31,3.48,3.08,3.89L11.71,17.99z M22,12c0,0.3-0.01,0.6-0.04,0.9l-1.97-0.59C20,12.21,20,12.1,20,12 c0-4.42-3.58-8-8-8s-8,3.58-8,8s3.58,8,8,8c0.1,0,0.21,0,0.31-0.01l0.59,1.97C12.6,21.99,12.3,22,12,22C6.48,22,2,17.52,2,12 C2,6.48,6.48,2,12,2S22,6.48,22,12z M18.23,16.26L22,15l-10-3l3,10l1.26-3.77l4.27,4.27l1.98-1.98L18.23,16.26z"/></svg>
                                </span>
                            </button>
                        </a>
                    </div>
                </div>
                <div class="sec1_bg sec1_bg2">
                    <div class="txtbox txtbox2">
                        <div class="big_txt">
                            기술이 세상을 바꾸고, <br />더 나은 미래를 만든다.
                        </div>
                        <div class="s_txt">
                            인터넷 시대의 본질인 휴머니즘과 
                            지속가능성의 가치 실현을 위한  <br />
                            기술 기업의 소명을 다하고자 합니다.
                        </div>
                        <a href="#sec2" class="page_bt txt_move">
                            <button>
                                <div></div>
                                <div></div>
                                <span>
                                    abc BlockChain
                                    <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24"viewBox="0 0 24 24"><rect fill="none" height="24" width="24"/><path d="M11.71,17.99C8.53,17.84,6,15.22,6,12c0-3.31,2.69-6,6-6c3.22,0,5.84,2.53,5.99,5.71l-2.1-0.63C15.48,9.31,13.89,8,12,8 c-2.21,0-4,1.79-4,4c0,1.89,1.31,3.48,3.08,3.89L11.71,17.99z M22,12c0,0.3-0.01,0.6-0.04,0.9l-1.97-0.59C20,12.21,20,12.1,20,12 c0-4.42-3.58-8-8-8s-8,3.58-8,8s3.58,8,8,8c0.1,0,0.21,0,0.31-0.01l0.59,1.97C12.6,21.99,12.3,22,12,22C6.48,22,2,17.52,2,12 C2,6.48,6.48,2,12,2S22,6.48,22,12z M18.23,16.26L22,15l-10-3l3,10l1.26-3.77l4.27,4.27l1.98-1.98L18.23,16.26z"/></svg>
                                </span>
                            </button>
                        </a>
                    </div>
                </div>
                <div class="selet_bt">
                    <button class="selet_L selet_bt_ck"></button>
                    <button class="selet_R"></button>
                </div>
            </div>
            <div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8 col-md-10">
						<div style="background-color: #ffffff; border-radius: 10px; padding:20px;">
					        <ul class="list-unstyled" style=" margin-top: 16px; ">
				                <li class="mb-2" onclick="googleLogin(); return false;">
			                       <!-- Google-->
			                       <a href="javascript:void(0)" class="social-link social-google-plus d-flex align-items-center py-2 rounded-pill shadow-sm">
				                       <span class="icon py-1">
				                       		<i class="fa fa-google-plus fa-fw text-white"></i>
				                       	</span>
				                       	<span class="font-weight-bold text-white">
				                       		Login with Google
				                       	</span>
			                       	</a>
			                    </li>
			                    <li class="mb-2" onclick="facebookLogin(); return false;">
			                       <!-- Facebook-->
			                       <a href="javascript:void(0)" class="social-link social-facebook d-flex align-items-center py-2 rounded-pill shadow-sm">
			                       		<span class="icon py-1">
			                       			<i class="fa fa-facebook-f fa-fw text-white"></i>
			                       		</span>
			                       		<span class="font-weight-bold text-white">
			                       			Login with Facebook
			                       		</span>
			                       	</a>
			                    </li>
			                </ul>
						</div>
					</div>
				</div>
			</div>
            <div class="sec" id="sec2">
                <div class="cont_bg"></div>
                <div class="w1160 tech_box">
                    <div class="title_box" style="background: #fff;">
                        <div class="main_txt">
                            에이비씨 <br />
                            블록체인 보유기술
                        </div>
                        <div class="sub_txt">
                            인공지능(AI)과 블록체인(Blockchain)의 <br /> 융합(Convergence)
                        </div>
                        <div class="right_icon" style="background: #263238;">
                            <img src="/abc/img/east_white_24dp.svg" alt="right">
                        </div>
                    </div>
                    <div class="cont_box">
                        <div class="ct_tech">
                            <div class="bg_number">01</div>
                            <div class="cont">
                                블록체인 생태계에 대비한 <br />
                                <span class="bd_txt">통합형 디앱 개발플랫폼</span> 개발 <br />
                                <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 4l-1.41 1.41L16.17 11H4v2h12.17l-5.58 5.59L12 20l8-8-8-8z"/></svg>
                                세계 최고 수준의 생산성 구현 <br />
                            </div>
                        </div>
                        <div class="ct_tech">
                            <div class="bg_number">02</div>
                            <div class="cont">
                                독자적 합의 알고리즘 및<br />
                                네트워크 프로토콜<br />
                                <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 4l-1.41 1.41L16.17 11H4v2h12.17l-5.58 5.59L12 20l8-8-8-8z"/></svg>
                                <span class="bd_txt">이중 탈중앙화 블록체인</span> 원천 기술
                            </div>
                        </div>
                        <div class="ct_tech">
                            <div class="bg_number">03</div>
                            <div class="cont">
                                디앱으로 수집되는 고신뢰성의 <br />
                                <span class="bd_txt">블록체인 빅데이터</span> <br />
                                <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 4l-1.41 1.41L16.17 11H4v2h12.17l-5.58 5.59L12 20l8-8-8-8z"/></svg>
                                머신러닝을 위한 학습 데이터 자원
                            </div>
                        </div>
                        <div class="ct_tech">
                            <div class="bg_number">04</div>
                            <div class="cont">
                                인공지능 기반<br />
                                <span class="bd_txt">자연어 처리(NLP) 엔진</span> 개발<br />
                                <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 4l-1.41 1.41L16.17 11H4v2h12.17l-5.58 5.59L12 20l8-8-8-8z"/></svg>
                                엣지컴퓨팅용 의사결정 알고리즘
                            </div>
                        </div>
                    </div>
                </div>
                <div class="w1160 trima_box">
                    <div class="title_box">
                        <div class="main_txt">
                            ABC 블록체인
                        </div>
                        <div class="sub_txt">
                            세가지 난제(Trilemma)에 <br /> 대한 대안
                        </div>
                        <div class="right_icon" style="background: #37474F;">
                            <img src="/abc/img/east_white_24dp.svg" alt="right">
                        </div>
                    </div>
                    <div class="trm_box">
                        <div class="trm_cont">
                            <div class="trm_in">
                                <div class="trm_txt_top">
                                    Decentralization
                                </div>
                                <div class="trm_icon_img" style="padding: 5px;">
                                    <img src="/abc/img/decentralization.svg" alt="">
                                </div>
                                <div class="trm_txt">
                                    <span class="bd_txt main_txt">분산성<br /><span style="font-size: 20px;">(탈중앙화)</span></span><br />
                                    <div class="sub_txt">
                                        노드간 인증 네트워크와<br />거버넌스 모델
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="trm_cont">
                            <div class="trm_in">
                                <div class="trm_txt_top">
                                    Security
                                </div>
                                <div class="trm_icon_img">
                                    <img src="/abc/img/Security.svg" alt="">
                                </div>
                                <div class="trm_txt">
                                    <span class="bd_txt main_txt">무결성<br /><span style="font-size: 20px;">(보안)</span></span><br />
                                    <div class="sub_txt">
                                        데이터와 로직을 분리한 <br /><span class="color_red">이중 탈중앙화*</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="trm_cont">
                            <div class="trm_in">
                                <div class="trm_txt_top">
                                    Scalability
                                </div>
                                <div class="trm_icon_img">
                                    <img src="/abc/img/scalability.svg" alt="">
                                </div>
                                <div class="trm_txt">
                                    <span class="bd_txt main_txt">확장성<br /><span style="font-size: 20px;">(속도)</span></span><br />
                                    <div class="sub_txt">
                                        프라이빗 방식의<br />합의 알고리즘
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="trm_bot">
                        퍼블릭, 프라이빗 등 기존 시스템의 한계를 넘어 <br />
                        “<span class="color_red bd_txt" style="font-size: 23px;">블록체인 기술의 발전 방향을 제시</span>합니다.”
                    </div>
                </div>
                <div class="w1160 ddnb_box">
                    <div class="title_box">
                        <div class="main_txt">
                            이중 탈중앙화 <br />
                            블록체인(DDNB)*
                        </div>
                        <div class="right_icon" style="background: #455A64;">
                            <img src="/abc/img/east_white_24dp.svg" alt="right">
                        </div>
                    </div>
                    <div class="cont">
                        <div class="ddnb_img">
                            <img src="/abc/img/ddnb.png" alt="ddnb">
                        </div>
                        <div class="ddnb_txt">
                            <div class="title"><span class="color_blue">D</span>ouble</div>
                            <div class="info">
                                : 서비스 노드와 데이터 노드를 분리
                            </div>
                            <div class="title"><span class="color_blue">D</span>ecentralized</div>
                            <div class="info">
                                : 탈중앙화 분산 장부
                            </div>
                            <div class="title"><span class="color_blue">N</span>etwork</div>
                            <div class="info">
                                : 독자 보안 인증 프로토콜
                            </div>
                            <div class="title"><span class="color_blue">B</span>lockchain</div>
                            <div class="info">
                                : 퍼블릭 + 프라이빗 시스템의 특장점을 겸비
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sec" id="sec3">
                <div class="achmt_box w1160">
                    <div class="title_box" style="background: none;">
                        <div class="main_txt">
                            연구 및 기술 <br />
                            개발 성과
                        </div>
                        <div class="right_icon" style="background: #546E7A;">
                            <img src="/abc/img/east_white_24dp.svg" alt="right">
                        </div>
                    </div>
                    <div class="dev_box">
                        <div class="dev_list">
                            <div class="title">초기 블록체인 기술에 대한 학습 및 연구</div>
                            <div class="box">Bitcoin</div>
                            <div class="box">Ethereum</div>
                            <div class="box">Hyperledger</div>
                            <div class="box">AltCoin</div>
                        </div>
                        <div class="dev_list">
                            <div class="title">하이브리드 블록체인 설계와 구현</div>
                            <div class="box">Public + Private + RDBMS</div>
                        </div>
                        <div class="dev_list">
                            <div class="title">참여형 서비스 모델의 블록체인</div>
                            <div class="box color_blue">디앱 빌더·런처 플랫폼</div>
                        </div>
                        <div class="dev_list">
                            <div class="title">가입형 블록체인 디앱 서비스</div>
                            <div class="box color_blue">디앱 서비스(DaaS)</div>
                        </div>
                        <div class="dev_list">
                            <div class="title">고신뢰성 네트워크 시스템 구현</div>
                            <div class="box">이중 탈중앙화 블록체인 구현</div>
                        </div>
                        <div class="dev_list">
                            <div class="title">다중 인증 방식을 결합한 통합형 인증 기술 개발</div>
                            <div class="box">독자적 인증 프로토콜</div>
                        </div>
                        <div class="dev_list">
                            <div class="title">컴퓨터 운영체제(OS)로서의 블록체인 개념 재정립</div>
                        </div>
                        <div class="dev_list">
                            <div class="title">기술 확장 기반으로 블록체인 통합 개발 플랫폼 구축</div>
                            <div class="box color_blue">블록체인 포털 사이트 전략</div>
                        </div>
                    </div>
                    <div class="block_img"></div>
                </div>
            </div>
            <div class="sec" id="sec4">
                <div class="w1160">
                    <div class="title_box" style="background: none;">
                        <div class="main_txt" style="color: #fff;">
                            사업 추진 및 내용 
                        </div>
                        <div class="right_icon" style="background: #263238;">
                            <img src="/abc/img/east_white_24dp.svg" alt="right">
                        </div>
                    </div>
                    <div class="obj_box">
                        <div class="obj_cont">
                            <div class="title">노드홈 <span>NODEHOME</span>
                            <div class="sub_tit">메인넷 구축 서비스</div>
                            </div>
                            
                            <div class="cont"> 
                                기업, 정부 기관 등 블록체인 시스템을 자체적으로 구축하려는 수요에 비하여 실증 또는 개발 완료 사례가 부족 <br />
                                이에 대응하는 노드홈 블록체인 시스템은 개념, 설계 검증 및 기능 구현, 성능 고도화의 과정을 완료한 상태
                            </div>
                        </div>
                        <div class="obj_cont">
                            <div class="title">노드풀 <span>NODEPOOL</span>
                            <div class="sub_tit">가입형 디앱 서비스</div>
                            </div>
                            
                            <div class="cont">
                                블록체인을 활용한 디앱 서비스를 제공하는 비즈니스에서 업무 구현 난이도를 본사의 전문 개발진의 역량으로  <br /> 해결 가능
                                솔루션 임대(공유)형 경제 생태계 모델의 확산 경향에 부응하여 사업 모델 추진
                            </div>
                        </div>
                        <div class="obj_cont">
                            <div class="title">노드웹 <span>NODEWEB</span>
                            <div class="sub_tit">검색 서비스, 포털 사이트</div>
                            </div>
                            
                            <div class="cont">
                                본격적인 블록체인 관련 포털 사이트가 없으며, 이를 블록체인 기술을 활용하여 구현한 사례는 더더욱 부재  <br />
                                블록체인 생태계 내의 사용자에게 원스톱·토탈 서비스를 제공함으로써 비즈니스의 잠재적 가치를 확대
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sec" id="sec5">
                <div class="w1160 bsn_box">
                    <div class="title_box" style="background: none;">
                        <div class="main_txt">
                            비즈니스 분석 및
                            전략
                        </div>
                        <div class="right_icon" style="background: #CFD8DC;">
                            <img src="/abc/img/east_white_24dp.svg" alt="right">
                        </div>
                    </div>
                    <div class="main_title">
                        비즈니스 동향
                    </div>
                    <div class="cont" style="background: #263238;">
                        <div class="bsn_left">
                            <div class="title">글로벌 IT 기업 :</div>
                            <div class="info">
                                <div class="bd_txt top_txt color_wt">생태계 및 플랫폼 서비스 구축 진행</div>
                                IBM : <br />
                                하이퍼레저 생태계 기반, 물류, 금융 등 실증 사례 다각화 중<br /><br />
                                마이크로소프트, 아마존, 오라클 : <br /> 
                                블록체인 운영 환경의 플랫폼(PaaS)화 <br /><br />
                                페이스북의 리브라 : <br />
                                금융 모델 중심의 <span class="bd_txt color_wt">스테이블 코인</span> 생태계 형성 <br />
                                마이크로소프트, 이더리움 등 하이퍼레저 공동체 진영에 합류<br />
                            </div>
                        </div>
                        <div class="bsn_right">
                            <div class="info" style="background: #f8f8f8; border-bottom: 1px solid lightslategray;">
                                <div  class="title">국내 대기업 :</div> 
                                <div>
                                    <div  class="bd_txt top_txt">암호화폐 생태계와 서비스 플랫폼의 통합 제공 전략</div>
                                    삼성SDS 넥스레저, LGCNS 모나체인, SK 클라우드Z : <br />
                                    암호화폐 발행 및 생태계 구축, 정부 규제를 고려하여 추진 중 <br /><br /> 
                                    POC(개념증명), 성능 개선 단계 수준 : <br />
                                    다양한 활용 시도에 비해 실제 비즈니스 모델이 검증된 사례가 부족<br />
                                </div>
                            </div>
                            <div class="info" style="border: 1px solid #ECEFF1; border-top: none;">
                                <div class="title">국내 IT 벤처 :</div>
                                <div >
                                    <div  class="bd_txt top_txt">자사의 강점에 적합한 블록체인 프로젝트 추진</div>
                                    그라운드X(카카오) 클레이튼, 라인(네이버) 링크체인 : 고객 사용 환경 최적화(UI), 광고 등 특화된 블록체인 서비스<br />
                                </div>
                            </div> 
                        </div>
                        <div class="cont_bot">
                            <span class="title">동향 진단 :</span>
                            <div class="info">
                                <span class="bd_txt" style="margin-left: 15px;">
                                    실무, 산업 현장에 직접 적용 가능한
                                    대안적 블록체인 솔루션(디앱-dApp Market)의 가능성 대두
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="line"></div>
                    <div class="main_title">
                        시장 분석
                    </div>
                    <div class="market_box">
                        <div class="top">
                            <div class="left">
                                <span class="bd_txt top_txt">금융 서비스 생태계 모델 :</span> <br />
                                암호화폐를 기반으로 금융 서비스, 결제 및 보증 시스템 등으로 독립적 가치 교환(거래) 생태계
                                구축. 비트코인, 이더리움, 알트코인, 여러 ICO프로젝트 및 최근의 리브라 프로젝트 등
                            </div>
                            <div class="right">
                            <span class="bd_txt top_txt">플랫폼 및 인프라 모델 :</span> <br />
                                블록체인을 운영하기 위한 클라우드 시스템(하드웨어) 구축. 마이크로소프트, 오라클, 아마존 등, 블록체인 구현과 디앱 운영을 위한 소프트웨어 플랫폼으로서는 IBM과 리눅스재단의 하이퍼레저
                            </div>
                        </div>
                        <div class="mid">
                            <span class="color_blue bd_txt top_txt">현재까지의 블록체인 비즈니스는 기반 기술 중심의 지형이 만들어지는 상황</span> <br />
                            향후 구체적인 가치 순환이 이루어지는 <span class="bd_txt">소비시장의 창출 가능성</span>을 기회로 분석 <br />
                            소프트웨어, 하드웨어, 컨텐츠, 데이터 등의 거래와 소비, 재생산이 <span class="bd_txt">어플리케이션(앱)</span>에 의해 구현될 것으로 예상 
                        </div>
                        <div class="bot">
                            <span class="bd_txt color_red top_txt">디앱 프로젝트 네트워크 모델 </span>: <br />
                            다양한 디앱의 등장으로 블록체인 기반 <span class="bd_txt">디지털 상품의 실질적인 소비시장 형성 및 확장</span> <br />
                            <span class="bd_txt">디앱 개발 및 운영의 생산성 구현</span>에 대한 대응은 <span class="bd_txt">인프라 시장 이상의 가치</span>를 제공할 것으로 기대                            
                        </div>
                    </div>
                    <div class="line"></div>
                    <div class="main_title">
                        시장 전망
                    </div>
                    <div class="bsnview_box">
                        <div style="overflow: hidden;">
                            <div class="left">
                                <img src="/abc/img/bsn_img.jpg" alt="시장전망_그래프">
                                <div class="info">
                                    <ul>
                                        <li>공공부문 블록체인 서비스 시장 : 온라인 유통과 물류시스템 연계를 위한 표준정보시스템 개발</li>
                                        <li>기업용 블록체인 비즈니스 : 납품 계약 및 공동 프로젝트 추진 중 </li>
                                        <li>개인용 서비스 분야 : 자체 서비스 기획 완료</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="right">
                                <div class="right_info">
                                    <span class="bd_txt">[1]	Government Segment</span> <br /> 
                                    Application, Middleware, and Infrastructure Providers
                                    Asset Registry, Identity Management, Payments, Smart Contracts, Voting
                                    <span class="bd_txt">USD 3,458.8 Million by 2023</span>
                                    (Market&Market) <br /><br />
                                    <span class="bd_txt">[2]	Enterprise Segment</span><br /> 
                                    Enterprise Blockchain Revenue to Surpass <span class="bd_txt">$20 Billion by 2025</span> (Tractica) <br /><br />
                                    <span class="bd_txt">[3]	Personal Service Segment</span> <br />
                                    기업 시장과 동급(또는 그 이상)으로 예측 첨단 기술 간 융합 서비스 중심의 스타트업 생태계 <br /><br />
                                    <span class="bd_txt">[✱] Other Source</span> <br />
                                    Blockchain Technology Market Worth
                                    <span class="bd_txt">$57,641.3 Million By 2025</span>
                                    (grandviewresearch.com)
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="line"></div>
                    <div class="main_title">
                        비즈니스 추진 전략
                    </div>
                    <div class="bsngo_box">
                        <div class="left">
                            <div class="title">비즈니스 기반 구축(2020) </div>
                            <ul>
                                <li>기술 기반 : 이중탈중앙화 중심의 블록체인 원천기술 확보</li>
                                <li>인재 기반 : 개발자 전문가 등 인재 네트워크 구축</li>
                                <li>사업 기반 : 공공부문에서 출발하여 기업용, 개인화 서비스 확장</li>
                            </ul>
                            <div class="title">비즈니스 성과 축적(~2022) </div>
                            <ul>
                                <li>노드홈 플랫폼을 중심으로 융합기술 개발 환경 완성</li>
                                <li>디앱 네트워크를 통해 실용 영역 소프트웨어 공급 사업 확대</li>
                                <li>스마트시티 솔루션, 공공 서비스 등 대규모 프로젝트 추진</li>
                            </ul>
                            <div class="title">블록체인 시장 주도(~2024) </div>
                            <ul>
                                <li>기업용 솔루션 부문 블록체인 디앱 점유 확장 : 기술적 검증</li>
                                <li>개인화 및 소셜 네트워크 등 서비스 확장 : 활용성 검증</li>
                                <li>스마트시티 솔루션 중심 글로벌 비즈니스 추진</li>
                            </ul>                       
                        </div>
                        <div class="right">
                            <img src="/abc/img/bsn_img2.png" alt="비즈니스 추진 전략">
                        </div>
                    </div>
                </div>
            </div>
            <div class="sec" id="sec6">
                <div class="w1160">
                    <div class="title_box" style="background: none">
                        <div class="main_txt">
                            NODEHOME
                        </div>
                        <div class="sub_txt">
                            탈중앙화 서비스 네트워크
                        </div>
                        <div class="right_icon" style="background: #263238; ">
                            <img src="/abc/img/east_white_24dp.svg" alt="right">
                        </div>
                    </div>

                    <div class="ndh_top w1160">
                        <div class="main_title">
                            노드홈 생태계
                        </div>
                        <div class="ndh_center w768_none">                            
                            <img class="ndh_icon" src="/abc/img/nodehome.svg" alt="nodehome">
                            <img class="ndh_back" src="/abc/img/ndh_back.svg" alt="background">
        
                            <div class="mid mid_top">DATABASE TECHNOLOGY <div></div></div>
                            <div class="mid mid_bot">BLOCKCHAIN TECHNOLOGY <div></div></div>
        
                            <div class="box box_left pos_top">
                                <div class="txt">
                                    예측시장모델 플랫폼
                                </div>
                                <div class="name">델리크라시(Delicracy)</div>
                            </div>
                            <div class="box box_left pos_mid">
                                <div class="txt">
                                    공유경제 플랫폼
                                </div>
                                <div class="name">커먼스토어(Commonstore)</div>
                            </div>
                            <div class="box box_left pos_bot">
                                <div class="txt">
                                    자산 거래 시스템
                                </div>
                                <div class="name">체인덱스(ChainDex)</div>
                            </div>
        
                            <div class="box box_right pos_top">
                                <div class="txt">
                                    저작권 거래 시스템
                                </div>
                                <div class="name">프로퍼덱스(ProperDex)</div>
                            </div>
                            <div class="box box_right pos_mid">
                                <div class="txt">
                                    설문조사, 투표 시스템
                                </div>
                                <div class="name">ASK4DATA/D-VOTING</div>
                            </div>
                            <div class="box box_right pos_bot">
                                <div class="txt">
                                    확장 데이터 솔루션
                                </div>
                                <div class="name">빅데이터/클라우드 시스템</div>
                            </div>
        
                        </div>  
                        <div class="w768_block ndh_min">
                            <div class="top">
                                <img src="/abc/img/nodehome.svg" alt="nodehome">
                            </div>
                            <div class="min_ndh_item">
                                <div class="item">
                                    <div class="top">
                                        예측시장모델 플랫폼
                                    </div>
                                    <div class="bot">
                                        델리크라시(Delicracy)
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="top">
                                        저작권 거래 시스템
                                    </div>
                                    <div class="bot">
                                        프로퍼덱스(ProperDex)
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="top">
                                        공유경제 플랫폼
                                    </div>
                                    <div class="bot">
                                        커먼스토어(Commonstore)
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="top">
                                        설문조사, 투표 시스템
                                    </div>
                                    <div class="bot">
                                        ASK4DATA/D-VOTING
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="top">
                                        자산 거래 시스템
                                    </div>
                                    <div class="bot">
                                        체인덱스(ChainDex)
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="top">
                                        확장 데이터 솔루션
                                    </div>
                                    <div class="bot">
                                        빅데이터/클라우드 시스템
                                    </div>
                                </div>
                            </div>
                            <div class="min_ndh_bot">
                                <div>
                                    DATABASE TECHNOLOGY
                                </div>
                                <div>
                                    BLOCKCHAIN TECHNOLOGY
                                </div>
                            </div>
                        </div>                      
                    </div>
                    <div class="line"></div>
                    <div class="main_title">
                        NODEHOME
                    </div>
                    <div class="nodehome_cont nodehome_cont1">
                        <div class="nh_img">
                            <img src="/abc/img/nodehome_img1.png" alt="이미지">
                        </div>  
                        <div class="cont">
                            블록체인 기술을 활용하는 <span class="bd_txt">암호화 토큰</span>은 암호 화폐와 거버넌스 토큰으로 구분됩니다. <br />
                            지불 수단으로서 <span class="bd_txt">암호 화폐</span>가 현재 블록체인의 대명사로 널리 알려져 있고<br />
                            상대적으로 <span class="bd_txt">거버넌스 토큰</span>에 대한 이해와 성과는 아직 산업의 초기 단계에 머무르고 있습니다.<br />
                            <br />
                            블록체인 비즈니스는 디앱 생태계로 완성됩니다. <br />
                            <span class="bd_txt">디앱</span>은 블록체인 위에서 암호 화폐와 거버넌스 토큰으로 가동되는 <br />
                            탈중앙화 어플리케이션입니다. <br />
                            <br />
                            <span class="bd_txt">2027년까지 1620억 달러 시장(*)</span>을 바라보는 블록체인 비즈니스는 <br />
                            실제 창의적인 아이디어와 다양한 기능으로 무장한 <span class="bd_txt">디앱에 의해 실현</span>될 것입니다. <br />
                            에너지, 건강, 자동화, 핀테크 등 대부분의 산업 분야에서 <span class="bd_txt">디앱</span>이 활용될 것입니다. <br />
                            <a href="https://www.researchandmarkets.com/reports/4787409/blockchain-market-to-2027-global-analysis-and" style="font-size: 12px;" class="color_blue" target="_blank">
                                * https://www.researchandmarkets.com/reports/4787409/blockchain-market-to-2027-global-analysis-and
                            </a>
                            <br /><br />
                            <span class="bd_txt">노드홈</span>은 <span class="bd_txt">디앱</span>을 만들고 운영하는 최적의 시스템입니다.<br />
                            간단한 가입과 설정만으로 암호화 토큰을 발행하고<br />
                            <span class="bd_txt">거래앱</span>(지갑)과 <span class="bd_txt">인증앱</span>(거버넌스)이 생성되어 모바일 등 다양한 환경에서 사용할 수 있습니다.
                        </div>
                    </div>
                    <div class="nodehome_cont nodehome_cont2">
                        <div class="nh_img">
                            <img src="/abc/img/nodehome_img2.png" alt="nodehome_img">
                        </div>  
                        <div class="cont">
                            <span>노드홈</span>은 개발자를 위한 블록체인 통합 개발 환경입니다.<br />
                            누구나 쉽게 블록체인 기술을 배우고 활용 가능한 디앱 프로그램을 만들 수 있습니다.<br />
                            기존의 운영 중인 중앙화 시스템을 간편하게 블록체인 모델로 변환시킬 수 있습니다.<br />
                            <br />
                            <span>노드홈</span>은 <span>동적 이중 블록체인 네트워크</span>에 의해 안정성과 신뢰성을 구현하였습니다.<br />
                            노드 간의 데이터 교환이 이루어지는 <span>프로토콜 수준</span>에서 가동되는 <span>컨센서스 알고리즘</span>으로<br />
                            <span>빠른 처리 속도</span>와 <span>강력한 보안성</span>을 달성하였습니다.<br />
                            <br />
                            <span>노드홈</span>은 유연한 생산성과 확장성을 보장합니다.<br />
                            <span>오픈소스</span> 정책과 검증된 프레임워크의 활용으로 투명성을 유지하면서<br />
                            생태계에 참여하는 디앱 개발의 성과물을 집약하여 공유하는<br />
                            <span>지속가능한 개방적 블록체인 개발 플랫폼</span>을 지향합니다.<br />
                            <br />
                            <span>노드홈</span>은 또한 미래지향적 비전으로 만들어지고 있습니다.<br />
                            <span>인공지능</span>(Artificial Intelligence)과 <span>빅데이터</span>의 주요 기술들을<br />
                            <span>블록체인과 융합</span>(Convergence)시키는 목적으로 개발이 진행되고 있습니다.
                        </div>
                    </div>
                    <div class="ndcloud_box">
                        <div class="top">
                            <div class="main_title">
                                NODE<span style="font-weight: 200; color: #607D8B;">HOME</span>CLOUD
                            </div>
                            <div class="cont">
                                <div class="top_txt">
                                    온라인을 통해 디앱을 개발하고, 배포하여 운영하는 <span>클라우드 버전</span>입니다.
                                </div>
                                <ul>
                                    <li>개발자를 위한 블록체인 디앱 통합 개발 환경</li>
                                    <li>노드홈 시스템 활용 라이브러리 및 API</li>
                                    <li>서비스 및 데이터 운영 노드 생성 및 참여 시스템</li>
                                    <li>참여 노드 운영자를 위한 통합 모니터링 서비스</li>
                                </ul>
                            </div>
                        </div>
                        <div class="mid">
                            <div class="main_title">
                                AUTO<span style="font-weight: 200; color: #607D8B;">(NOMOUS)</span>
                                - NODE<span style="font-weight: 200; color: #607D8B;">HOME</span>CLOUD
                            </div>
                            <div class="cont">
                                <div class="top_txt">
                                    독립 운영 목적으로 설계, 구축된 <span class="bd_txt">자율형 노드홈 클라우드</span> 시스템입니다. <br />
                                    노드용 서버 하드웨어 및 최적화된 라이브러리를 탑재시킨 실제 블록체인 구현 모델입니다.
                                </div>
                                <ul>
                                    <li><span class="bd_txt">엔터프라이즈</span> 버전 : 기업 및 글로벌 비즈니스용</li>
                                    <li><span class="bd_txt">거번먼트</span> 버전 : 지방정부 및 공공 행정기관용</li>
                                    <li><span class="bd_txt">커뮤니티</span> 버전 : 개발자, 스타트업, 조합, 마을 등 공동체용</li>
                                </ul>
                            </div>
                        </div>
                        <div class="bot">
                            <div class="cont_ndhos">
                                <div class="main_title">
                                    NODE<span style="font-weight: 200; color: #607D8B;">HOME</span>OS
                                </div>
                                <div class="cont">
                                    <div class="top_txt">
                                        리눅스OS에 <span class="bd_txt">노드홈</span> 기술을 패키지로 통합한 <span class="bd_txt">운영체제(OS) 버전</span>입니다.
                                    </div>
                                    <ul>
                                        <li><span class="bd_txt">노드홈</span> 클라우드 버전을 <span class="bd_txt">서버용 운영체제</span>로 통합</li>
                                        <li>블록체인 개발, 운영을 위한 패키지 포함</li>
                                        <li>최신 버전의 리눅스OS 활용, 성능 및 보안의 최적화</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cont_abcos">
                                <img src="/abc/img/image024.png" alt="펭귄">
                                <div class="txtbox">
                                    <div class="main_title">
                                        ABC<span style="font-weight: 200; color: #607D8B;">OS</span>
                                    </div>
                                    UBUNTU latest version <br />
                                    ABCN by dDNA / ABCP / ABCD <br />
                                    Docker / Java / Tomcat / Hyperledger
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="line"></div>
                    <div class="main_title">
                        NODEPOOL
                    </div>
                    <div class="ndpool_box">
                        <div class="top">
                            <div class="ndpool">
                                <img src="/abc/img/image025.svg" alt="cloude">
                                <div class="txt">
                                    <span>Daas</span> <br />
                                    dApp as a Service
                                </div>
                            </div>
                            <div class="ndp_top_txt">
                                <span class="bd_txt">노드풀</span>은 암호화 토큰 기반 하이브리드 디앱을 서비스 제공 사업으로 활용하는 모델입니다. <br />
                                블록체인의 장점을 활용, 사용자(서비스 제공자와 이용자)에게 편의성을 제공합니다.
                            </div>
                            <div class="ndpool_info">
                                <div class="info_box w768_none">
                                    <div class="ndp_info_item">
                                        <div class="item">
                                            <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000">
                                                <g>
                                                    <rect fill="none" height="24" width="24"/>
                                                </g>
                                                <g>
                                                    <g>
                                                        <path d="M20,3H4C2.9,3,2,3.9,2,5v14c0,1.1,0.9,2,2,2h16c1.1,0,2-0.9,2-2V5 C22,3.9,21.1,3,20,3z M20,19H4V5h16V19z" fill-rule="evenodd"/>
                                                        <polygon fill-rule="evenodd" points="19.41,10.42 17.99,9 14.82,12.17 13.41,10.75 12,12.16 14.82,15"/>
                                                        <rect fill-rule="evenodd" height="2" width="5" x="5" y="7"/>
                                                        <rect fill-rule="evenodd" height="2" width="5" x="5" y="11"/>
                                                        <rect fill-rule="evenodd" height="2" width="5" x="5" y="15"/>
                                                    </g>
                                                </g>
                                            </svg> <br />
                                             <div class="main_txt">SURVEY • ABC : <br /> 설문 시스템</div>
                                            <div class="sub_txt">사용자가 직접 설문을 만들고 수집된 데이터를 블록체인에 저장 활용하는 시스템</div>
                                        </div>
                                    </div>
                                    <div class="ndp_info_item">
                                        <div class="item">
                                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M18 13h-.68l-2 2h1.91L19 17H5l1.78-2h2.05l-2-2H6l-3 3v4c0 1.1.89 2 1.99 2H19c1.1 0 2-.89 2-2v-4l-3-3zm1 7H5v-1h14v1zm-7.66-4.98c.39.39 1.02.39 1.41 0l6.36-6.36c.39-.39.39-1.02 0-1.41L14.16 2.3c-.38-.4-1.01-.4-1.4-.01L6.39 8.66c-.39.39-.39 1.02 0 1.41l4.95 4.95zm2.12-10.61L17 7.95l-4.95 4.95-3.54-3.54 4.95-4.95z"/></svg>
                                            <div class="main_txt">VOTE • ABC : <br />투표 시스템</div>
                                            <div class="sub_txt">사회적인 의사결정에 즉시 활용 가능한 블록체인 투표 플랫폼 <br />
                                                스스로 만들고 자신의 단체에 적용할 수 있는 사용자 주도형 거버넌스 가능</div>
                                        </div>
                                    </div>
                                    <div class="ndp_info_item">
                                        <div class="item">
                                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M22 19h-6v-4h-2.68c-1.14 2.42-3.6 4-6.32 4-3.86 0-7-3.14-7-7s3.14-7 7-7c2.72 0 5.17 1.58 6.32 4H24v6h-2v4zm-4-2h2v-4h2v-2H11.94l-.23-.67C11.01 8.34 9.11 7 7 7c-2.76 0-5 2.24-5 5s2.24 5 5 5c2.11 0 4.01-1.34 4.71-3.33l.23-.67H18v4zM7 15c-1.65 0-3-1.35-3-3s1.35-3 3-3 3 1.35 3 3-1.35 3-3 3zm0-4c-.55 0-1 .45-1 1s.45 1 1 1 1-.45 1-1-.45-1-1-1z"/></svg>
                                            <div class="main_txt">AUTH • ABC : <br />인증 시스템</div>
                                            <div class="sub_txt">노드풀이 분산형 루트 인증 서비스를 제공하는 블록체인 인증 시스템 <br />
                                                일정한 절차에 의해 승인된 사용자가 인증기관으로 등록되어 증명서를 발급</div>
                                        </div>
                                    </div>
                                    <div class="ndp_info_item ndp_info_item_bot">
                                        <div class="item">
                                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 14.5v-9l6 4.5-6 4.5z"/></svg>
                                            <div class="main_txt">MEDIA • ABC : <br />뉴스 서비스 시스템</div>
                                            <div class="sub_txt">가짜 뉴스 문제를 근원적으로 막을 수 있는 블록체인 기반 뉴스 서비스</div>
                                        </div>
                                    </div>
                                    <div class="ndp_info_item ndp_info_item_bot">
                                        <div class="item">
                                            <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><g><rect fill="none" height="24" width="24"/></g><g><g><g><g><path d="M16,13c3.09-2.81,6-5.44,6-7.7C22,3.45,20.55,2,18.7,2c-1.04,0-2.05,0.49-2.7,1.25C15.34,2.49,14.34,2,13.3,2 C11.45,2,10,3.45,10,5.3C10,7.56,12.91,10.19,16,13z M13.3,4c0.44,0,0.89,0.21,1.18,0.55L16,6.34l1.52-1.79 C17.81,4.21,18.26,4,18.7,4C19.44,4,20,4.56,20,5.3c0,1.12-2.04,3.17-4,4.99c-1.96-1.82-4-3.88-4-4.99C12,4.56,12.56,4,13.3,4z"/><path d="M19,16h-2c0-1.2-0.75-2.28-1.87-2.7L8.97,11H1v11h6v-1.44l7,1.94l8-2.5v-1C22,17.34,20.66,16,19,16z M3,20v-7h2v7H3z M13.97,20.41L7,18.48V13h1.61l5.82,2.17C14.77,15.3,15,15.63,15,16c0,0-1.99-0.05-2.3-0.15l-2.38-0.79l-0.63,1.9l2.38,0.79 c0.51,0.17,1.04,0.26,1.58,0.26H19c0.39,0,0.74,0.23,0.9,0.56L13.97,20.41z"/></g></g></g></g></svg>
                                            <div class="main_txt">
                                                DONATION • ABC : <br />기부 시스템
                                            </div>
                                            <div class="sub_txt">블록체인을 활용한 기부 플랫폼, 사회적 공헌과 투명성 제고의 선순환 모델</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="min_ndpool w768_block">
                                    <div class="min_ndpool_item">
                                        <div class="icon"><svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000">
                                            <g>
                                                <rect fill="none" height="24" width="24"/>
                                            </g>
                                            <g>
                                                <g>
                                                    <path d="M20,3H4C2.9,3,2,3.9,2,5v14c0,1.1,0.9,2,2,2h16c1.1,0,2-0.9,2-2V5 C22,3.9,21.1,3,20,3z M20,19H4V5h16V19z" fill-rule="evenodd"/>
                                                    <polygon fill-rule="evenodd" points="19.41,10.42 17.99,9 14.82,12.17 13.41,10.75 12,12.16 14.82,15"/>
                                                    <rect fill-rule="evenodd" height="2" width="5" x="5" y="7"/>
                                                    <rect fill-rule="evenodd" height="2" width="5" x="5" y="11"/>
                                                    <rect fill-rule="evenodd" height="2" width="5" x="5" y="15"/>
                                                </g>
                                            </g>
                                        </svg> 
                                        </div>
                                        <div class="title">
                                            SURVEY • ABC : 설문 시스템
                                        </div>
                                        <div class="cont">
                                            사용자가 직접 설문을 만들고 수집된 데이터를 <br />
                                            블록체인에 저장 활용하는 시스템
                                        </div>
                                    </div>
                                    <div class="min_ndpool_item">
                                        <div class="icon"><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M18 13h-.68l-2 2h1.91L19 17H5l1.78-2h2.05l-2-2H6l-3 3v4c0 1.1.89 2 1.99 2H19c1.1 0 2-.89 2-2v-4l-3-3zm1 7H5v-1h14v1zm-7.66-4.98c.39.39 1.02.39 1.41 0l6.36-6.36c.39-.39.39-1.02 0-1.41L14.16 2.3c-.38-.4-1.01-.4-1.4-.01L6.39 8.66c-.39.39-.39 1.02 0 1.41l4.95 4.95zm2.12-10.61L17 7.95l-4.95 4.95-3.54-3.54 4.95-4.95z"/></svg></div>
                                        <div class="title">
                                            VOTE • ABC :
                                            투표 시스템
                                        </div>
                                        <div class="cont">
                                            사회적인 의사결정에 즉시 활용 가능한 블록체인 투표 플랫폼 <br />
                                            스스로 만들고 자신의 단체에 적용할 수 있는 사용자 주도형 거버넌스 가능
                                        </div>
                                    </div>
                                    <div class="min_ndpool_item">
                                        <div class="icon"><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M22 19h-6v-4h-2.68c-1.14 2.42-3.6 4-6.32 4-3.86 0-7-3.14-7-7s3.14-7 7-7c2.72 0 5.17 1.58 6.32 4H24v6h-2v4zm-4-2h2v-4h2v-2H11.94l-.23-.67C11.01 8.34 9.11 7 7 7c-2.76 0-5 2.24-5 5s2.24 5 5 5c2.11 0 4.01-1.34 4.71-3.33l.23-.67H18v4zM7 15c-1.65 0-3-1.35-3-3s1.35-3 3-3 3 1.35 3 3-1.35 3-3 3zm0-4c-.55 0-1 .45-1 1s.45 1 1 1 1-.45 1-1-.45-1-1-1z"/></svg></div>
                                        <div class="title">
                                            AUTH • ABC : 인증 시스템
                                        </div>
                                        <div class="cont">
                                            노드풀이 분산형 루트 인증 서비스를 제공하는 블록체인 인증 시스템 <br />
                                            일정한 절차에 의해 승인된 사용자가 인증기관으로 등록되어 증명서를 발급
                                        </div>
                                    </div>
                                    <div class="min_ndpool_item">
                                        <div class="icon"><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 14.5v-9l6 4.5-6 4.5z"/></svg></div>
                                        <div class="title">
                                            MEDIA • ABC :
                                            뉴스 서비스 시스템
                                        </div>
                                        <div class="cont">
                                            가짜 뉴스 문제를 근원적으로 막을 수 있는 블록체인 기반 뉴스 서비스
                                        </div>
                                    </div>
                                    <div class="min_ndpool_item">
                                        <div class="icon"><svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><g><rect fill="none" height="24" width="24"/></g><g><g><g><g><path d="M16,13c3.09-2.81,6-5.44,6-7.7C22,3.45,20.55,2,18.7,2c-1.04,0-2.05,0.49-2.7,1.25C15.34,2.49,14.34,2,13.3,2 C11.45,2,10,3.45,10,5.3C10,7.56,12.91,10.19,16,13z M13.3,4c0.44,0,0.89,0.21,1.18,0.55L16,6.34l1.52-1.79 C17.81,4.21,18.26,4,18.7,4C19.44,4,20,4.56,20,5.3c0,1.12-2.04,3.17-4,4.99c-1.96-1.82-4-3.88-4-4.99C12,4.56,12.56,4,13.3,4z"/><path d="M19,16h-2c0-1.2-0.75-2.28-1.87-2.7L8.97,11H1v11h6v-1.44l7,1.94l8-2.5v-1C22,17.34,20.66,16,19,16z M3,20v-7h2v7H3z M13.97,20.41L7,18.48V13h1.61l5.82,2.17C14.77,15.3,15,15.63,15,16c0,0-1.99-0.05-2.3-0.15l-2.38-0.79l-0.63,1.9l2.38,0.79 c0.51,0.17,1.04,0.26,1.58,0.26H19c0.39,0,0.74,0.23,0.9,0.56L13.97,20.41z"/></g></g></g></g></svg></div>
                                        <div class="title">
                                            DONATION • ABC :
                                            기부 시스템
                                        </div>
                                        <div class="cont">
                                            블록체인을 활용한 기부 플랫폼, 사회적 공헌과 투명성 제고의 선순환 모델
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="line"></div>
                    <div class="main_title">
                        NODEWEB
                    </div>
                    <div class="ndweb_box ndweb_box1">
                        <div class="left">
                            <span class="bd_txt">노드웹</span>은 블록체인의 철학을 담은 미래지향형 <span class="bd_txt">검색엔진</span>입니다. <br />
                            누구나 검색엔진의 시스템 운영자가 될 수 있습니다. <br />
                            검색 인덱스를 탑재한 참여 노드의 집합(DAO)으로 전체 시스템이 구성됩니다. <br />
                            <br />
                            검색 인덱스 생성을 트랜잭션으로 변환하여 블록체인에 저장합니다. <br />
                            인덱스 데이터를 제공하는 블록체인 노드를 참여형으로 구성합니다. <br />
                            검색 데이터에 대한 평가를 통해 인덱스의 정확도가 향상됩니다. <br />
                            등급(LEVEL)과 분야(AREA), 지역(LOCAL)의 <span class="bd_txt">3차원 카테고리</span>에 따르는
                            노드 그룹을 설정하여 검색의 효율성과 성능을 구현합니다. <br />
                            <br />
                            검색 정확도를 위해 다음과 같은 기술적 요소를 활용합니다. <br />
                            - 참여형 평가·보상 시스템<br />
                            - 빅데이터 분석을 통한 평점 시스템<br />
                            - 데이터 이력 관리 시스템<br />
                            - 카테고리(태그) 데이터 모델 활용<br />
                            - 평가에 따르는 노드 진화형 생태계
                        </div>
                        <div class="right">
                            <img src="/abc/img/nodeweb.png" alt="nodeweb">
                        </div>
                    </div>
                    <div class="ndweb_box ndweb_box2">
                        <div class="left">
                            <span class="bd_txt">노드웹</span>은 지능형 디렉토리 검색 서비스와 <br />
                            데이터 기반 랭킹 검색 서비스를 제공합니다. <br />
                            또한 다양한 블록체인 정보를 제공하는 포털 사이트의 역할을 합니다. <br />
                            <br /> <span class="bd_txt">프로젝트 웨어하우스</span> <br />
                            서비스 제공자, 개발자에 의해 만들어진 프로젝트 정보를 제공합니다. <br />
                            다양한 블록체인 관련 기술, 데이터, 리소스 등을 수록합니다. <br />
                            <br /> <span class="bd_txt">멤버스 어카운트</span> <br />
                            암호지갑, 거버넌스 앱 기능을 제공하는 개인화 환경입니다. <br />
                            검색된 정보를 북마크, 공유할 수 있고, 개인 시스템 이력을 관리할 수 있습니다. <br />
                            <br /> <span class="bd_txt">코워킹 커뮤니티</span> <br />
                            거버넌스 기능을 중심으로 참여자 중심의 커뮤니티 서비스를 제공합니다. <br /> 
                            소셜 네트워크, 협업 환경 등으로도 활용 가능합니다.<br />
                            <br /> <span class="bd_txt">미디어</span> <br />
                            노드풀의 미디어 솔루션을 활용하여 뉴스 포털 방식으로 구성되는 서비스입니다. <br /> 
                            블록체인 기반의 뉴스 미디어는 신뢰성 수준을 극대화할 것입니다.      
                        </div>
                        <div class="right">
                            <img src="/abc/img/nodeweb2.png" alt="nodeweb">
                        </div>
                    </div>

                    <div class="title_box" style="background: none;">
                        <div class="main_txt">
                            사업 추진 방안
                        </div>
                        <div class="right_icon" style="background: #455A64;">
                            <img src="/abc/img/east_white_24dp.svg" alt="right">
                        </div>
                    </div>
                    <div class="gobsn_box">
                        <div class="bg_line"></div>
                        <div class="bg_line"></div>
                        <div class="bg_line"></div>
                        <div class="bg_line"></div>
                        <div class="item" style="background: #fff;">
                            <div class="main_txt">노드홈 : 메인넷 구축 서비스</div>
                            <div class="sub_txt">기업 대상, 지자체 대상 블록체인 메인넷 구축 서비스 공급 매출</div>
                        </div>
                        <div class="item" style="background: #fff;">
                            <div class="main_txt">노드풀 : 가입형 디앱 서비스</div>
                            <div class="sub_txt">설문, 미디어 등 무료 배포, 프리미엄(유료) 버전 가입 유도</div>
                        </div>
                        <div class="item" style="background: #fff;">
                            <div class="main_txt">노드웹 : 검색 서비스</div>
                            <div class="sub_txt">비즈니스 모델 추천·중개, 일반 광고 수익, 유료 컨텐츠 판매</div>
                        </div>
                        <div class="item" style="background: #fff;">
                            <div class="main_txt">공공부문</div>
                            <div class="sub_txt">정부과제 수행 및 데이터 활용 플랫폼</div>
                        </div>
                        <div class="item" style="background: #fff;">
                            <div class="main_txt">시스템 통합</div>
                            <div class="sub_txt">탈중앙화(블록체인)와 중앙화 시스템 연계 구축 사업</div>
                        </div>

                    </div>
                    <div class="line"></div>
                    <div class="main_title">
                        마케팅 전략
                    </div>
                    <div class="mkt_box">
                        <span class="bd_txt">언론•미디어 기사</span> : 보도용 기사 제공, 인터뷰 방식의 기사 게재 유치 <br />
                        <span class="bd_txt">소셜 미디어</span> : 페이스북, 유튜브 공식 계정 및 페이지, 채널 등 개설<br />
                        <span class="bd_txt">블로그 네이티브 광고</span> : 스토리 텔링 방식, 미디엄, 네이버 블로그, 자체 블로그 및 홈페이지<br />
                        <div class="line"></div>
                        <span class="bd_txt">기술 세미나 & 밋업</span> : 블록체인 기술 개발 스터디, 개발자 커뮤니티 활성화 지원, <span class="bd_txt color_blue">국내 & 해외</span><br />
                        <span class="bd_txt">비즈니스 밋업</span> : 노드홈 사업화 관련 협력사 및 파트너 네트워킹, <span class="bd_txt color_blue">국내 & 해외</span><br />
                        <span class="bd_txt">컨퍼런스 참가, 개최</span> : 블록체인 기술 세션 연사 참가, 블록체인 컨퍼런스 개최, <span class="bd_txt color_blue">국내 & 해외</span><br />
                        <div class="line"></div>
                        <span class="bd_txt">온•오프 광고물</span> : 배너, 브로셔 제작, 온라인 미디어 게시•배포, 인쇄물 제작 및 DM 발송 <br />
                        <span class="bd_txt">기념품 제작</span> : 이미지 메이킹 굿즈 제작, 바운티 및 서포터 행사, 네트워킹 시 기념품 제공    <br />                    
                        <div class="line"></div>
                        <span class="bd_txt">커뮤니티 조직</span> : 온라인 서포터즈 조직, 밋업 및 마케팅 행사 등을 통한 커뮤니티 활성화 <br />
                        <span class="bd_txt">교육</span> : 서포터즈 및 관계자 대상 교육 훈련 실시, 블록체인 전문가 양성 등 다양한 기회 제공<br />
                    </div>
                </div>
            </div>
            <div class="sec abcinfo_box" id="sec7">
                <div class="w1160">
                    <div class="title_box">
                        <div class="main_txt">
                            기업정보 및 연혁
                        </div>
                        <div class="sub_txt">
                            주식회사 에이비씨(ABC Inc.)
                        </div>
                        <div class="right_icon" style="background: #263238;">
                            <img src="/abc/img/east_white_24dp.svg" alt="right">
                        </div>
                    </div>
                    <div class="cont">
                        <div style="overflow: hidden;">
                            <div class="logo_img">
                                <img src="/abc/img/biglogo.svg" alt="로고">
                            </div>
                            <div class="abcinfo_txt">
                                <div class="title">주식회사 에이비씨(ABC Inc.)</div>
                                <div class="info">
                                    <div class="top">
                                        <div style="overflow: hidden;">
                                            <div class="left">설립일</div>
                                            <div class="right">: 2017년 3월 21일, 벤처기업(기술보증기금)</div>
                                        </div>
                                        <div style="overflow: hidden;">
                                            <div class="left" style="letter-spacing: 0;">대표이사</div>
                                            <div class="right">: 임종남(Lim, Jong-Nam)</div>
                                        </div>
                                        <div style="overflow: hidden;">
                                            <div class="left">소재지</div>
                                            <div class="right">: 서울특별시 금천구 가산디지털2로 123 (월드메르디앙벤처센터 2차 602호)</div>
                                        </div>
                                        <div style="overflow: hidden;">
                                            <div class="left">생산품</div>
                                            <div class="right">: 소프트웨어</div>
                                        </div>
                                    </div>                                    
                                    <span class="bd_txt">기술 기업 증명 </span><br />
                                    <span class="color_blue">벤처기업 지정</span> : 기술신용보증기금, 2019 <br />
                                    <span class="color_blue">기업부설연구소 설립</span> : 한국기술진흥협회, 2018 <br />
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="abc_year">
                    <div class="w1160">
                        <div class="top_img_back"><img src="/abc/img/abcinfo_top.svg" alt="탑"></div>
                        <div class="main_title" style="text-align: center; color: #90A4AE;">
                            주요 사업 추진 결과
                        </div>
                        <div class="cont w768_none">
                            <div class="year_box" style="background: #90A4AE;">
                                2017
                            </div>
                            <div class="year_line">
                                <div class="year_in year_right year_1703">
                                    <div class="circle circle_left"></div>
                                    <div class="story story_right">
                                        <span class="number">03 </span> 포아이 주식회사 설립
                                    </div>
                                </div>
                            </div>
                            <div class="year_line">
                                <div class="year_in year_left year_1712">
                                    <div class="circle circle_right"></div>
                                    <div class="story story_left">
                                        <span class="number">12 </span> 스위스 보스코인(boscoin.io) 예측시장모델 <br> 시스템 수출 납품
                                    </div>
                                </div>
                            </div>
                            <div class="year_box year_box_2018" style="background: #B0BEC5;">
                                2018
                            </div>
                            <div class="year_line">
                                <div class="year_in year_right year_1804">
                                    <div class="circle circle_left"></div>
                                    <div class="story story_right">
                                        <span class="number">04 </span> 특허출원 : <br />
                                        탈중앙화 서비스 플랫폼(10-2018-0041373) <br />
                                        전자지갑주소 표시 방법(10-2018-0040114)
                                    </div>
                                </div>
                            </div>
                            <div class="year_line">
                                <div class="year_in year_left year_1805">
                                    <div class="circle circle_right"></div>
                                    <div class="story story_left">
                                        <span class="number">05 </span> 싱가폴 PAX DATATECH PTE Ltd. : <br /> 블록체인 플랫폼 계약
                                    </div>
                                </div>
                            </div>
                            <div class="year_box year_box_2019" style="background: #CFD8DC;">
                                2019
                            </div>
                            <div class="year_line">
                                <div class="year_in year_right year_1901">
                                    <div class="circle circle_left"></div>
                                    <div class="story story_right">
                                        <span class="number">01 </span> 
                                        <span class="bd_txt color_fff">노드홈(NODEHOME) 플랫폼</span> 완성 <br />
                                        노드홈 기반 <span class="bd_txt color_fff">블록체인 투표 시스템</span> 개발 완료
                                    </div>
                                </div>
                            </div>
                            <div class="year_line">
                                <div class="year_in year_left year_1903">
                                    <div class="circle circle_right"></div>
                                    <div class="story story_left">
                                        <span class="number">06 </span> 주식회사 에이비씨 상호변경 <br /> (구 포아이 주식회사)
                                    </div>
                                </div>
                            </div>
                            <div class="year_line">
                                <div class="year_in year_right year_1906">
                                    <div class="circle circle_left"></div>
                                    <div class="story story_right">
                                        <span class="number">07 </span> (사)공유경제진흥원과 업무협약체결 <br />- 블록체인 공유경제 플랫폼
                                    </div>
                                </div>
                            </div>
                            <div class="year_line">
                                <div class="year_in year_left year_1907">
                                    <div class="circle circle_right"></div>
                                    <div class="story story_left">
                                        <span class="number">09 </span> 탈중앙화 암호자산 거래소 <br />
                                        <span class="bd_txt color_fff">체인덱스(CHAINDEX)</span> 개발 완료<br /> 
                                        <span class="bd_txt color_fff">이중탈중앙화 기술</span> 특허 등록(10-2024694)
                                    </div>
                                </div>
                            </div>
                            <div class="year_box year_box_2020" style="background: #ECEFF1;">
                                2020
                            </div>
                            <div class="year_line">
                                <div class="year_in year_right year_1909">
                                    <div class="circle circle_left"></div>
                                    <div class="story story_right">
                                        <span class="number">04 </span>
                                        마을 자원 공유경제 플랫폼(인천 미추홀구, 인하대학교) 개발
                                        온라인(비대면) 투표 및 설문 시스템 개발
                                        행정안전부 리빙랩(<span class="bd_txt color_fff">공유주차장</span>) 사업자 선정
                                    </div>
                                </div>
                            </div>
                            <div class="year_line">
                                <div class="year_in year_left year_2005">
                                    <div class="circle circle_right"></div>
                                    <div class="story story_left">
                                        <span class="number">05 </span>
                                        인천광역시 미추홀구 <span class="bd_txt color_fff">스마트 솔루션(공유경제형 스마트팜)</span> 챌린지 심사 통과
                                    </div>
                                </div>
                            </div>
                            <div class="year_line">
                                <div class="year_in year_right year_2008">
                                    <div class="circle circle_left"></div>
                                    <div class="story story_right">
                                        <span class="number">08 </span>
                                        (주)케이씨코트웰 노드홈 플랫폼 납품

                                    </div>
                                </div>
                            </div>
                            <div class="year_line">
                                <div class="year_in year_left year_2011">
                                    <div class="circle circle_right"></div>
                                    <div class="story story_left">
                                        <span class="number">11 </span>
                                        (주)엘솔루 노드홈 플랫폼 납품
                                    </div>
                                </div>
                            </div>
                            <div class="year_box year_box_2021" style="background: #f8f8f8;">
                                2021
                            </div>
                            <div class="year_line">
                                <div class="year_in year_right year_2104">
                                    <div class="circle circle_left"></div>
                                    <div class="story story_right">
                                        <span class="number">04 </span>
                                        (주)오마이에셋 노도홈 흥보디앱 납품
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="min_year_cont w768_block">
                            <!-- <div class="min_year_line">
                            </div> -->
                            <div class="min_year_box" style="background: #90A4AE;">
                                2017
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">03</div> 포아이 주식회사 설립
                                </div>
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">12</div> 
                                    스위스 보스코인(boscoin.io) <br />예측시장모델
                                    시스템 수출 납품
                                </div>
                            </div>
                            <div class="min_year_box" style="background: #B0BEC5;">
                                2018
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">04</div> 
                                    특허출원 :<br />
                                    탈중앙화 서비스 플랫폼(10-2018-0041373)<br />
                                    전자지갑주소 표시 방법(10-2018-0040114)
                                </div>
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">05</div> 
                                    싱가폴 PAX DATATECH PTE Ltd. : <br />
                                    블록체인 플랫폼 계약
                                </div>
                            </div>
                            <div class="min_year_box" style="background: #CFD8DC;">
                                2019
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">01</div> 
                                    <span class="bd_txt color_fff">노드홈(NODEHOME) 플랫폼</span> 완성 <br />
                                        노드홈 기반 <span class="bd_txt color_fff">블록체인 투표 시스템</span> 개발 완료
                                </div>
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">06</div> 
                                    주식회사 에이비씨 상호변경 <br />
                                    (구 포아이 주식회사)
                                </div>
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">07</div> 
                                    (사)공유경제진흥원과 업무협약체결 <br />
                                    - 블록체인 공유경제 플랫폼
                                </div>
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">09</div> 
                                    탈중앙화 암호자산 거래소 <br />
                                    <span class="bd_txt" style="color: #fff;">체인덱스(CHAINDEX) 개발</span> 완료 <br />
                                    <span class="bd_txt" style="color: #fff;">이중탈중앙화 기술</span> 특허 등록(10-2024694)
                                </div>
                            </div>
                            <div class="min_year_box" style="background: #ECEFF1;">
                                2020
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">04</div> 
                                    마을 자원 공유경제 플랫폼(인천 미추홀구, 인하대학교) 개발
                                        온라인(비대면) 투표 및 설문 시스템 개발
                                        행정안전부 리빙랩(<span class="bd_txt color_fff">공유주차장</span>) 사업자 선정
                                </div>
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">05</div> 
                                    인천광역시 미추홀구 <span class="bd_txt color_fff">스마트 솔루션(공유경제형 스마트팜)</span> 챌린지 심사 통과
                                </div>
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">08</div> 
                                    (주)케이씨코트웰 노드홈 플랫폼 납품
                                </div>
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">11</div> 
                                    (주)엘솔루 노드홈 플랫폼 납품
                                </div>
                            </div>
                            <div class="min_year_box" style="background: #f8f8f8;">
                                2021
                            </div>
                            <div class="abc_month">
                                <div class="circle"></div>
                                <div class="txt">
                                    <div class="mon">04</div> 
                                    (주)오마이에셋 노도홈 흥보디앱 납품
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="people_box">
                    <div class="w1160">
                        <div class="top_img_back"><img src="/abc/img/abcinfo_top2.svg" alt="탑"></div>
                        <div class="cont">
                            <div class="main_title" style="text-align: center;">
                                사업 조직
                            </div>
                            <div class="people">
                                <div class="left">
                                    <div class="circle"></div>
                                    <div class="txt">블록체인으로<br /> 변화를 선도하는 혁신가 조직</div>
                                </div>
                                <div class="right">
                                    <div class="item">
                                        <div class="name">임종남 (CEO, 대표이사)</div>
                                        <div class="ment">“환상을 실제로”</div>
                                        <span>20Years AI(NLP) Business, Specialist of NLP, RFID, Blockchain</span> <br /><br />
                                        <span style="line-height: 26px;">
                                            ▪	정보통신우수신기술인 지정 : 정보통신부, 1997<br />
                                            ▪	유망중소정보통신기업인 지정 : 정보통신부, 1997<br />
                                            ▪	기업인 표창(임종남 대표) : 정보통신부, 1999<br />
                                        </span>
                                    </div>
                                    <div class="item">
                                        <div class="name">이지헌 (CSO, 부사장)</div>
                                        <div class="ment">“여기가 너의 시간 너의 장소이다. 여기서 네 할 일을 하라.”</div>
                                    </div>
                                    <div class="item">
                                        <div class="name">김태계 (마케팅본부장)</div>
                                        <div class="ment">“갈등 하에서의 선택! 선택은 블록체인 기술 앞으로!”</div>
                                    </div>
                                    <div class="item">
                                        <div class="name">조용범 (기획이사)</div>
                                        <div class="ment">“세상을 바꾸는 힘이 되자!”</div>
                                    </div>
                                    <div class="item">
                                        <div class="name">김미순 (CFO, 차장)</div>
                                        <div class="ment">“기본과 원칙을 지켜 일하고 최고의 결과를 얻자.”</div>
                                    </div>
                                </div>
                            </div>
                            <div class="main_title" style="text-align: center;">
                                연구·개발 조직
                            </div>
                            <div class="people">
                                <div class="left">
                                    <div class="circle"></div>
                                    <div class="txt">기술은 더 나은 <br /> 미래를 만드는 원동력</div>
                                </div>
                                <div class="right">
                                    <div class="item">
                                        <div class="name">채흥석 (CTO, 연구소장)</div>
                                        <div class="ment">“무엇을 하든지 마음을 다하여…”</div>
                                        <span>25Years Expert of NLP, RFID, IOT, Blockchain</span> <br /><br />
                                        <span style="line-height: 26px;">
                                            ▪	과학기술상 금상(채흥석 소장) : 인천광역시, 2008
                                        </span>
                                    </div>
                                    <div class="item">
                                        <div class="name">박홍택 (수석연구원) </div>
                                        <div class="ment">“행복한 시니어 프로그래머가 되자.”</div>
                                        <span>Expert of NLP, Blockchain</span>
                                    </div>
                                    <div class="item">
                                        <div class="name">박준영 (수석연구원) </div>
                                        <div class="ment">“I Can, You Can, We Can.”</div>
                                        <span>Expert of NLP, Blockchain</span>
                                    </div>
                                    <div class="item">
                                        <div class="name">김영환 (BTS, 팀장) </div>
                                        <div class="ment">“내가 하는 일은 언제나 잘 되게 되어 있다.”</div>
                                        <span>Expert of Web, Platform</span>
                                    </div>
                                    <div class="item">
                                        <div class="name">정다운 (BTS, 대리) </div>
                                        <div class="ment">“꿈은 꾸는 것이 아닌 이루는것이다.”</div>
                                        <span>Expert of Web, Platform</span>
                                    </div>
                                    <div class="item">
                                        <div class="name">김지선 (BTS, 주임) </div>
                                        <div class="ment">“신중히 생각하고 충실히 행동하자.”</div>
                                        <span>Expert of Web, Platform</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="abc_info">
                    <div class="w1160">
                        <div class="top_img_back"><img src="/abc/img/abcinfo_top3.svg" alt="탑"></div>
                        <div class="cont">
                            <div class="main_title" style="text-align: center;">
                                기업 정보
                            </div>
                            <div class="loc_info">
                                <div class="top">사업장</div>
                                <div class="left">본사</div>
                                <div class="right">서울특별시 금천구 가산디지털2로 123 (월드메르디앙벤처센터 2차 602호)</div>
                                <div class="left">서울 노드 운영센터</div>
                                <div class="right">서울 본사 소재지 내</div>
                                <div class="left">인천 노드 운영센터</div>
                                <div class="right">인천광역시 서구 로봇랜드로 155-11, 로봇타워 1202호</div>
                                <div class="left">부산 노드 운영센터</div>
                                <div class="right">부산광역시(준비 중)</div>
                                <div class="left">대전 노드 운영센터</div>
                                <div class="right">대전광역시(준비 중)</div>

                            </div>
                            <div class="loc_map">
                                <div id="daumRoughmapContainer1623639989368" class="root_daum_roughmap root_daum_roughmap_landing" style="width: 100% ; height: 400px; background-color: #ddd;"></div>
                                <div class="bot">
                                    <div class="item">
                                        <svg class="abcinfo_icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" width="24px" height="24px" viewBox="0 0 24 24" enable-background="new 0 0 24 24" xml:space="preserve">
                                            <path fill="none" d="M0,0h24v24H0V0z"/>
                                            <path fill="#455A64" d="M12,2c4.2,0,8,3.22,8,8.2c0,3.319-2.67,7.25-8,11.8c-5.33-4.55-8-8.48-8-11.8C4,5.22,7.8,2,12,2z"/>
                                            <path fill="#FFFFFF" d="M12,12c-1.1,0-2-0.899-2-2s0.9-2,2-2s2,0.9,2,2S13.1,12,12,12z"/>
                                        </svg>
                                        <div>
                                            <span class="bd_txt">Find us at the office</span> <br />
                                            <span>
                                                (08505) 서울특별시 금천구 가산디지털2로 123 <br /> 월드메르디앙 2차 (6층 602호) <br />
                                                <span style="color: gray; font-size: 15px;">123, Gasan digital 2-ro, Geumcheon-gu, Seoul, Korea(08505)</span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <svg class="abcinfo_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#455A64"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M15.5 1h-8C6.12 1 5 2.12 5 3.5v17C5 21.88 6.12 23 7.5 23h8c1.38 0 2.5-1.12 2.5-2.5v-17C18 2.12 16.88 1 15.5 1zm-4 21c-.83 0-1.5-.67-1.5-1.5s.67-1.5 1.5-1.5 1.5.67 1.5 1.5-.67 1.5-1.5 1.5zm4.5-4H7V4h9v14z"/></svg>
                                        <div>
                                            <a href="tel:+82 02 853 7604">Tel. +82 02 853 7604</a> <br />
                                            Fax. +82 02 853 7605 <br />
                                            Mon -Fri 09:00 ~ 18:00
                                        </div>
                                    </div>
                                    <div class="item">
                                        <svg class="abcinfo_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#455A64"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M22 6c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6zm-2 0l-8 5-8-5h16zm0 12H4V8l8 5 8-5v10z"/></svg>
                                        <div>
                                            <a href="mailto:support@abc.ne.kr">
                                                support@abc.ne.kr
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="abc_bot">
                <div class="w1160 txt">
                    (주)에이비씨는 블록체인 기술을 실생활에서 직접 체험할 수 있는 솔루션을 제시합니다. <br />
                    더 안전하고 더 믿을 수 있는 블록체인 기반의 탈중앙화앱(dApp)을 통해 <br />
                    데이터 중심의 4차 산업혁명 시대를 함께 만들어가는 미래를 상상하며 
                    능동적으로 개척해 나가겠습니다.
                </div>             
            </div>
        </div>
        <!-- footer -->
        <div class="footer ">
            <div class="ft_txt">
                For more information, please contact us at <a href="mailto:support@abc.ne.kr"><span class="color_red">support@abc.ne.kr</span></a> <br />
                사업자등록번호 : 836-88-00479 <br />
                (08505)서울특별시 금천구 가산디지털2로 123 월드메르디앙2차 (6층 602호) <br />
                <a href="tel:+82 02 853 760">Tel. +82 02 853 7604</a>, Fax. +82 02 853 7605
            </div>
        </div>
        <!-- footer end -->
    </div>
	
    <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
    <script charset="UTF-8">
        new daum.roughmap.Lander({
            "timestamp" : "1623639989368",
            "key" : "267of",
            // "mapWidth" : "1160",
            "mapHeight" : "400"
        }).render();
    </script>


</body>
</html>