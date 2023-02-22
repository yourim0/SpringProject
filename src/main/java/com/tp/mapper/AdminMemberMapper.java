package com.tp.mapper;

import java.util.List;

import com.tp.domain.AdminClubDTO;
import com.tp.domain.AdminMemberDTO;

public interface AdminMemberMapper {

	// 회원 리스트 
	public List<AdminMemberDTO> getList();
	
	// 회원 수 
	public int getTotal();
	
	public void memberDelete(String empno);
	public void downCount(String id);

	
}
