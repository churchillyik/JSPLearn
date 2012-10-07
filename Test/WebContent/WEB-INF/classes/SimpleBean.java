package com.helloworld;  
public class SimpleBean
{
	private String message = "No message specified";

	public String getMessage()
	{
		//标准的getXxxx()方法
		return (message);  
	}  
	 
	public void setMessage(String message)
	{
		//标准的setXxxx()方法
		this.message = message;
	}  
}