package com.myspring.pro30.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.pro30.member.vo.MemberVO;


public interface MemberDAO {
	 public List selectAllMemberList() throws DataAccessException;
	 public int insertMember(MemberVO memberVO) throws DataAccessException ;
	 public int deleteMember(String id) throws DataAccessException;
	 public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	 public int updateMember(MemberVO memberVO) throws DataAccessException;
	 
	 public String selectOverlappedID(String id) throws DataAccessException;
	public MemberVO selectMyDetailInfo(String member_id) throws DataAccessException;
	int modMember(MemberVO memberVO) throws DataAccessException;
	public void modifyMember(Map memberMap) throws DataAccessException;

}
