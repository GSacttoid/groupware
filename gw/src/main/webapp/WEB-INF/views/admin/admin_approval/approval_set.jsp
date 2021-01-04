<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<style>
	table {
		border-collapse: collapse;
	}
	tr{
	    height: 40px;
	}
	
	td{
	    border: 1px solid #d5d5d5;
	}
    .board-wrap tr:first-child{
        background-color: #6f809a;
        color: #fff;
    }
    .tr-even{
        background-color: #eff3f9;
    }
    input[type="radio"] {
	    width:15px;
	    height:15px;
	}
</style>

<body>
    <div class="main-wrap noto font14" style="width:100%;">
        
        <div class="p20">
            <div class="notice-title font16 noto">
                <h3><i class="fas fa-book m-lr5"></i>전자결재 설정</h3>
            </div>
            <hr />

            <div>
            	<form method="post" id="frmRead">
            		<h3 class="m-b5">1. 보안 등급별 열람 설정</h3>
	                 <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">S 등급</td>
	                         <td class="p-lr5"><p>기안 상에 설정된 관련자들만 문서 열람</p></td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">A 등급</td>
	                         <td class="p-lr5"><p style="line-height:35px;">결재 완료 후 직위   	
	                         <select class="sel-135"></select>
	                                                  이상 기본 열람</p></td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">B 등급</td>
	                         <td class="p-lr5"><p style="line-height:35px;">결재 완료 후 직위   	
	                         <select class="sel-135"></select>
	                                                  이상 기본 열람</p></td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">C 등급</td>
	                         <td class="p-lr5"><p>모든 임직원 문서 열람</p></td>
	                     </tr>
	                 </table>
	                 <div class="btn-grp center m-t10">
	                     <button type="button" class="btn-on">저장</button>
	                     <button type="reset" class="btn-off">취소</button>
	                 </div>
             	</form>
            </div>
            
            <div>
            	<form method="post" id="frmForm">
            		<h3 class="m-b5">2. 일반 설정</h3>
	                 <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">같은 결재선 내에서 선결재</td>
	                         <td class="p-lr5">
		                         <label class="noto font14 m-lr10"><input type="radio" name="signLine" value="" style="margin: 4px;" checked />허용함</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="signLine" value="" style="margin: 4px;"  />허용안함</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">대리 결재</td>
	                         <td class="p-lr5">
		                         <label class="noto font14 m-lr10"><input type="radio" name="dsign" value="" style="margin: 4px;" checked />허용함</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="dsign" value="" style="margin: 4px;"  />허용안함</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">후결</td>
	                         <td class="p-lr5">
		                         <label class="noto font14 m-lr10"><input type="radio" name="asign" value="" style="margin: 4px;" checked />허용함</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="asign" value="" style="margin: 4px;"  />허용안함</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">합의 반려</td>
	                         <td class="p-lr5">
		                         <label class="noto font14 m-lr10"><input type="radio" name="hsign" value="" style="margin: 4px;" checked />허용함</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="hsign" value="" style="margin: 4px;"  />허용안함</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">참조 열람 시기 설정</td>
	                         <td class="p-lr5">
		                         <label class="noto font14 m-lr10"><input type="radio" name="csign" value="" style="margin: 4px;" checked />결재 시작</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="csign" value="" style="margin: 4px;"  />결재 완료</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">기안 취소 설정</td>
	                         <td class="p-lr5">
		                         <label class="noto font14 m-lr10"><input type="radio" name="gsign" value="" style="margin: 4px;" checked />반려 처리</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="gsign" value="" style="margin: 4px;"  />문서 삭제</label>
	                         </td>
	                     </tr>
	                 </table>
	                 <div class="btn-grp center m-t10">
	                     <button type="button" class="btn-on">저장</button>
	                     <button type="reset" class="btn-off">취소</button>
	                 </div>
             	</form>
            </div>
        </div>
    </div>
</body>
<script>

</script>
</html>