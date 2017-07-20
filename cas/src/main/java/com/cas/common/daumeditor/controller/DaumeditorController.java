package com.cas.common.daumeditor.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;
import java.util.zip.ZipException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/daumeditor")
public class DaumeditorController {

	// 파일 첨부 팝업 
	@RequestMapping(value = "/filePopup") 
	public String filePopup() { 
		return "/daumeditor/file"; 
	} 

	@RequestMapping("/imagePopup")
	public String imagePopup(){
		return "/daumeditor/image";
	}
	
	@RequestMapping("/videoPopup")
	public String videoPopup(){
		return "/daumeditor/video";
	}
	
	// 영상 업로드 Ajax
	@RequestMapping(value = "/singleUploadFileAjax", method = RequestMethod.POST)
	public @ResponseBody HashMap singleUploadFileAjax(@RequestParam("Filedata") MultipartFile multipartFile, HttpSession httpSession,HttpServletRequest request) {

	    HashMap fileInfo = new HashMap(); // CallBack할 때 파일 정보를 담을 Map

	    // 업로드 파일이 존재하면
	    if(multipartFile != null && !(multipartFile.getOriginalFilename().equals(""))) {
			// 확장자 제한 
			String originalName = multipartFile.getOriginalFilename(); // 실제 파일명 
			String originalNameExtension = originalName.substring(originalName.lastIndexOf(".") + 1).toLowerCase(); // 실제파일 확장자 (소문자변경) 
	    	if( !( (originalNameExtension.equals("mp4")) || (originalNameExtension.equals("avi")) || (originalNameExtension.equals("mpeg")) || (originalNameExtension.equals("wmv")) ) ){ 
				fileInfo.put("result", -1); // 허용 확장자가 아닐 경우 
				return fileInfo; 
			} 
	    	
	        // 파일크기제한 (5MB)
	        long filesize = multipartFile.getSize(); // 파일크기
	        long limitFileSize = 300*1024*1024; // 300MB
	        if(limitFileSize < filesize){ // 제한보다 파일크기가 클 경우
	            fileInfo.put("result", -2);
	            return fileInfo; 
	        }

	        // 저장경로
	        String defaultPath = httpSession.getServletContext().getRealPath("/"); // 서버기본경로 (프로젝트 폴더 아님)
	        String path = defaultPath + File.separator + "upload" +  File.separator + "files" + File.separator + "";

	        // 저장경로 처리
	        File file = new File(path);
	        if(!file.exists()) { // 디렉토리 존재하지 않을경우 디렉토리 생성
	            file.mkdirs();
	        }

	        // 파일 저장명 처리 (20150702091941-파일명)
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
	        String today= formatter.format(new Date());
	        String modifyName = today + "-" + originalName; 

	        // Multipart 처리
	        try {
	            // 서버에 파일 저장 (쓰기)
	            multipartFile.transferTo(new File(path + modifyName));

	            // 로그
	            System.out.println("** upload 정보 **");
	            System.out.println("** path : " + path + " **");
	            System.out.println("** originalName : " + originalName + " **");
	            System.out.println("** modifyName : " + modifyName + " **");
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.out.println("파일업로드 실패 - singleUploadFileAjax");
	        }

	        // mime
	        String fileMime = multipartFile.getContentType();

	        System.out.println(fileMime);
	        // CallBack - Map에 담기
	        String attachurl = request.getContextPath() + "/upload/files/" + modifyName; // separator와는 다름!
	        fileInfo.put("attachurl", attachurl); // 상대파일경로(사이즈변환이나 변형된 파일)
	        fileInfo.put("filemime", fileMime); // mime
	        fileInfo.put("filename", modifyName); // 파일명
	        fileInfo.put("filesize", filesize); // 파일사이즈
	        fileInfo.put("result", 1); // -1을 제외한 아무거나 싣어도 됨
	    }

	    return fileInfo;    // @ResponseBody 어노테이션을 사용하여 Map을 JSON형태로 반환
	}
	
	
	public static int GetDuration(final String sVideoInput) 
	        throws URISyntaxException, ZipException, IOException{ 
		String res = "";
		File videoFile = new File(sVideoInput);
			
		Runtime run = Runtime.getRuntime();
		
		String command = "C:\\Users\\pc02\\Desktop\\ffmpeg-20170711-0780ad9-win64-static\\bin\\ffmpeg.exe -i \""+videoFile+"\"";
				
						Process child = null;
					child = run.exec(command);
		 
		            InputStream lsOut = child.getErrorStream();
		            InputStreamReader isr = new InputStreamReader(lsOut);
		            BufferedReader in = new BufferedReader(isr);
		 
		 
		            // parsing .exe output to find info for duration:
		String line;
		while ((line = in.readLine()) != null){
		    if(line.contains("Duration:")){
		    line = line.replaceFirst("Duration: ", ""); 
		    line = line.trim();
		     
		    res = line.substring(0, 11);
		    System.out.println("DURATA: " + res);
		        break;
		    }
		}
		
		String[] parts = res.split(":");
		int hrs = Integer.parseInt(parts[0]);
		int mins = Integer.parseInt(parts[1]);
		int secs = Integer.parseInt(parts[2].substring(0,2)); // Substring eliminates miliseconds part, separated by a dot character
		 
		int duration = secs + mins * 60 + hrs * 3600;
		return duration;
	}  
	
	

