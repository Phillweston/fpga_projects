#include<stdio.h>
#include<stdlib.h>
#include "Calculation.h"
#include<math.h>


extern unsigned char math_dis[50];
/*数据栈*/
struct shuju {
    double data[10];
    int top;
};


/*符号栈*/ 
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


/*存入数据栈*/
void Inshuju(struct shuju *StackNum, double num)
{
    StackNum->top ++;
    StackNum->data[StackNum->top] = num;
}


/*存入符号栈*/ 
void Infuhao(struct fuhao *StackSymbol, char ch)
{
    StackSymbol->top ++;
    StackSymbol->symbol[StackSymbol->top] = ch;
}


/*读取数据栈*/
double Randshuju(struct shuju *StackNum)
{
    return StackNum->data[StackNum->top];
}


/*读取符号栈*/
char Randfuhao(struct fuhao *StackSymbol)
{
    return StackSymbol->symbol[StackSymbol->top];
}


/*从数据栈取出数据*/
double Putshuju(struct shuju *StackNum)
{
    double  x = 0.0;
    x = StackNum->data[StackNum->top];
    StackNum->top --;
    return x;
}


/*从符号栈取出符号*/
char Putfuhao(struct fuhao *StackSymbol)
{
    char c;
    c = StackSymbol->symbol[StackSymbol->top];
    StackSymbol->top --;
	
    return c;
}


/*符号优先级判断*/
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


/*四则运算*/
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
 *Function: 对计算式进行处理
 *input: calstr表示输入的计算式
 *return: 无
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
            if(symbol.top == -1) {        //如果符号栈没有元素，直接把符号放入符号栈 
                Infuhao(&symbol, str[i]);
            }
            else if(judge(str[i]) == 1) { //如果此符号是'('，直接放入符号栈 
                Infuhao(&symbol, str[i]);
            }
            else if(judge(str[i]) == 2) { //如果此符号是'+'或'-'，判断与栈顶符号是优先级 
                if(judge(Randfuhao(&symbol)) == 1) { //如果栈顶符号是'('，放入符号栈 
                    Infuhao(&symbol, str[i]);
                }
                else if(judge(Randfuhao(&symbol)) == 2) { //如果栈顶符号是'+'或'-'，则出栈运算 
                    while(symbol.top >= 0 && data.top >= 1) { //循环出栈
                        v2 = Putshuju(&data);
                        v1 = Putshuju(&data);
                        sum = Math(v1, v2, Putfuhao(&symbol));
                        Inshuju(&data, sum); //将运算结果压入数据栈 
                    }
                    Infuhao(&symbol, str[i]); //新符号进栈 
                }
                else if(judge(Randfuhao(&symbol)) == 3) { //如果栈顶符号是'*'或'/'，则进符号栈 
                    while(symbol.top >= 0 && data.top >= 1) { //循环出栈
                        v2 = Putshuju(&data);
                        v1 = Putshuju(&data);
                        sum = Math(v1, v2, Putfuhao(&symbol));
                        Inshuju(&data, sum); //将运算结果压入数据栈 
                    }
                    Infuhao(&symbol, str[i]); //新符号进栈 
                }
                /*栈顶符号不可能是')'，故不做判断*/ 
            }
            else if(judge(str[i]) == 3) { //如果此符号是'*'或'/'，则判断与栈顶符号是优先级
                if(judge(Randfuhao(&symbol)) == 1) { //如果栈顶符号是'('，放入符号栈 
                    Infuhao(&symbol, str[i]);
                }
                else if(judge(Randfuhao(&symbol)) == 2) { //如果栈顶符号是'+'或'-'，则进符号栈
                    Infuhao(&symbol, str[i]); //新符号进栈
                }
                else if(judge(Randfuhao(&symbol)) == 3) { //如果栈顶符号是'*'或'/'，则出栈运算 
                    while(symbol.top >= 0 && data.top >= 1) { //循环出栈
                        v2 = Putshuju(&data);
                        v1 = Putshuju(&data);
                        sum = Math(v1, v2, Putfuhao(&symbol));
                        Inshuju(&data, sum); //将运算结果压入数据栈 
                    }
                    Infuhao(&symbol, str[i]); //新符号进栈
                }
            }
            else if(judge(str[i]) == 4) { // 如果栈顶符号是')'，则出栈运算直到遇到'('
                do { //循环出栈直到遇到'('
                    v2 = Putshuju(&data);
                    v1 = Putshuju(&data);
                    sum = Math(v1, v2, Putfuhao(&symbol));
                    Inshuju(&data, sum); //将运算结果压入数据栈 
                }while(judge(Randfuhao(&symbol)) != 1);
                Putfuhao(&symbol); //括号内运算结束后使'('出栈 
            }       
        }
    }
    free(str); //释放内存空间

    while(symbol.top != -1) {
        v2 = Putshuju(&data);
        v1 = Putshuju(&data);
        sum = Math(v1, v2, Putfuhao(&symbol));
        Inshuju(&data, sum);
    }
    printf("sum = %g\r\n", data.data[0]);
    sprintf(math_dis,"result = %g",data.data[0]);  //将最终计算结果赋值
    return 0.0;
}

//计算一元二次方程函数
char* Cal_OneTwo(double a,double b,double c)
{
  double temp,x1,x2;
  temp = b*b-4*a*c;
  if(temp < 0 )  //无解
  {
    printf("NO RESULT\r\n");
		sprintf(math_dis,"No Result");
  }
  else
  {
   x1 = (sqrt(temp)-b)/(2*a);
   x2 = (-b-sqrt(temp))/(2*a);
   printf("x1 = %g x2 = %g\r\n",x1,x2);
	 sprintf(math_dis,"x1 = %g x2 = %g",x1,x2);//给结果赋值
  }
}

