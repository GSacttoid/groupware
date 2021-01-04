<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    </style>
<body>
                <div class="main-wrap noto font14" style="width:100%">
                    
                    <div class="p20">
                        <div class="notice-title font16 noto">
                            <h3><i class="fas fa-info-circle m-lr5"></i>부서 메뉴 관리</h3>
                        </div>
                        <hr />
                        
                            <table style="width:100%; border: 1px solid #c1c1c1;">
                                <tr>
                                    <td style="width: 20%; line-height: 1.8; padding: 10px;">
                                        <div class="noto font14">
                                            <ul>
                                                <li>부서메뉴의 모든 메뉴는 해당 권한을 얻은 직원에게만 공개됩니다.</li>
                                                <li>사용하고 싶은 메뉴를 선택하여 추가하거나, 삭제하실 수 있으며, 메뉴이름도 변경하실 수 있습니다.</li>
                                                <li>추가/삭제/이름 변경 시에는 반드시 [저장]버튼을 눌러주셔야만 적용이 됩니다.</li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        <form method="post" action="#">
                            <div class="p10" style="border: 1px solid #c1c1c1;">
                            	<div class="noto font16 weight700 m-tb10">1. 부서 메뉴 만들기</div>
                                <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                    
                                    <tr class="m-t10">
                                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">부서 메뉴 등록하기</td>
                                        <td>
                                            <select class="sel-135" name="" style="margin-left: 2px;">
                                                <option value="">--부서 선택--</option>
                                                <option value="plan">기획부</option>
                                                <option value="hr">인사부</option>
                                                <option value="affairs">총무부</option>
                                                <option value="rnd">개발부</option>
                                                <option value="computing">전산부</option>
                                                <option value="sales">영업부</option>
                                            </select>
                                            <select class="sel-135" name="" style="margin-left: 2px;">
                                                <option value="">--메뉴 종류--</option>
                                                <option value="board">게시판</option>
                                                <option value="album">앨범</option>
                                                <option value="library">자료실</option>
                                            </select>
                                            <input type="text" class="input-135" style="margin-left: 2px;" placeholder="메뉴이름을 적어주세요." />
                                            <button type="submit" class="btn-on" >등록</button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </form>
                        <br />

                        <form method="post" action="#">
                            <div class="p10" style="border: 1px solid #c1c1c1;">
                                <div class="">
                                    <div class="noto font16 weight700 m-tb10">2. 부서 메뉴 리스트</div>
                                    <div class="noto font14 m-b10">사용중인 회사 메뉴 : 30 개</div>
                                    <div class="btn-grp m-b10">
                                        <button class="depart-btn" type="button" >전체 선택</button>
                                        <button class="depart-btn" type="button" style="background-color: #fc6468;">선택 삭제</button>
                                    </div>
                                </div>
                                <div class="">
                                    <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                                <tr class="center noto font14 bg-gray">
                                                	<td class="" style="width:5%;">선택</td>
                                                    <td class="td-15" style="width:5%;">순서</td>
                                                    <td class="td-15" style="width:10%;">부서명</td>
                                                    <td class="td-30" style="width:10%;">메뉴종류</td>
                                                    <td class="td-30" >메뉴제목</td>
                                                    <td class="td-20" style="width:15%;">생성일</td>
                                                    <td class="td-20" style="width:15%;">관리 [메뉴 속성]</td>
                                                </tr>
                                                <tr class="center noto font14">
	                                                <td>
		                                                <input type="checkbox"/>
		                                            </td>
		                                            <td>1</td>
                                                    <td>기획부</td>
                                                    <td>일반게시판</td>
                                                    <td>일반게시판</td>
                                                    <td >2020/09/16</td>
                                                    <td >
                                               			<button type="button" class="s-btn-on">수정</button>
                                                		<button type="button" class="s-btn-off" style="background-color: #fc6468; color:#fff;">삭제</button>
                                                    </td>
                                                </tr>

                                                
                                    </table>
                                </div>
                                <div class="btn-grp center m-t10">
                                    <button type="button" class="btn-on">저장</button>
                                    <button type="reset" class="btn-off">취소</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
</body>

</html>