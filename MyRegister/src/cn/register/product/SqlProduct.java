package cn.register.product;

import cn.register.Factory;
import cn.register.db.DBConnect;
import java.util.ArrayList;
import java.util.Iterator;

public class SqlProduct extends AbstractProduct
{
	public Iterator<Product> getProducts()
	{
		ArrayList<Product> arraylist = new ArrayList<Product>();
		Product product = Factory.getInstance().initProduct();
		String str = "select * from products";
		try
		{
			DBConnect dbconnect = new DBConnect();
			dbconnect.excuteQuery(str);
			while (dbconnect.next())
			{
				product.setProduct_id(dbconnect.getInt(1));
				product.setProduct_name(dbconnect.getString(2));
				product.setPrice(dbconnect.getFloat(3));
				product.setDescription(dbconnect.getString(4));
				arraylist.add(product);
			}
			return arraylist.iterator();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
}
