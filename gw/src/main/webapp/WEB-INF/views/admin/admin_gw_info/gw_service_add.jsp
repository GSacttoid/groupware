<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp"%>
<!-- /INCLUDE HEADER (ALL) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
/* table tr 높이 */
tr {
    height:40px;
}

/* table 선색 */
td {
    border:1px solid #d5d5d5;
}
</style>
	<div class="" sytle="width:100%;">
        <div class="noto font14 weight500">
            <div class="p20">
                <div class="notice-title">
                    <h2><i class="fas fa-info-circle"></i>그룹웨어 서비스 추가하기</h2>
                </div>
                <hr />
                <form method="post" action="#">
                    <div class="m-tb5 noto font16 weight700">※사용중인 그룹웨어 서비스</div>
                    <table class="p10" style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                        <tr>
                            <td style="width: 20%; height:35px; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">도메인 명</td>
                            <td style="width: 80%; padding: 5px 10px;">${gwInfo.info_domain}</td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height:35px; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">그룹웨어 개설일</td>
                            <td style="width: 80%; padding: 5px 10px;">${start}</td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">그룹웨어 이용 만료일</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 10px;">${end} 까지</p>
                                <select class="sel-135">
                                    <option>--- 연장기간 선택 ---</option>
                                    <option> 1년 추가 </option>
                                    <option> 2년 추가 </option>
                                    <option> 3년 추가 </option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">최대 사용자</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 10px;">${gwInfo.info_gw_user} 명</p>
                                <select class="sel-135">
                                    <option value="0">--- 추가인원 선택 ---</option>
                                    <option value="10"> 10명 추가 </option>
                                    <option value="50"> 50명 추가 </option>
                                    <option value="100"> 100명 추가 </option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">총 사용 용량</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 10px;">${gwInfo.info_total_volume} MB</p>
                                <select class="sel-135">
                                    <option value="0">--- 추가용량 선택 ---</option>
                                    <option value="500"> 500 MB 추가 </option>
                                    <option value="1000"> 1000 MB 추가 </option>
                                    <option value="2000"> 2000 MB 추가 </option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <div class="m-tb5 noto font16 weight700">※사용중인 할당용량 변경하기</div>
                    <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">메일 사용 용량</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 20px;">${gwInfo.info_mail_volume} MB</p>
                                <select class="sel-135">
                                    <option value="0">--- 할당용량 선택 ---</option>
                                    <option value="500"> 500 MB </option>
                                    <option value="1000"> 1000 MB </option>
                                    <option value="1500"> 1500 MB </option>
                                    <option value="2000"> 2000 MB </option>
                                </select>
                            </td>
                        </tr>
    
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">웹하드 사용 용량</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 20px;">${gwInfo.info_webhard_volume} MB</p>
                                <select class="sel-135">
                                    <option value="0">--- 할당용량 선택 ---</option>
                                    <option value="500"> 500 MB </option>
                                    <option value="1000"> 1000 MB </option>
                                    <option value="1500"> 1500 MB </option>
                                    <option value="2000"> 2000 MB </option>
                                </select>
                            </td>
                        </tr>
                                
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">그룹웨어 사용 용량</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 20px;">${gwInfo.info_gw_volume} MB</p>
                                <select class="sel-135">
                                    <option value="0">--- 할당용량 선택 ---</option>
                                    <option value="500"> 500 MB </option>
                                    <option value="1000"> 1000 MB </option>
                                    <option value="1500"> 1500 MB </option>
                                    <option value="2000"> 2000 MB </option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <div class="btn-grp center m-t10">
                        <button type="submit" class="btn-on">저장</button>
                        <button type="reset" class="btn-off">새로고침</button>
                        <button type="button" class="btn-red" onClick="window.close();">창 닫기</button>
                    </div>
                </form>
            </div>  
        </div>
    </div>