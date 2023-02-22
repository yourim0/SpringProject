package com.tp.service;

import java.util.List;

import com.tp.domain.AdminClubDTO;
import com.tp.domain.ClubDTO;
import com.tp.domain.Criteria;
import com.tp.domain.MyClubDTO;

public interface ClubService {
	
	 public List<ClubDTO> getList1(Criteria cri); 
	 
	 public int getTotal(Criteria cri);
	 
	 public List<ClubDTO> getExerciseWithPaging(Criteria cri);
	 
	 public List<ClubDTO> getLeisureWithPaging(Criteria cri);

	 public List<ClubDTO> getTravelWithPaging(Criteria cri);
	 
	 public List<ClubDTO> getStudyWithPaging(Criteria cri);
	 
	 public ClubDTO getlist(Long cno);
	 
	 public int updatecount(ClubDTO dto);
	 
	 public void club_insert(ClubDTO dto);
	 
	 public void apply(AdminClubDTO dto);
}
