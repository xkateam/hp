package com.tedu.dao;
import java.util.List;

import com.tedu.pojo.Zpinfo;

public interface ZpinfoMapper {
	public List<Zpinfo> findAll();
	public void insertzpinfo(Zpinfo zpinfo);

}
