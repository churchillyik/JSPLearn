package cn.register.product;

public abstract class AbstractProduct implements Product
{
	private int product_id; // 商品号
	private String product_name; // 商品名称
	private float price; // 商品价格
	private String description; // 商品描述

	public void setProduct_id(int product_id)
	{
		this.product_id = product_id;
	}

	public int getProduct_id()
	{
		return product_id;
	}

	public void setProduct_name(String product_name)
	{
		this.product_name = product_name;
	}

	public String getProduct_name()
	{
		return product_name;
	}

	public void setPrice(float price)
	{
		this.price = price;
	}

	public float getPrice()
	{
		return price;
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
