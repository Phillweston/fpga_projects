#include<stdio.h>
#include<stdlib.h>
#include "Calculation.h"
#include<math.h>


extern unsigned char math_dis[50];
/*����ջ*/
struct shuju {
    double data[10];
    int top;
};


/*����ջ*/ 
struct fuhao {
    char symbol[20];
    int top;
};


void InitOperateNum(struct shuju *StackNum)  
{
    StackNum->top = -1;
}


void InitOperateSymbol(struct fuhao *StackSymbol)  
{  
    StackSymbol->top = -1; 
}


/*��������ջ*/
void Inshuju(struct shuju *StackNum, double num)
{
    StackNum->top ++;
    StackNum->data[StackNum->top] = num;
}


/*�������ջ*/ 
void Infuhao(struct fuhao *StackSymbol, char ch)
{
    StackSymbol->top ++;
    StackSymbol->symbol[StackSymbol->top] = ch;
}


/*��ȡ����ջ*/
double Randshuju(struct shuju *StackNum)
{
    return StackNum->data[StackNum->top];
}


/*��ȡ����ջ*/
char Randfuhao(struct fuhao *StackSymbol)
{
    return StackSymbol->symbol[StackSymbol->top];
}


/*������ջȡ������*/
double Putshuju(struct shuju *StackNum)
{
    double  x = 0.0;
    x = StackNum->data[StackNum->top];
    StackNum->top --;
    return x;
}


/*�ӷ���ջȡ������*/
char Putfuhao(struct fuhao *StackSymbol)
{
    char c;
    c = StackSymbol->symbol[StackSymbol->top];
    StackSymbol->top --;
	
    return c;
}


/*�������ȼ��ж�*/
int judge(char ch) {
    if(ch == '(') {
        return 1; 
    }
    if(ch == '+' || ch == '-') {
        return 2;
    }
    else if(ch == '*' || ch == '/') {
        return 3;
    }
    else if(ch == ')') {
        return 4;
    }
		return -1;
}


/*��������*/
double Math(double v1, double v2, char c)
{
    double sum = 0.0;
    switch(c) {
        case '+' : {
            sum = v1 + v2;
            break;
        }
        case '-' : {
            sum = v1 - v2;
            break;
        }
        case '*' : {
            sum = v1 * v2;
            break;
        } 
        case '/' : {
            sum = v1 / v2;
            break;
        }
    }
    return sum;
}

