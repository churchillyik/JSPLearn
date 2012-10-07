package cn.register.db;

import java.sql.*;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnect
{
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rst;
	
	//创建数据库的一个Connection连接 
	private void init()
	{
		try
		{
			InitialContext ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql");
			conn = ds.getConnection();
		} 
		catch (Exception e)
		{
			e.printStackTrace(); 
		}  
	}
	
	//构造函数
	public DBConnect()
	{
		try
		{
			//获得一个数据库连接
			init();
			stmt = conn.createStatement();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		} 
	}
	
	//执行数据库查询语句，s为sql语句，把查询结果赋给ResultSet
	public void excuteQuery(String s)
	{
		try
		{
			if (stmt != null)
			{
				rst = stmt.executeQuery(s); 
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace(); 
		}
	}

	//对数据库进行update操作 
	public int excuteUpdate(String s)
	{
		int status = 0;
		try
		{
			if (stmt != null)
			{
				status = stmt.executeUpdate(s);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

	//-------------------------------------------
	//	以下为赋值方法
	//-------------------------------------------
	
	//字符串赋值
	public void setString(int i, String s)
	{      
		try
		{
			pstmt.setString(i, s);
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//布尔型赋值
	public void setBoolean(int i, boolean flag)
	{   
	    try
	    {
	    	pstmt.setBoolean(i, flag);
	    }
	    catch (Exception e)
	    {
	    	e.printStackTrace();
	    }
	}
	
	//日期类型赋值
	public void setDate(int i, Date date)
	{
		try
		{
			pstmt.setDate(i, date);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//时间类型赋值
	public void setTime(int i, Time time)
	{
		try
		{
			pstmt.setTime(i, time);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//Short类型赋值
	public void setShort(int i, short word0)
	{
		try
		{
			pstmt.setShort(i, word0);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//整数类型赋值
	public void setInt(int i, int j)
	{
		try
		{
			pstmt.setInt(i, j);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//长整型赋值
	public void setLong(int i, long l)
	{
		try
		{
			pstmt.setLong(i, l);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//浮点型赋值
	public void setFloat(int i, float f)
	{
		try
		{
			pstmt.setFloat(i, f);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//Double类型赋值
	public void setDouble(int i, double d)
	{
		try
		{
			pstmt.setDouble(i, d);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//-------------------------------------------
	//	以下为取值方法
	//-------------------------------------------
	
	//取得布尔类型的字段，通过列号
	public boolean getBoolean(int i) throws Exception
	{
		return rst.getBoolean(i);
	}
	
	//取得布尔类型的字段，通过字段名
	public boolean getBoolean(String s) throws Exception
	{
		return rst.getBoolean(s);
	}
	
	//取得Date类型的字段，通过列号
	public Date getDate(int i) throws Exception
	{
		return rst.getDate(i);
	}
	
	//取得Date类型的字段，通过字段名
	public Date getDate(String s) throws Exception
	{
		return rst.getDate(s);
	}
	
	//取得Time类型的字段，通过列号
	public Time getTime(int i) throws Exception
	{
		return rst.getTime(i);
	}
	
	//取得Time类型的字段，通过字段名
	public Time getTime(String s) throws Exception
	{
		return rst.getTime(s);
	}
	
	//取得Double 类型的字段，通过列号
	public double getDouble(int i) throws Exception
	{
		return rst.getDouble(i);
	}
	
	//取得Double 类型的字段，通过字段名
	public double getDouble(String s) throws Exception
	{
		return rst.getDouble(s);
	}
	
	//取得Float类型的字段，通过列号
	public float getFloat(int i) throws Exception
	{
		return rst.getFloat(i);
	}
	
	//取得Float类型的字段，通过字段名
	public float getFloat(String s) throws Exception
	{
		return rst.getFloat(s);
	}
	
	//取得整数类型的字段，通过列号
	public int getInt(int i) throws Exception
	{
		return rst.getInt(i);
	}
	
	//取得整数类型的字段，通过字段名
	public int getInt(String s) throws Exception
	{
		return rst.getInt(s);
	}
	
	//取得长整型的字段，通过列号
	public long getLong(int i) throws Exception
	{
		return rst.getLong(i);
	}
	
	//取得长整型的字段，通过字段名
	public long getLong(String s) throws Exception
	{
		return rst.getLong(s);
	}
	
	//取得Short类型的字段，通过列号
	public short getShort(int i) throws Exception
	{
		return rst.getShort(i);
	}
	
	//取得Short类型的字段，通过字段名
	public short getShort(String s) throws Exception
	{
		return rst.getShort(s);
	}
	
	//取得字符串类型的字段，通过列号
	public String getString(int i) throws Exception
	{
		return rst.getString(i);
	}
	
	//取得字符串类型的字段，通过字段名
	public String getString(String s) throws Exception
	{
		return rst.getString(s);
	}
	
    //指针下移一位
	public boolean next()
	{
		try
		{
			return rst.next();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	//释放内容 
	public void close()
	{
		try
		{
			if (conn != null) conn.close();
			if (stmt != null) stmt.close();
			if (rst != null) rst.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}
