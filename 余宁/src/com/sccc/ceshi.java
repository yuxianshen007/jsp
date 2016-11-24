package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class ceshi {
	private ArrayList<String> zhuangtai;
	private HashMap<String,ArrayList<String>> timu;
    public ceshi(){
    	zhuangtai=new ArrayList<String>();
    	timu=new HashMap<String,ArrayList<String>>();
    	
    	
    	String qingkuang1="没接到电话";
    	zhuangtai.add(qingkuang1);
    	
    	//选项添加
    	String xuanxiang1="不想接电话";
    	String xuanxiang2="我在打游戏";
    	String xuanxiang3="我没听到";
    	String xuanxiang4="我不想听";
    	
    	ArrayList<String> temp=new ArrayList<String>();
    	temp.add(xuanxiang1);
    	temp.add(xuanxiang2);
    	temp.add(xuanxiang3);
    	temp.add(xuanxiang4);
    	
    	
    	timu.put(qingkuang1, temp);
    }
    public ArrayList<String> getZhuangTai(){
    	return zhuangtai;
    }
    public void setZhuangTai(ArrayList<String> zhuangtai){
    	this.zhuangtai=zhuangtai;
    }
    public HashMap<String,ArrayList<String>> getTiMu(){
    	return timu;
    }
}
