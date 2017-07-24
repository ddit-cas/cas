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

	private int lastPageRow;
	
	private int firstPageRow;

	private int minNum;
	
	private int index;
	
	/**
	 * 현재페이지
	 * @return int
	 */
	public int getIndex() {
		return index;
	}
	/**
	 * 페이지의 첫 게시글번호
	 * @return int
	 */
	public int getFirstPageRow() {
		return firstPageRow;
	}
	/**
	 * 페이지의 마지막 게시글번호
	 * @return int
	 */
	public int getLastPageRow() {
		return lastPageRow;
	}
	/**
	 * 화면에 보이는 게시판 최대 숫자
	 * @trturn int
	 */
	public int getMaxNum() {
		return maxNum;
	}
	/**
	 * 화면에보 보이는 게시판 최저숫자
	 * @return int
	 */
	public int getMinNum() {
		return minNum;
	}

	
	/**
	 * @param dataRow 총 데이터리스트의 길이
	 * @param page 현재페이지(1부터 시작)
	 */
	public Paging(int dataRow, String page) {
	
		firstPageRow = 0;
		lastPageRow = firstPageRow+BOARD_ROW-1;
		if(lastPageRow>dataRow){
			lastPageRow=dataRow;
		}
		//tab 값이 안넘어왔을경우 초기값
		index = 1;
		minNum = 1;

		//여기까지 페이지 첫 화면에서의 기본 숫자들 셋팅

		//페이지넘버의 끝 번호
		maxNum = dataRow/BOARD_ROW;
		if(dataRow%BOARD_ROW > 0){
			maxNum++;
		}		
		//tab 값이 넘어왔을경우 페이징처리
		if(page!=null){
			//페이지 번호를 누르면 그에따라 현재 페이지 넘버가바뀐다(list 이기때문에 0부터시작이라 -1을 해준다)
			index = Integer.parseInt((page));
			if(index<1){
				index=1;
			}else if(index>maxNum){
				index=maxNum;
			}
			firstPageRow = (index-1)*BOARD_ROW;
			lastPageRow = firstPageRow+BOARD_ROW-1;
			index--;
			minNum = (int)(index/SHOW_PAGE)*SHOW_PAGE+1;
			index++;
			if((minNum+SHOW_PAGE-1)<maxNum){
				maxNum = minNum+SHOW_PAGE-1;
			}else{
				if((index)>=maxNum){
					lastPageRow=dataRow-1;
				}
			}
		}else{
			//tab 값이 안넘어오면 초기값
			if(maxNum>SHOW_PAGE){
				maxNum=SHOW_PAGE;
			}
		}
	}
	@Override
	public String toString() {
		return "Paging ["
				+ "\nfirstPageRow=" + firstPageRow 
				+ ", \nlastPageRow=" + lastPageRow
				+ ", \nminNum=" + minNum
				+ ", \nmaxNum=" + maxNum 
				+ ", \nindex= " + index
				+ "\n]";
	}
	
	
}
