package com.cas.common.login.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.cas.db.dto.MemberVO;
import com.cas.db.dto.TeamVO;
import com.cas.member.service.MemberService;
@Controller
public class LoginController {


	@Autowired
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	/*로그인 양식 페이지로 가는 메서드*/
	@RequestMapping("/loginForm")
	public String loginMemberForm(HttpSession session){
		if(session.getAttribute("loginUser")!=null){
			return "redirect:/main";
		}
		return "member/login/login";
	}
	
	/*로그인 해주는 메서드*/
	@RequestMapping("/login")
	public String loginMember(MemberVO member ,HttpServletRequest request,HttpSession session){
		String uri = request.getHeader("referer");
		System.out.println("요청페이지"+uri);
		String url = "member/goMain";
		
		if(uri!=null){
			url = uri.substring(20);
			System.out.println("주소가 뭔가요?"+url);
		}
		if(memberService.checkId(member.getMemId())){
			if(memberService.checkPwd(member.getMemId(),member.getMemPwd())){
					session.setAttribute("loginUser", memberService.selectMember(member.getMemId()));
			}
		}	
		if(request.getParameter("goMain")!=null){
			url=request.getParameter("goMain");
		}
		return "redirect:"+url;
	}
	
	/*아이디 찾기 화면으로 간다*/
	@RequestMapping("/findIdForm")
	public String findIdForm(){
		return null;
	}
	
	/*아이디를 찾아준다*/
	@RequestMapping("/findId")
	public String findId(HttpServletRequest request){
		String url="member/idSearch";
		return url;
	}
	
	/*비번 찾기 화면으로 간다*/
	@RequestMapping("/findPwdForm")
	public String findPwdForm(){
		return null;
	}
	
	/*비번을 찾아준다*/
	@RequestMapping("/findPwd")
	public String findPwd(HttpServletRequest request){
		return null;
	}
	
	/*로그 아웃 하는 메서드*/
	@RequestMapping("/logout")
	public String logoutMember(HttpSession session){
		session.invalidate();
		return "member/goMain";
	}
	
	/*회원가입 양식으로 가는 메서드*/
	@RequestMapping ("/joinMemberForm")
	public String joinMemberForm(HttpServletRequest request){
		return "/member/signUp/signup";
	}
	
	/*회원 ID와 닉네임의 중복 확인하는 메서드*/
	@RequestMapping ("/checkId")
	public String checkId(HttpServletRequest request,Model model){
		String memId = request.getParameter("id");
		memberService.checkId(memId);
		model.addAttribute("id",request.getParameter("id"));
		return "member/signUp/checkId/idCheck";
	}
	
	/*회원가입을 하는 메서드*/
	@RequestMapping("/joinMember")
	public String joinMember(HttpServletRequest request,MemberVO member,@RequestParam("memProfileimage") MultipartFile multipartFile){
		String upload = request.getSession().getServletContext()
				.getRealPath("upload/member");
		
		/*가입한 회원의 사진저장*/
		if (!multipartFile.isEmpty()) {
			File file = new File(upload, multipartFile.getOriginalFilename()
					+ request.getParameter("memName") + System.currentTimeMillis());

			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			String proFileimage = request.getContextPath()+ "/upload/member/" + file.getName();
			member.setMemFrofileimage(proFileimage);
		}
		
		/*팀원의 사진저장*/
		
		/*팀원들 객체*/
		List<TeamVO> teamList = new ArrayList<TeamVO>();
		
		MultipartHttpServletRequest mpRequest = (MultipartHttpServletRequest) request;
		Iterator parameterNames = mpRequest.getFileNames();
		List<String> parameterNamesList = new ArrayList<String>();
		
		while (parameterNames.hasNext()) {
			String fileName = (String) parameterNames.next();
			TeamVO team = new TeamVO();
			String index = fileName.substring(9);
			
			String teamMemName = "";
			
			/*팀원 이름과 역할을 넣어주자*/
			Enumeration enumeration = request.getParameterNames();
			while (enumeration.hasMoreElements()) {
				String name = (String) enumeration.nextElement();
				if (name.contains("teamName")&&name.substring(8).equals(index)) {
					System.out.println("퍼일 이름"+fileName);
					System.out.println("파라미터 이름"+name);
					teamMemName = request.getParameter(name);
					System.out.println(teamMemName);
					team.setTeamName(teamMemName);
				}
				if (name.contains("teamPosi")&&name.substring(8).equals(index)) {
					System.out.println("퍼일 이름"+fileName);
					System.out.println("파라미터 이름"+name);
					team.setTeamPosi(request.getParameter(name));
				}
			}
			
			MultipartFile multiFile = mpRequest.getFile(fileName);
			if (!multiFile.isEmpty()&&!fileName.contains("memProfileimage")) {
				File file = new File(upload, multiFile.getOriginalFilename()
						+ teamMemName+index + System.currentTimeMillis());
				try {
					multiFile.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				String teamInfo = request.getContextPath()+ "/upload/member/" + file.getName();
				team.setTeamInfo(teamInfo);
				team.setMemId(member.getMemId());
				
				teamList.add(team);
			}
		}
		
		Date today = new Date();
		
		int nowYear = today.getYear()+1900;
		String memAge = (((nowYear-Integer.parseInt(member.getMemBirthdate().substring(0,4)))/10)*10)+"";
		if(memAge=="0"){
			memAge="10";
		}
		member.setMemAge(memAge);
		
		int result=-1;
		result = memberService.insertMember(member);
		System.out.println(result);
		
		memberService.insertTeamList(teamList);
		
		return "redirect:/loginForm";
	}
}
