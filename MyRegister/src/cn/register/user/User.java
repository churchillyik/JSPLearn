package cn.register.user;

public interface User
{
	public abstract void setUser_id(String user_id);

	public abstract String getUser_id();

	public abstract void setPassword(String password);

	public abstract String getPassword();

	public abstract void setName(String name);

	public abstract String getName();

	public abstract void setSex(String sex);

	public abstract String getSex();

	public abstract void setBirth(long birth);

	public abstract long getBirth();

	public abstract void setDescription(String description);

	public abstract String getDescription();
}
