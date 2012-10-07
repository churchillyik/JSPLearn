package cn.register.product;

public interface Product
{
	public abstract void setProduct_id(int product_id);

	public abstract int getProduct_id();

	public abstract void setProduct_name(String product_name);

	public abstract String getProduct_name();

	public abstract void setPrice(float price);

	public abstract float getPrice();

	public abstract void setDescription(String description);

	public abstract String getDescription();
}