package com.tp.service;

import java.util.List;

import com.tp.domain.AdminClubDTO;
import com.tp.domain.AdminMemberDTO;

public interface AdminMemberService {

	// 회원 리스트 
	public List<AdminMemberDTO> getList();
	
	public int getTotal();
	
	public void memberDelete(String empno);
	public void downCount(String id);
}
