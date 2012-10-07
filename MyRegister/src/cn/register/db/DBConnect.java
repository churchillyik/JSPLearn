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
	
	//�������ݿ��һ��Connection���� 
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
	
	//���캯��
	public DBConnect()
	{
		try
		{
			//���һ�����ݿ�����
			init();
			stmt = conn.createStatement();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		} 
	}
	
	//ִ�����ݿ��ѯ��䣬sΪsql��䣬�Ѳ�ѯ�������ResultSet
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

	//�����ݿ����update���� 
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
	//	����Ϊ��ֵ����
	//-------------------------------------------
	
	//�ַ�����ֵ
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
	
	//�����͸�ֵ
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
	
	//�������͸�ֵ
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
	
	//ʱ�����͸�ֵ
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
	
	//Short���͸�ֵ
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
	
	//�������͸�ֵ
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
	
	//�����͸�ֵ
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
	
	//�����͸�ֵ
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
	
	//Double���͸�ֵ
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
	//	����Ϊȡֵ����
	//-------------------------------------------
	
	//ȡ�ò������͵��ֶΣ�ͨ���к�
	public boolean getBoolean(int i) throws Exception
	{
		return rst.getBoolean(i);
	}
	
	//ȡ�ò������͵��ֶΣ�ͨ���ֶ���
	public boolean getBoolean(String s) throws Exception
	{
		return rst.getBoolean(s);
	}
	
	//ȡ��Date���͵��ֶΣ�ͨ���к�
	public Date getDate(int i) throws Exception
	{
		return rst.getDate(i);
	}
	
	//ȡ��Date���͵��ֶΣ�ͨ���ֶ���
	public Date getDate(String s) throws Exception
	{
		return rst.getDate(s);
	}
	
	//ȡ��Time���͵��ֶΣ�ͨ���к�
	public Time getTime(int i) throws Exception
	{
		return rst.getTime(i);
	}
	
	//ȡ��Time���͵��ֶΣ�ͨ���ֶ���
	public Time getTime(String s) throws Exception
	{
		return rst.getTime(s);
	}
	
	//ȡ��Double ���͵��ֶΣ�ͨ���к�
	public double getDouble(int i) throws Exception
	{
		return rst.getDouble(i);
	}
	
	//ȡ��Double ���͵��ֶΣ�ͨ���ֶ���
	public double getDouble(String s) throws Exception
	{
		return rst.getDouble(s);
	}
	
	//ȡ��Float���͵��ֶΣ�ͨ���к�
	public float getFloat(int i) throws Exception
	{
		return rst.getFloat(i);
	}
	
	//ȡ��Float���͵��ֶΣ�ͨ���ֶ���
	public float getFloat(String s) throws Exception
	{
		return rst.getFloat(s);
	}
	
	//ȡ���������͵��ֶΣ�ͨ���к�
	public int getInt(int i) throws Exception
	{
		return rst.getInt(i);
	}
	
	//ȡ���������͵��ֶΣ�ͨ���ֶ���
	public int getInt(String s) throws Exception
	{
		return rst.getInt(s);
	}
	
	//ȡ�ó����͵��ֶΣ�ͨ���к�
	public long getLong(int i) throws Exception
	{
		return rst.getLong(i);
	}
	
	//ȡ�ó����͵��ֶΣ�ͨ���ֶ���
	public long getLong(String s) throws Exception
	{
		return rst.getLong(s);
	}
	
	//ȡ��Short���͵��ֶΣ�ͨ���к�
	public short getShort(int i) throws Exception
	{
		return rst.getShort(i);
	}
	
	//ȡ��Short���͵��ֶΣ�ͨ���ֶ���
	public short getShort(String s) throws Exception
	{
		return rst.getShort(s);
	}
	
	//ȡ���ַ������͵��ֶΣ�ͨ���к�
	public String getString(int i) throws Exception
	{
		return rst.getString(i);
	}
	
	//ȡ���ַ������͵��ֶΣ�ͨ���ֶ���
	public String getString(String s) throws Exception
	{
		return rst.getString(s);
	}
	
    //ָ������һλ
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
	
	//�ͷ����� 
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
