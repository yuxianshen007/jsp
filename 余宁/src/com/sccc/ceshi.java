package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class ceshi {
	private ArrayList<String> zhuangtai;
	private HashMap<String,ArrayList<String>> timu;
    public ceshi(){
    	zhuangtai=new ArrayList<String>();
    	timu=new HashMap<String,ArrayList<String>>();
    	
    	
    	String qingkuang1="û�ӵ��绰";
    	zhuangtai.add(qingkuang1);
    	
    	//ѡ�����
    	String xuanxiang1="����ӵ绰";
    	String xuanxiang2="���ڴ���Ϸ";
    	String xuanxiang3="��û����";
    	String xuanxiang4="�Ҳ�����";
    	
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
