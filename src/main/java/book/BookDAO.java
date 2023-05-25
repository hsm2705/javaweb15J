package book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.GetConn;


public class BookDAO {
	
	GetConn getConn = GetConn.getInstance();
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	BookVO vos = null;
	
	private ArrayList<BookVO> vo = new ArrayList<>();
	
	public BookDAO() {
		BookVO sayno = new BookVO("SD8970034631", "세이노의 가르침", "자기계발");
		sayno.setAuthor("세이노");
		sayno.setBookInfor("2000년부터 발표된 그의 주옥같은 글들. 독자들이 자발적으로 만든 제본서는 물론,"
				+ "전자책과 앱까지 나왔던 《세이노의 가르침》이 드디어 전국 서점에서 독자들을 마주한다."
				+ "여러 판본을 모으고 저자의 확인을 거쳐 최근 생각을 추가로 수록하였다."
				+ "정식 출간본에만 추가로 수록된 글들은 목차와 본문에 별도 표시하였다.");
		sayno.setPub("데이원");
		sayno.setPubDate("2023.03.02");
		
		BookVO harvard = new BookVO("SD1688118315", "하버드 첫 강의 시간관리 수업", "자기계발");
		harvard.setAuthor("쉬셴장(지은이), 하정희(옮긴이)");
		harvard.setBookInfor("성공한 CEO의 하루는 일종의 시간과의 전쟁이다. 수많은 업무 보고서와 이메일을 처리하고 가장 효과적인 의사 결정을함과 동시에 가정과의 균형과"
				+ "미래를 위한 아이디어를 얻기 위해서는 하루 24시간이 모자랄 듯하다.그러나 그들은 마치 평범한 사람들이 3일을 살 듯 하루 24시간을 활용한다.\r\n"
				+ "\r\n"
				+ "시간의 소중함과 시간을 효율적으로 사용하는 법을 가장 먼저 배우는 하버드 학생들은 졸업 후 전 세계 모든 분야에서 자신의 능력을 인정받는 인재로 성장한다. 왜냐하면 하루가 24시간으로 이루어져 있듯이 업무를 하거나 휴식을 취하거나 일상적인 일을 하는 것까지 사람들이 하는 모든 일은 시간을 사용하는 것이기 때문이다.\r\n"
				+ "\r\n"
				+ "시간의 선택과 집중, 효율적인 일 처리뿐 아니라 인생의 목표와 계획에 이르기까지 하버드 시간관리 프로젝트 연구원들이 하버드 출신들의 사례를 통해"
				+ "일과 여유로운 삶의 균형을 이루고, 원하는 목표를 실현할 수 있는 비법을 선사한다.");
		harvard.setPub("리드리드출판(한국능률협회)");
		harvard.setPubDate("2018.04.03");
		
		vo.add(sayno);
		vo.add(harvard);
		
	}
	
	public ArrayList<BookVO> getVO() {
		return vo;
	}
	
	// 상세정보 가져오기
	
	public BookVO getProductById(String bookCode) {
		BookVO productById = null;
		
		for(int i=0; i<vo.size(); i++) {
			BookVO vos  = vo.get(i);
			if(vos != null && vos.getBookCode() != null && vos.getBookCode().equals(bookCode)) {
				productById = vos;
				break;
			}
		}
		return productById;
	}
}