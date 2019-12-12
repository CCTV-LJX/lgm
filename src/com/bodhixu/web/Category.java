package com.bodhixu.web;

/**
 * 商品分类
 * 
 * @author liuge
 * 2019年9月25日
 *
 */
public class Category {

	private long cid; //分类编号
	private String name; //分类名称
	
	public Category(long cid, String name) {
		super();
		this.cid = cid;
		this.name = name;
	}
	
	public long getCid() {
		return cid;
	}
	public void setCid(long cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "Category [cid=" + cid + ", name=" + name + "]";
	}
	
}
