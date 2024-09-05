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
                  | (0,0)实际对应显示屏的坐标为(160,120),故需要有个转换的计算
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
 *Function: 显示一元一次方程图形
 *input: a表示y=ax+b中的a,b表示b
 *return: 无
*/
void One_two_degree_equation(int a,int b)
{
  int y1,y2;
	//因为显示屏参数为240*320,那么原点坐标就为(160,120)实际显示屏的坐标点
  y1 = (-160*a+b)%240; //计算x坐标为-160的值，取模240防止越界
  y2= (160*a+b)%240;   //计算x坐标为160的点
  printf("x1 = %d y1 = %d x2 = %d,y2 = %d\r\n",0,y1, 320, y2);
	//绘制直线，一元一次方程图形实际就是一条直线 
  LCD_DrawLine(0,120-y1, 320, 120-y2);    
   
}

/*
 *Function: 显示圆形
 *input: x,y表示圆心坐标，r表示半径
 *return: 无
*/
void Draw_Round(int x,int y,int r)
{
  u16 x1,y1,R;
  x1 = x%160+160;  //坐标转换
  y1 = 120-y%120;
  R = r;
  Draw_Circle(x1,y1,R); //圆形显示
}


/*
 *Function: 显示Sin图形,y = Sin(x+a)+b
 *input:  a表示相移，b表示b 
 *return: 无
*/

void Draw_Sin(int a ,int b)
{
  double x,y;
  int i;
  for(i=-160;i<160;i++)
  {  
    x = i*PI/180+(a%360);         //角度转换为弧度
    y = sin(x);                   //计算y值
	 printf("sin(%d) = %g\r\n",i,y);
	 y = y*100+120-(b%100);         //转化为实际显示屏坐标
	 LCD_DrawPoint(i+160,y);        //描点
  }
}
