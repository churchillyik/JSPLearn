package cn.register;

import cn.register.product.Product;
import cn.register.product.SqlProduct;
import cn.register.user.User;
import cn.register.user.SqlUser;

public class SqlFactory extends Factory
{
	public User initUser()
	{
		// ��ʼ��User ʵ��
		return (User) new SqlUser();
	}

	public Product initProduct()
	{
		// ��ʼ��Product ʵ��
		return (Product) new SqlProduct();
	}

	public SqlUser initSqlUser()
	{
		// ��ʼ��SqlUserʵ��
		return new SqlUser();
	}

	public SqlProduct initSqlProduct()
	{
		// ��ʼ��SqlProductʵ��
		return new SqlProduct();
	}
}
