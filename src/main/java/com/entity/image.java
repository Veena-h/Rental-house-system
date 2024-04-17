package com.entity;

import com.mysql.cj.jdbc.Blob;

public class image 
{
 
	int id;
	
  public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
 	byte[] image;

	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	
	


	
}	
	

