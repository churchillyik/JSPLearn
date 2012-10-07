package cn.register;

import cn.register.product.Product;
import cn.register.product.SqlProduct;
import cn.register.user.User;
import cn.register.user.SqlUser;

public abstract class Factory
{
	private static Factory factory = null;

	public Factory() {
	}

	public static Factory getInstance()
	{
		if (factory == null)
		{
			try
			{
				factory = (Factory) Class.forName("cn.register.SqlFactory").newInstance();
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		}
		return factory;
	}

	public abstract User initUser();

	public abstract SqlUser initSqlUser();

	public abstract Product initProduct();

	public abstract SqlProduct initSqlProduct();
}
