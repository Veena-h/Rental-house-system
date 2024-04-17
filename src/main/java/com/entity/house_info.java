package com.entity;

public class house_info 
{
	int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	String property_Id,property_name,location,property_type,area,rent,phone,agent_name,agent_email,agent_phone;
	private byte[] img1;
	String amenities,status;
	
	public String getAmenities() {
		return amenities;
	}

	public void setAmenities(String amenities) {
		this.amenities = amenities;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public byte[] getImg1() {
		return img1;
	}

	public void setImg1(byte[] img1) {
		this.img1 = img1;
	}


	public String getProperty_Id() {
		return property_Id;
	}

	public void setProperty_Id(String property_Id) {
		this.property_Id = property_Id;
	}

	public String getProperty_name() {
		return property_name;
	}

	public void setProperty_name(String property_name) {
		this.property_name = property_name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getProperty_type() {
		return property_type;
	}

	public void setProperty_type(String property_type) {
		this.property_type = property_type;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getRent() {
		return rent;
	}

	public void setRent(String rent) {
		this.rent = rent;
	}

	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAgent_name() {
		return agent_name;
	}

	public void setAgent_name(String agent_name) {
		this.agent_name = agent_name;
	}

	public String getAgent_email() {
		return agent_email;
	}

	public void setAgent_email(String agent_email) {
		this.agent_email = agent_email;
	}

	public String getAgent_phone() {
		return agent_phone;
	}

	public void setAgent_phone(String agent_phone) {
		this.agent_phone = agent_phone;
	}

}
