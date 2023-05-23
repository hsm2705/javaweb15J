package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class MemberUpdateOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		String sNickName = (String) session.getAttribute("sNickName");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String nickName = request.getParameter("nickName")==null ? "" : request.getParameter("nickName");
		String tel = request.getParameter("tel")==null ? "" : request.getParameter("tel");
		String address = request.getParameter("address")==null ? "" : request.getParameter("address");
		String email = request.getParameter("email")==null ? "" : request.getParameter("email");
		String gender = request.getParameter("gender")==null ? "" : request.getParameter("gender");
		String birthday = request.getParameter("birthday")==null ? "" : request.getParameter("birthday");
		String userInfor = request.getParameter("userInfor")==null ? "" : request.getParameter("userInfor");

		// 아이디/닉네임 중복체크
		MemberDAO dao = new MemberDAO();
		
		if(!nickName.equals(sNickName)) {
			String tempNickName = dao.getMemberNickCheck(nickName).getNickName();
			if(tempNickName != null) {
				request.setAttribute("msg", "이미 사용중인 닉네임입니다.");
				request.setAttribute("url", request.getContextPath()+"/MemberUpdate.mem");
				return;
			}
		}
		
		// 모든 체크가 완료되었다면 회원정보를 vo에 담아서 DB(DAO객체)로 넘겨준다.
		MemberVO vo = new MemberVO();
		vo.setMid(mid);
		vo.setName(name);
		vo.setNickName(nickName);
		vo.setTel(tel);
		vo.setEmail(email);
		vo.setAddress(address);
		vo.setGender(gender);
		vo.setBirthday(birthday);
		vo.setUserInfor(userInfor);
		
		int res = dao.setMemberUpdateOk(vo);
		
		if(res == 1) {
			session.setAttribute("sNickName", nickName);
			request.setAttribute("msg", "회원정보가 수정되었습니다.");
			request.setAttribute("url", request.getContextPath()+"/MemberMain.mem");
		}
		else {
			request.setAttribute("msg", "다시 입력해주세요.");
			request.setAttribute("url", request.getContextPath()+"/MemberUpdate.mem");
		}
	}

}
