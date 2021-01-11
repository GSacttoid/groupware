<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
    <style>
        ul>li::before {
            content: '';
            display: inline-block;
            width: 5px;
            height: 5px;
            background-color: #000;
            margin-right: 10px;
            vertical-align: middle;
            transform: rotate(45deg) translateY(-50%);
        }
        table {
		    border-collapse: collapse;
		}
		tr{
		    height: 40px;
		    border: 1px solid #c1c1c1;
		}
		td{
		    border: 1px solid #c1c1c1;
		}
		.depart-btn {
		    display: inline-block;
		    width: 65px;
		    height: 25px;
		    text-align: center;
		    border-radius: 2px;
		    background-color: #c1c1c1;
		    border: 1px solid transparent;
		    color: #fff;
		    font-size: 12px;
		    cursor: pointer;
		    font-weight: 700;
		}
		.depart-btn:hover{
		    background-color: #3f51b5;
		    color: #fff;
		}
	    .accordion-content {
		    display: block;
		}
    </style>
<body>
	<div class="total-wrap">
		<!-- INCLUDE LOGO (ALL) -->
		<%@ include file="/WEB-INF/views/INCLUDE/GW_LOGO.jsp"%>
		<!-- /INCLUDE LOGO (ALL) -->
		<main>
			<div class="container">
				<!-- INCLUDE MENU (ALL) -->
				<%@ include file="/WEB-INF/views/admin/ADMIN_MENU.jsp"%>
				<!-- /INCLUDE MENU (ALL) -->
				<div class="detail-wrap">
					<!-- INCLUDE MENU_DETAIL (ADMIN) -->
					<%@ include file="/WEB-INF/views/admin/ADMIN_MENU_DETAIL.jsp"%>
					<!-- /INCLUDE MENU_DETAIL (ADMIN) -->
				</div>
				<div class="main-wrap noto font14" style="width: 100%">

					<div class="p20">
						<div class="notice-title font16 noto">
							<h3>
								<i class="fas fa-info-circle m-lr5"></i>부서 메뉴 관리
							</h3>
						</div>
						<hr />

						<table style="width: 100%; border: 1px solid #c1c1c1;">
							<tr>
								<td style="width: 20%; line-height: 1.8; padding: 10px;">
									<div class="noto font14">
										<ul>
											<li>부서메뉴의 모든 메뉴는 해당 부서 직원에게 공개됩니다.</li>
											<li>사용하고 싶은 메뉴를 선택하여 추가하거나, 삭제하실 수 있으며, 메뉴이름도 변경하실 수
												있습니다.</li>
											<li>추가 시에는 반드시 [저장]버튼을 눌러주셔야만 적용이 됩니다.</li>
										</ul>
									</div>
								</td>
							</tr>
						</table>
						<br />
						<div class="flex flex-justify">
			            	<div style="width:100%; margin-right:10px;">
			           	        <form method="post" id="buseoList" >
						            <div class="p10" style="border: 1px solid #c1c1c1;">
						                <div class="">
						                    <div class="noto font16 weight700 m-tb10">1. 부서 메뉴 리스트</div>
						                    <div class="noto font14 m-b10">사용중인 메뉴 : ${count} 개</div>
						                    <div class="btn-grp m-b10">
						                        <button class="depart-btn" type="button" id="menuDeleteAll" style="background-color: #fc6468;">선택 삭제</button>
						                    </div>
						                </div>
						                <div>
						                	<div class="">
						                    	<table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
						                              <tr class="center noto font14 bg-gray" style="height: 40px; border: 1px solid #c1c1c1;">
						                                  <td style="border: 1px solid #c1c1c1; width:10%">
														  	  <input type="checkbox" id="chkAll" />
														  </td>
						                                  <td style="border: 1px solid #c1c1c1; width:15%">부서명</td>
						                                  <td style="border: 1px solid #c1c1c1; width:15%">메뉴종류</td>
						                                  <td style="border: 1px solid #c1c1c1;">메뉴명</td>
						                                  <td style="border: 1px solid #c1c1c1; width:20%">생성일</td>
						                                  <td style="border: 1px solid #c1c1c1; width:15%">관리</td>
						                              </tr>
						                              <c:forEach var="buseoMenuList" items="${list}" varStatus="status">
							                              <tr class="center noto font14">
							                                  <td>
							                                      <input type="checkbox" name="chk" class="chk" data-uid="" style="width:17px; height:17px;" />
							                                  </td>
							                                  <td></td>
							                                  <td></td>
							                                  <td></td>
							                                  <td>
							                                  	<button class="s-btn-off" type="button" onClick="menuDelete(});" 
							                                  	 style="background-color: #fc6468; color:#fff;">삭제</button>
							                                  </td>
							                              </tr>
						                              </c:forEach>
						                    	</table>
						                    	
						                   	</div>
						             	</div>
						            </div>
						        </form>
			            	</div>
			            	<div style="width:100%">
			           	        <form method="post" id="frm" autocomplete="off">
						            <div class="p10" style="border: 1px solid #c1c1c1;">
						            	<div class="noto font16 weight700 m-tb10">2. 부서 메뉴 만들기</div>
						                <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;" >
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">메뉴 종류</td>
						                        <td>
						                            <input type="text" class="input-135" name="menu_kind" id="menu_kind" style="margin-left: 2px;" />
						                            <span class="noto font14 m-lr10" style="line-height:35px;"></span>
						                        </td>
						                    </tr>
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">메뉴명</td>
						                        <td>
						                            <input type="text" class="input-135" name="menu_name" id="menu_name" style="margin-left: 2px;" />
						                        </td>
						                    </tr>
						                </table>
						                <div class="center font14">
						                	<button type="button" class="btn-on" onClick="menuInsert();" >등록</button>
						                	<button type="reset" class="btn-off" >취소</button>
						                </div>
						            </div>
						        </form>
			            	</div>
			            </div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>

</html>