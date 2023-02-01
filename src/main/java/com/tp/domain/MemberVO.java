package com.tp.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String name;
	private String empno;
	private String email;
	private Date birthdate;
}
