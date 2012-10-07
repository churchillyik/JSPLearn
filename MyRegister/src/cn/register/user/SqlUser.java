package cn.register.user;

import cn.register.db.DBConnect;
import cn.register.MD5;

public class SqlUser extends AbstractUser
{
	public boolean checkRPwd(String password, String rpassword)
	{
		if (password != null && password != null)
		{
			if (password.equals(rpassword))
				return true;
			else
				return false;
		}
		else
		{
			return false;
		}
	}

	public boolean saveUser(User user)
	{
		String User_id = user.getUser_id();
		String Password = MD5.toMD5(user.getPassword());
		String Name = user.getName();
		String Sex = user.getSex();
		long Birth = user.getBirth();
		String Description = user.getDescription();
		String str = "insert into users values('" + User_id
				+ "','" + Password
				+ "','" + Name
				+ "','" + Sex
				+ "'," + Birth
				+ ",'" + Description+"')";
		System.out.println(str);
		try
		{
			DBConnect dbconnect = new DBConnect();
			dbconnect.excuteUpdate(str);
			return true;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	public User getUser(String ID)
	{
		String str = "select * from users where USER_ID='" + ID + "'";
		try
		{
			DBConnect dbconnect = new DBConnect();
			dbconnect.excuteQuery(str);
			if (dbconnect.next())
			{
				this.setUser_id(dbconnect.getString(1));
				this.setPassword(dbconnect.getString(2));
				this.setName(dbconnect.getString(3));
				this.setSex(dbconnect.getString(4));
				this.setBirth(dbconnect.getLong(5));
				this.setDescription(dbconnect.getString(6));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return this;
	}

	public int checkUser(String ID, String password)
	{
		int index = 0;
		User user = getUser(ID);
		if (user != null)
		{
			if (user.getPassword().equals(MD5.toMD5(password)))
				index = 0;
			else
				index = 2;
		}
		else
		{
			index = 1;
		}
		return index;
	}
}
