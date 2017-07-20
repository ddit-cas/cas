package com.cas.db.dto;

/**
 * <pre>
 * 게시판 페이징 클래스
 * </pre>
 * @author 김민환
 * @since 2017.07.20
 * @version 1.0.0
 */
public class Paging {
	//한 페이지의 로우 		7
	final int BOARD_ROW = 7;
	//한번에 보이는 페이징번호   5 (바꿀경우 홀수로만 바꾼다)
	final int SHOW_PAGE = 5;

	private int maxNum;

	private int index; 

	private int minNum;
	/**
	 * 화면에 보이는 게시판 최대 숫자
	 */
	public int getMaxNum() {
		return maxNum;
	}
	/**
	 * 현재 페이지
	 */
	public int getIndex() {
		return index;
	}
	/**
	 * 화면에보 보이는 게시판 최저숫자
	 */
	public int getMinNum() {
		return minNum;
	}

	
	/**
	 * @param dataRow 총 데이터리스트의 길이
	 * @param page 현재페이지(1부터 시작)
	 */
	public Paging(int dataRow, String page) {
		//한 페이지의 로우 		7
		final int BOARD_ROW = 7;
		//한번에 보이는 페이징번호   5 (바꿀경우 홀수로만 바꾼다)
		final int SHOW_PAGE = 5;
		
		//페이지넘버의 끝 번호
		maxNum = dataRow/BOARD_ROW;
		if(dataRow%BOARD_ROW > 0){
			maxNum++;
		}
		
		//tab 값이 안넘어왔을경우 초기값
		index = 0;
		minNum = 1;

		//tab 값이 넘어왔을경우 페이징처리
		if(page!=null){
			
			//페이지 번호를 누르면 그에따라 현재 페이지 넘버가바뀐다(list 이기때문에 0부터시작이라 -1을 해준다)
			index =  Integer.parseInt((page));
			index--;
			
			//페이지 번호가 3이하일경우 보여지는 페이지의 최대숫자는 무조건 5
			if(index<(SHOW_PAGE/2)+1){
				maxNum = SHOW_PAGE;
			}else{
				//현재페이지번호+2 인것보다 최대 페이지넘버가 작을경우 최대 페이지넘버를 바꿔준다
				if(maxNum>index+(SHOW_PAGE/2)+1){
					maxNum = index+(SHOW_PAGE/2)+1;
				}
			}
			
			//최소 페이지는 최대 페이지보다 4 적다
			minNum = maxNum-(SHOW_PAGE-1);
		}else{
			//tab 값이 안넘어오면 무조건 최대값은 5
			maxNum=SHOW_PAGE;
		}
	}
	
}
