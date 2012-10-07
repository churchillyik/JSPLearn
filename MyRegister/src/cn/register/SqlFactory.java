package cn.register;

import cn.register.product.Product;
import cn.register.product.SqlProduct;
import cn.register.user.User;
import cn.register.user.SqlUser;

public class SqlFactory extends Factory
{
	public User initUser()
	{
		// 初始化User 实例
		return (User) new SqlUser();
	}

	public Product initProduct()
	{
		// 初始化Product 实例
		return (Product) new SqlProduct();
	}

	public SqlUser initSqlUser()
	{
		// 初始化SqlUser实例
		return new SqlUser();
	}

	public SqlProduct initSqlProduct()
	{
		// 初始化SqlProduct实例
		return new SqlProduct();
	}
}
