package cn.register.user;

public abstract class AbstractUser implements User
{
	private String user_id; // �û���
	private String password; // �û�����
	private String name; // �û�����
	private String sex; // �û��Ա�
	private long birth; // �û���������
	private String description; // �û�����
	  
	public void setUser_id(String user_id)
	{
		this.user_id = user_id;
	}

	public String getUser_id()
	{
		return user_id;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getPassword()
	{
		return password;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getName()
	{
		return name;
	}

	public void setSex(String sex)
	{
		this.sex = sex;
	}

	public String getSex()
	{
		return sex;
	}

	public void setBirth(long birth)
	{
		this.birth = birth;
	}

	public long getBirth()
	{
		return birth;
	}

	public void setDescription(String description)
	{
		this.description = description;
	}

	public String getDescription()
	{
		return description;
	}
}
