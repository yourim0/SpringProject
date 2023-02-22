package com.tp.service;

import java.util.List;

import com.tp.domain.AdminClubDTO;
import com.tp.domain.AdminMemberDTO;
import com.tp.domain.AdminMyClubDTO;
import com.tp.domain.Criteria;

public interface AdminClubService {


	public List<AdminClubDTO> getList();
	public List<AdminClubDTO> getListWithPaging(Criteria cri);
	
	public AdminClubDTO getRead(Long cno);
	
	public List<AdminMemberDTO> getMemberRead(Long cno);
	
	public void clubRegister(AdminClubDTO dto);
	
	public void update(AdminClubDTO dto);
	
	public List<AdminClubDTO> getManageList();
	
	public void MemDelete(Long cno);
		
	public void clubDelete(Long cno);
	
	public int getClubCount();
	
	public int getTotalCount();
	
	public void applyClub(AdminClubDTO dto);
	
	public void wattingDeleteMyClub(Long cno);
	
	public void wattingDeleteClub(Long cno);
	
}