	// 단일 이미지 파일 업로드 Ajax 
	@RequestMapping(value = "/singleUploadImageAjax", method = RequestMethod.POST) 
	public @ResponseBody HashMap singleUploadImageAjax(@RequestParam("Filedata") MultipartFile multipartFile, HttpSession httpSession,HttpServletRequest request) { 
		HashMap fileInfo = new HashMap(); // CallBack할 때 이미지 정보를 담을 Map 
		// 업로드 파일이 존재하면 
		if(multipartFile != null && !(multipartFile.getOriginalFilename().equals(""))) { 
			
			// 확장자 제한 
			String originalName = multipartFile.getOriginalFilename(); // 실제 파일명 
			String originalNameExtension = originalName.substring(originalName.lastIndexOf(".") + 1).toLowerCase(); // 실제파일 확장자 (소문자변경) 
			if( !( (originalNameExtension.equals("jpg")) || (originalNameExtension.equals("gif")) || (originalNameExtension.equals("png")) || (originalNameExtension.equals("bmp")) ) ){ 
				fileInfo.put("result", -1); // 허용 확장자가 아닐 경우 
				return fileInfo; 
			} 
			
			// 파일크기제한 (100MB) 
			long filesize = multipartFile.getSize(); // 파일크기 
			long limitFileSize = 100*1024*1024; // 1MB 
			if(limitFileSize < filesize){ // 제한보다 파일크기가 클 경우 
				fileInfo.put("result", -2); 
				return fileInfo; 
			} 
			
			// 저장경로 
			String defaultPath = httpSession.getServletContext().getRealPath("/"); // 서버기본경로 (프로젝트 폴더 아님) 
			String path = defaultPath + File.separator + "upload" + File.separator + "images" + File.separator + ""; 
//			String path2 = "C:/Users/pc02/git/cas/cas/src/main/webapp/upload/images/"; 
			
			// 저장경로 처리 
			File file = new File(path); 
			if(!file.exists()) { // 디렉토리 존재하지 않을경우 디렉토리 생성 
				file.mkdirs(); 
			} 
			
//			// 저장경로 처리 
//			File file2 = new File(path2); 
//			if(!file2.exists()) { // 디렉토리 존재하지 않을경우 디렉토리 생성 
//				file2.mkdirs(); 
//			} 
			
			// 파일 저장명 처리 (20150702091941-fd8-db619e6040d5.확장자) 
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss"); 
			String today= formatter.format(new Date()); 
			String modifyName = today + "-" + UUID.randomUUID().toString().substring(20) + "." + originalNameExtension; 
			
			// Multipart 처리 
			try { // 서버에 파일 저장 (쓰기) 
				multipartFile.transferTo(new File(path + modifyName)); 
//				multipartFile.transferTo(new File(path2 + modifyName)); 
				
				// 로그 
				System.out.println("** upload 정보 **"); 
				System.out.println("** path : " + path + " **"); 
				System.out.println("** originalName : " + originalName + " **"); 
				System.out.println("** modifyName : " + modifyName + " **"); 
			} catch (Exception e) { 
				e.printStackTrace(); 
				System.out.println("이미지파일업로드 실패 - singleUploadImageAjax"); 
			} 
			
			// CallBack - Map에 담기 
			String imageurl = request.getContextPath()+"/upload/images/"+ modifyName; // separator와는 다름! 
			fileInfo.put("imageurl", imageurl); // 상대파일경로(사이즈변환이나 변형된 파일) 
			fileInfo.put("filename", modifyName); // 파일명 
			fileInfo.put("filesize", filesize); // 파일사이즈
			fileInfo.put("imagealign", "C"); // 이미지정렬(C:center) 
			fileInfo.put("originalurl", imageurl); // 실제파일경로 
			fileInfo.put("thumburl", imageurl); // 썸네일파일경로(사이즈변환이나 변형된 파일)
			System.out.println(imageurl);
			fileInfo.put("result", 1); // -1, -2를 제외한 아무거나 싣어도 됨 
		} 
		
		return fileInfo; // @ResponseBody 어노테이션을 사용하여 Map을 JSON형태로 반환 }
	}

}
