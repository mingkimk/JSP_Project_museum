package util;

public class PageNumber {
	/*
	 * 페이지 시작은 2 총은 45개
	 */
	private int page; // 현재 기준 페이지
	private int count; // 총 글수
	private int start; // 페이지그룹 시작 번호
	private int end; // 페이지그룹 끝 번호
	private int nowPageStart; // 표시될 페이지 시작번호
	private int nowPageEnd; // 표시될 페이지 끝번호
	private int prev = 0;; // 이전의 페이지구룹 있나없나
	private int next = 0; // 이후 페이지그룹
	private int pageCnt = 10;// 페이지그룹, 게시물 수 의미

	public Integer getPage() {
		return page;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public void setPage(Integer page) {
		if (page < 1) {
			this.page = 1;
			return;
		}
		this.page = page;
	}

	public void setCount(Integer count) {
		if (count < 1) {
			return;
		}
		this.count = count;
		System.out.println("총 글수는 = " + count);
		calcPage();
	}

	public int getCount() {
		return count;
	}

	public int getStart() {
		return start;
	}

	public int getEnd() {
		return end;
	}

	public int getPrev() {
		return prev;
	}

	public int getNext() {
		return next;
	}

	public int getNowPageStart() {
		return nowPageStart;
	}

	public int getNowPageEnd() {
		return nowPageEnd;
	}

	private void calcPage() {// page를 계산 하는 메소드 10
		int tempEnd = (int) (Math.ceil(page / (float) pageCnt) * pageCnt);//0.2 반올림 하면 1
		// 페이지 그룹의 끝 번호를 구하는 것                    2                10=0.2=1*10=10
        //Math.ceil 반올림 하라
		System.out.println("this.count =" + this.count);
		// ���� ������ ���
		this.start = tempEnd - 9;

		if (start > pageCnt) {
			prev = start - pageCnt;
		}
                     //  100        45
		if (tempEnd * pageCnt > this.count) { // �������� ����� tempEndũ�Ⱑ ���� count���� �������
			this.end = (int) Math.ceil(this.count / (float) pageCnt);
		} else {
			this.end = tempEnd; // ���� count��
			next = end + 1;
			// tempEnd���� �������
		}

		nowPageStart = (page - 1) * pageCnt + 1;
		nowPageEnd = nowPageStart + pageCnt - 1;
		if (nowPageEnd > this.count) {
			nowPageEnd = this.count;
		}

		System.out.println("page = " + page);
		System.out.println("start = " + start);
		System.out.println("this.end = " + this.end);
		System.out.println("nowpageStart= " + this.nowPageStart);
		System.out.println("nowpageEnd= " + this.nowPageEnd);
	}
}
