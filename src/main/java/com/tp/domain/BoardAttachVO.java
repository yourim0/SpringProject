package com.tp.domain;

import lombok.Data;

@Data
public class BoardAttachVO {
	
	 private String uuid;
	 private String uploadPath;
	 private String fileName;
 	 private String fileType;
 	 public String realFileName;
 	 
 	 private Long bno;

 	 
}