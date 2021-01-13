package com.example.grp.service;

import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.SurveyVO;
import com.example.grp.repository.SurveyDao;

@Service
public class SurveySrv {

	@Autowired
	SurveyDao sDao;
	
	public void setSurveyInsert(SurveyVO svo) {
		sDao.setSurveyInsert(svo);
	}
	
	public List<SurveyVO> getSurveyOpen(int start, int end) {
		List<SurveyVO> list = sDao.getSurveyOpen(start, end); //db 목록
		for(int i = 0; i < list.size(); i++) {
			String str = list.get(i).getSurvey_ex_cnt();
			
			//5|3|1|
			int sum = 0;
			StringTokenizer st = new StringTokenizer(str, "|");
			while( st.hasMoreTokens() ) {
				int cnt = Integer.parseInt(st.nextToken());
				sum += cnt;
			}
			
			list.get(i).setSurvey_total(sum); //더한 값을 다시 변수에 넣기
		}
		
		return list;
	}
	
	public List<SurveyVO> getSurveyOpen5() {
		return sDao.getSurveyOpen5();
	}
	
	public int getSurveyOpenCnt() {
		return sDao.getSurveyOpenCnt();
	}
	
	public List<SurveyVO> getSurveyClose(int start, int end) {
		List<SurveyVO> list = sDao.getSurveyClose(start, end); //db 목록
		
		for(int i = 0; i < list.size(); i++) {
			String str = list.get(i).getSurvey_ex_cnt();
			
			//5|3|1|
			int sum = 0;
			StringTokenizer st = new StringTokenizer(str, "|");
			while( st.hasMoreTokens() ) {
				int cnt = Integer.parseInt(st.nextToken());
				sum += cnt;
			}
			
			list.get(i).setSurvey_total(sum); //더한 값을 다시 변수에 넣기
		}
		return list;
	}
	
	public List<SurveyVO> getSurveyClose5() {
		return sDao.getSurveyClose5();
	}
	
	public int getSurveyCloseCnt() {
		return sDao.getSurveyCloseCnt();
	}
	
	public SurveyVO getSurveyResult(int survey_id) {
		SurveyVO svo = sDao.getSurveyResult(survey_id);
		
		//5|3|1|
		int sum = 0;
		StringTokenizer st = new StringTokenizer(svo.getSurvey_ex_cnt(), "|");
		while( st.hasMoreTokens() ) {
			int cnt = Integer.parseInt(st.nextToken());
			sum += cnt;
		}
		svo.setSurvey_total(sum);
		
		return svo;
	}
	
	public void setSurveyDo(SurveyVO svo) {
		SurveyVO vo = sDao.getSurveyResult(svo.getSurvey_id());
		//db에 저장하기위한 변환 작업 (rdo -> survey_ex_cnt 배열안에 삽입)
		StringTokenizer st = new StringTokenizer(vo.getSurvey_ex_cnt(),"|");
		String[] arr = new String[st.countTokens()]; // 조개진 개수
		
		int i = 0;
		String str ="";
		while(st.hasMoreTokens()) { // for
			arr[i] = st.nextToken(); // 쪼갠 값을 하나씩 가져오기
			if(i == Integer.parseInt(svo.getRdo())) {
				int temp = Integer.parseInt(arr[i]); // 글자 ->숫자로 변환
				arr[i] = String.valueOf(++temp); //숫자->글자로 변환
			}
			str += arr[i] + "|";
			i++;
		}
		vo.setSurvey_ex_cnt(str); //바뀐값을 다시  데이터입력
		sDao.setSurveyDo(vo);
	}

	//날짜 또는 시간이 경과될때 자동 종료	
	public void setSurveyStatus(SurveyVO svo) {
		sDao.setSurveyStatus(svo);
	}
	
	public void setSurveyDelete(SurveyVO svo) {
		sDao.setSurveyDelete(svo);
	}
}
