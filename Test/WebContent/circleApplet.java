import java.applet.Applet;
import java.awt.Graphics;
import java.awt.Color;

//��д��applet С�������Ҫ�̳�Applet ��
public class circleApplet extends Applet
{     
    private Color thecolor = null;      //������ɫ���� 
    private int radius = 5;        //����뾶���� 
	
	//���г�ʼ������ 
    public void init() 
	{
		thecolor = Color.decode(this.getParameter("color"));  //ȡ��ҳ��������color����ֵ 
		radius = Integer.parseInt(this.getParameter("radius"));  //ȡ��ҳ�������õ�radius����ֵ 
    }
	
	//���л�ͼ�ķ��� 
    public void paint(Graphics g)
	{
        g.setColor(thecolor);        //����Բ����ɫ 
        g.fillOval(10,10,radius*2,radius*2);     //��Բ 
    } 
}