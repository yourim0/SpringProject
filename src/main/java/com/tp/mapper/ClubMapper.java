package com.tp.mapper;

import java.util.List;

import com.tp.domain.AdminClubDTO;
import com.tp.domain.ClubDTO;
import com.tp.domain.Criteria;

public interface ClubMapper {
	
//	public List<ClubDTO> getList1();
	
	public List<ClubDTO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);

	public List<ClubDTO> getExerciseWithPaging(Criteria cri);
	
	public List<ClubDTO> getLeisureWithPaging(Criteria cri);

	public List<ClubDTO> getTravelWithPaging(Criteria cri);

	public List<ClubDTO> getStudyWithPaging(Criteria cri);

	public List<ClubDTO> getDetailWithPaging(Criteria cri);

	public ClubDTO getlist(Long cno);

	public int updatecount(ClubDTO dto);
	
	public void insertSelectKey(ClubDTO dto);

	public void club_insert(ClubDTO dto);
	
	public void apply(AdminClubDTO dto);
	
}