/*
 *Function: �Լ���ʽ���д���
 *input: calstr��ʾ����ļ���ʽ
 *return: ��
*/
double Cal_Fun(char *calstr)
{
    struct shuju data;
    struct fuhao symbol;
	
    InitOperateNum(&data);
    InitOperateSymbol(&symbol);
    int i, t;
	double sum, v1, v2;
	
    i = t = sum = 0;
    char v[50] = {0};
    char *str = (char *)malloc(sizeof(char)*50);
    while(*calstr!= '=') {
        str[i] = *calstr;
        i ++;
		calstr++;
    }
    str[i] = '\0';
    for(i = 0; str[i] != '\0'; i ++) 
	{
        if(i == 0 && str[i] == '-') 
		{
            v[t++] = str[i];
        }
        else if(str[i] == '(' && str[i+1] == '-')
		{
            i ++;
            v[t++] = str[i++];
            while(str[i] >= '0' && str[i] <= '9') 
			{
                v[t] = str[i];
                t ++;
                i ++;
            }
			     
            Inshuju(&data, atoi(v));
            while(t > 0) {
                v[t] = 0;
                t --;
            }
            if(str[i] != ')') 
			{
                i --;
                Infuhao(&symbol, '(');
            }
        }
        else if(str[i] >= '0' && str[i] <= '9') 
		{   
      //while(!(str[i] == '+' || str[i] == '-' || str[i] == '*' || str[i] == '/')) 
			while((str[i] >= '0' && str[i] <= '9') || str[i] == '.')
			{
                v[t] = str[i];
                t ++;
                i ++;
            }
            Inshuju(&data, atof(v));
		      	printf("v = %g\r\n",atof(v));
            while(t > 0) {
                v[t] = 0;
                t --;
            }
            i --;
        }
        else 
		{   
            if(symbol.top == -1) {        //�������ջû��Ԫ�أ�ֱ�Ӱѷ��ŷ������ջ 
                Infuhao(&symbol, str[i]);
            }
            else if(judge(str[i]) == 1) { //����˷�����'('��ֱ�ӷ������ջ 
                Infuhao(&symbol, str[i]);
            }
            else if(judge(str[i]) == 2) { //����˷�����'+'��'-'���ж���ջ�����������ȼ� 
                if(judge(Randfuhao(&symbol)) == 1) { //���ջ��������'('���������ջ 
                    Infuhao(&symbol, str[i]);
                }
                else if(judge(Randfuhao(&symbol)) == 2) { //���ջ��������'+'��'-'�����ջ���� 
                    while(symbol.top >= 0 && data.top >= 1) { //ѭ����ջ
                        v2 = Putshuju(&data);
                        v1 = Putshuju(&data);
                        sum = Math(v1, v2, Putfuhao(&symbol));
                        Inshuju(&data, sum); //��������ѹ������ջ 
                    }
                    Infuhao(&symbol, str[i]); //�·��Ž�ջ 
                }
                else if(judge(Randfuhao(&symbol)) == 3) { //���ջ��������'*'��'/'���������ջ 
                    while(symbol.top >= 0 && data.top >= 1) { //ѭ����ջ
                        v2 = Putshuju(&data);
                        v1 = Putshuju(&data);
                        sum = Math(v1, v2, Putfuhao(&symbol));
                        Inshuju(&data, sum); //��������ѹ������ջ 
                    }
                    Infuhao(&symbol, str[i]); //�·��Ž�ջ 
                }
                /*ջ�����Ų�������')'���ʲ����ж�*/ 
            }
            else if(judge(str[i]) == 3) { //����˷�����'*'��'/'�����ж���ջ�����������ȼ�
                if(judge(Randfuhao(&symbol)) == 1) { //���ջ��������'('���������ջ 
                    Infuhao(&symbol, str[i]);
                }
                else if(judge(Randfuhao(&symbol)) == 2) { //���ջ��������'+'��'-'���������ջ
                    Infuhao(&symbol, str[i]); //�·��Ž�ջ
                }
                else if(judge(Randfuhao(&symbol)) == 3) { //���ջ��������'*'��'/'�����ջ���� 
                    while(symbol.top >= 0 && data.top >= 1) { //ѭ����ջ
                        v2 = Putshuju(&data);
                        v1 = Putshuju(&data);
                        sum = Math(v1, v2, Putfuhao(&symbol));
                        Inshuju(&data, sum); //��������ѹ������ջ 
                    }
                    Infuhao(&symbol, str[i]); //�·��Ž�ջ
                }
            }
            else if(judge(str[i]) == 4) { // ���ջ��������')'�����ջ����ֱ������'('
                do { //ѭ����ջֱ������'('
                    v2 = Putshuju(&data);
                    v1 = Putshuju(&data);
                    sum = Math(v1, v2, Putfuhao(&symbol));
                    Inshuju(&data, sum); //��������ѹ������ջ 
                }while(judge(Randfuhao(&symbol)) != 1);
                Putfuhao(&symbol); //���������������ʹ'('��ջ 
            }       
        }
    }
    free(str); //�ͷ��ڴ�ռ�

    while(symbol.top != -1) {
        v2 = Putshuju(&data);
        v1 = Putshuju(&data);
        sum = Math(v1, v2, Putfuhao(&symbol));
        Inshuju(&data, sum);
    }
    printf("sum = %g\r\n", data.data[0]);
    sprintf(math_dis,"result = %g",data.data[0]);  //�����ռ�������ֵ
    return 0.0;
}

//����һԪ���η��̺���
char* Cal_OneTwo(double a,double b,double c)
{
  double temp,x1,x2;
  temp = b*b-4*a*c;
  if(temp < 0 )  //�޽�
  {
    printf("NO RESULT\r\n");
		sprintf(math_dis,"No Result");
  }
  else
  {
   x1 = (sqrt(temp)-b)/(2*a);
   x2 = (-b-sqrt(temp))/(2*a);
   printf("x1 = %g x2 = %g\r\n",x1,x2);
	 sprintf(math_dis,"x1 = %g x2 = %g",x1,x2);//�������ֵ
  }
}

