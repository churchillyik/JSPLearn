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

//	JAVA_HOME C:\Program Files\Java\jdk1.7.0_06
//	classpath .;%JAVA_HOME%\lib;
//	path %JAVA_HOME%\bin;