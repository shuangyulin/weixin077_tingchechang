package com.entity.vo;

import com.entity.TingchechangxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 停车场信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
public class TingchechangxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 规模
	 */
	
	private String guimo;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 状态
	 */
	
	private String zhuangtai;
		
	/**
	 * 容纳车位
	 */
	
	private Integer rongnachewei;
		
	/**
	 * 实时车位
	 */
	
	private Integer shishichewei;
		
	/**
	 * 可约时间
	 */
	
	private String keyueshijian;
		
	/**
	 * 小时单价
	 */
	
	private String xiaoshidanjia;
		
	/**
	 * 位置
	 */
	
	private String weizhi;
		
	/**
	 * 介绍
	 */
	
	private String jieshao;
		
	/**
	 * 商家账号
	 */
	
	private String shangjiazhanghao;
		
	/**
	 * 商家姓名
	 */
	
	private String shangjiaxingming;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
		
	/**
	 * 用户id
	 */
	
	private Long userid;
				
	
	/**
	 * 设置：规模
	 */
	 
	public void setGuimo(String guimo) {
		this.guimo = guimo;
	}
	
	/**
	 * 获取：规模
	 */
	public String getGuimo() {
		return guimo;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：状态
	 */
	 
	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	
	/**
	 * 获取：状态
	 */
	public String getZhuangtai() {
		return zhuangtai;
	}
				
	
	/**
	 * 设置：容纳车位
	 */
	 
	public void setRongnachewei(Integer rongnachewei) {
		this.rongnachewei = rongnachewei;
	}
	
	/**
	 * 获取：容纳车位
	 */
	public Integer getRongnachewei() {
		return rongnachewei;
	}
				
	
	/**
	 * 设置：实时车位
	 */
	 
	public void setShishichewei(Integer shishichewei) {
		this.shishichewei = shishichewei;
	}
	
	/**
	 * 获取：实时车位
	 */
	public Integer getShishichewei() {
		return shishichewei;
	}
				
	
	/**
	 * 设置：可约时间
	 */
	 
	public void setKeyueshijian(String keyueshijian) {
		this.keyueshijian = keyueshijian;
	}
	
	/**
	 * 获取：可约时间
	 */
	public String getKeyueshijian() {
		return keyueshijian;
	}
				
	
	/**
	 * 设置：小时单价
	 */
	 
	public void setXiaoshidanjia(String xiaoshidanjia) {
		this.xiaoshidanjia = xiaoshidanjia;
	}
	
	/**
	 * 获取：小时单价
	 */
	public String getXiaoshidanjia() {
		return xiaoshidanjia;
	}
				
	
	/**
	 * 设置：位置
	 */
	 
	public void setWeizhi(String weizhi) {
		this.weizhi = weizhi;
	}
	
	/**
	 * 获取：位置
	 */
	public String getWeizhi() {
		return weizhi;
	}
				
	
	/**
	 * 设置：介绍
	 */
	 
	public void setJieshao(String jieshao) {
		this.jieshao = jieshao;
	}
	
	/**
	 * 获取：介绍
	 */
	public String getJieshao() {
		return jieshao;
	}
				
	
	/**
	 * 设置：商家账号
	 */
	 
	public void setShangjiazhanghao(String shangjiazhanghao) {
		this.shangjiazhanghao = shangjiazhanghao;
	}
	
	/**
	 * 获取：商家账号
	 */
	public String getShangjiazhanghao() {
		return shangjiazhanghao;
	}
				
	
	/**
	 * 设置：商家姓名
	 */
	 
	public void setShangjiaxingming(String shangjiaxingming) {
		this.shangjiaxingming = shangjiaxingming;
	}
	
	/**
	 * 获取：商家姓名
	 */
	public String getShangjiaxingming() {
		return shangjiaxingming;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
				
	
	/**
	 * 设置：用户id
	 */
	 
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
			
}
