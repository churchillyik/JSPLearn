package com.helloworld;  
public class SimpleBean
{
	private String message = "No message specified";

	public String getMessage()
	{
		//��׼��getXxxx()����
		return (message);  
	}  
	 
	public void setMessage(String message)
	{
		//��׼��setXxxx()����
		this.message = message;
	}  
}