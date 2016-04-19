package com.beginjavaguys.DAO;
import java.util.*;

import com.beginjavaguys.model.kidmodel;

public class kid {
	
		
		public List<kidmodel> show()
		{
			ArrayList<kidmodel> li = new ArrayList<kidmodel>();
			
			//kidmodel k1 = new kidmodel();
			//k1.setPid("101");
			//k1.setPname("school bag");
			//k1.setQty("1");
			//k1.setCost("700");
			
			
			//kidmodel k2 = new kidmodel();
			//k2.setPid("102");
			//k2.setPname("school bag");
			//k2.setQty("1");
			//k2.setCost("700");
			
			
			
			//kidmodel k1 = new kidmodel();
			//k1.setPid("101");
			//k1.setPname("school bag");
			//k1.setQty("1");
			//k1.setCost("700");
			
			
			
			
			li.add(new kidmodel("101","school bag","23","500") );
			li.add(new kidmodel("102","slider","2","1500") );
			li.add(new kidmodel("103","bed","3","5000") );
			li.add(new kidmodel("104","shoes","1","500") );
			
			
			
			return li;
		}
	
	
	
	
	
}
