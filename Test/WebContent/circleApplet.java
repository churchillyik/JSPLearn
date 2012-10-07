import java.applet.Applet;
import java.awt.Graphics;
import java.awt.Color;

//编写的applet 小程序必须要继承Applet 类
public class circleApplet extends Applet
{     
    private Color thecolor = null;      //定义颜色变量 
    private int radius = 5;        //定义半径变量 
	
	//进行初始化操作 
    public void init() 
	{
		thecolor = Color.decode(this.getParameter("color"));  //取得页面中设置color参数值 
		radius = Integer.parseInt(this.getParameter("radius"));  //取得页面中设置的radius参数值 
    }
	
	//进行绘图的方法 
    public void paint(Graphics g)
	{
        g.setColor(thecolor);        //设置圆的颜色 
        g.fillOval(10,10,radius*2,radius*2);     //画圆 
    } 
}