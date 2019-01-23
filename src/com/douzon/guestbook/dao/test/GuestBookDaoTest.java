package com.douzon.guestbook.dao.test;

import java.util.List;

import com.douzon.guestbook.dao.GuestBookDao;
import com.douzon.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
		
		getListTest();

	}
	
	public static void getListTest() {
		List<GuestBookVo> list = new GuestBookDao().getList();
		
		for(GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}

}
