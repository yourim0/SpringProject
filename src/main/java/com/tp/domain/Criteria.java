package com.tp.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	// 게시글 번호 
	private Long bno;
	
	public Criteria() {
		this(1,10);
	}
	
	public Criteria(int pageNum , int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	
	
	// 검색 기능 
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	} // 문자열 자르기 
	
	public String getListLink() {
		
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType())
				.queryParam("keyword", this.getKeyword());
		return builder.toUriString();
				
				
				
	}
}
