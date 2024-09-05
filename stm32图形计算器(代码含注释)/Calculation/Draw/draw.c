#include "draw.h"
#include "oled.h"
#include<math.h>

/* 
                  ^ y
                  |
									|
                  |
									|
									|
									|
                  | (0,0)ʵ�ʶ�Ӧ��ʾ��������Ϊ(160,120),����Ҫ�и�ת���ļ���
------------------.------------------------->									
									|                         x
									|
									|
									|
									|
									|
									|
									|
									|
*/


#define PI 3.1415



/*
 *Function: ��ʾһԪһ�η���ͼ��
 *input: a��ʾy=ax+b�е�a,b��ʾb
 *return: ��
*/
void One_two_degree_equation(int a,int b)
{
  int y1,y2;
	//��Ϊ��ʾ������Ϊ240*320,��ôԭ�������Ϊ(160,120)ʵ����ʾ���������
  y1 = (-160*a+b)%240; //����x����Ϊ-160��ֵ��ȡģ240��ֹԽ��
  y2= (160*a+b)%240;   //����x����Ϊ160�ĵ�
  printf("x1 = %d y1 = %d x2 = %d,y2 = %d\r\n",0,y1, 320, y2);
	//����ֱ�ߣ�һԪһ�η���ͼ��ʵ�ʾ���һ��ֱ�� 
  LCD_DrawLine(0,120-y1, 320, 120-y2);    
   
}

/*
 *Function: ��ʾԲ��
 *input: x,y��ʾԲ�����꣬r��ʾ�뾶
 *return: ��
*/
void Draw_Round(int x,int y,int r)
{
  u16 x1,y1,R;
  x1 = x%160+160;  //����ת��
  y1 = 120-y%120;
  R = r;
  Draw_Circle(x1,y1,R); //Բ����ʾ
}


/*
 *Function: ��ʾSinͼ��,y = Sin(x+a)+b
 *input:  a��ʾ���ƣ�b��ʾb 
 *return: ��
*/

void Draw_Sin(int a ,int b)
{
  double x,y;
  int i;
  for(i=-160;i<160;i++)
  {  
    x = i*PI/180+(a%360);         //�Ƕ�ת��Ϊ����
    y = sin(x);                   //����yֵ
	 printf("sin(%d) = %g\r\n",i,y);
	 y = y*100+120-(b%100);         //ת��Ϊʵ����ʾ������
	 LCD_DrawPoint(i+160,y);        //���
  }
}
