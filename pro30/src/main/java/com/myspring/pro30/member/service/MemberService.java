package com.myspring.pro30.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.pro30.member.vo.MemberVO;

public interface MemberService {
	 public List listMembers() throws DataAccessException;
	 public int addMember(MemberVO memberVO) throws DataAccessException;
	 public int removeMember(String id) throws DataAccessException;
	 public MemberVO login(MemberVO memberVO) throws Exception;
	 public int modMember(MemberVO memberVO) throws DataAccessException;

	 public String overlapped(String id) throws Exception;
	 public MemberVO  modifyMember(Map memberMap) throws Exception;
}
