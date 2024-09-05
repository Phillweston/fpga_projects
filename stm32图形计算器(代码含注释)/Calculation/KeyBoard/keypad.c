
#include "keypad.h"
#include "stdio.h"
#include "oled.h"
#include<string.h>
#include<stdlib.h>
#include "main.h"
extern u8 Need_Math_Flag;
extern u8 Curren_Mode;
extern u8 need_clean_data;
extern char math_dis[50];
extern double input_num[3];
extern u8 Need_OneTwo_Flag;
extern u8 Need_Circular_Flag;
extern u8 Need_SinMode_Flag;
extern u8 Need_OneOne_Flag;
char math_str[80];

u8 index;
u8 dis_str[80];

//����״̬    
char KeyState;                      
//���µļ�ֵ
char KeyCode;                    
// Output value from the virtual 74HC922:
KeyPressed KeyValue;
// KeyDown is set if key is down:
char KeyDown;
// KeyNew is set every time a new key is down:
char KeyNew;
// ӳ���
char KeyTable[12][2];  
// Pin of Row
uint16_t _rows[] = {KEYx0, KEYx1, KEYx2, KEYx3, KEYx4};
uint16_t _cols[] = {KEYy0, KEYy1, KEYy2, KEYy3, KEYy4};

//�����ֲ���
const u8 Code_Map[] = {'A','B','C','D','E',\
                       '1','2','3','/',' ',\
                       '4','5','6','*',' ',\
                       '7','8','9','-','O',\
                       '.','0','=','+','L'};

//���캯��
void Keypad(void)
{    
   Stop();   
   KeyState = 0; // ����״̬��ʼ 0
}


/*
 * �������´�����
*/
void Data_Handle()
{ 
  //��Ҫģʽ�л�
	if(KeyCode == 'A' || KeyCode == 'B' || KeyCode == 'C' || KeyCode == 'D' || KeyCode == 'E')  
  {
      index = 0;
			dis_str[index] = '\0';
			sprintf(math_dis,"result = %g",0);
		  //�жϵ�ǰģʽ�������Ӧ��ʾ��
			switch (Curren_Mode)
			{
        case Calculation:
			  	 LCD_Clean_Line(40,16,BLACK);
				   LCD_Clean_Line(60,16,BLACK);
			  break;
			  case One_Two:
				  LCD_Clean_Line(60,16,BLACK);
				  LCD_Clean_Line(80,16,BLACK);
			  break;
			  case Circular:
			  	  LCD_Clean_Line(20,16,BLACK);
			  case SinMode:
			  	  LCD_Clean_Line(20,16,BLACK);
			  case One_One:
			  	  LCD_Clean_Line(20,16,BLACK);
			  default:
			  	break;
			}
			//������ģʽ
			if(KeyCode == 'A')
			{
					Curren_Mode = Calculation;
					Calculation_UI();
			}
			//���һԪ���η���ģʽ
			else if(KeyCode == 'B')
			{
					Curren_Mode = One_Two;
					One_Two_UI();
			}
			//Բ�λ���ģʽ
			else if(KeyCode == 'C')
			{
					Curren_Mode = Circular;
					Circular_UI();
			}
			//Sin����ģʽ
			else if(KeyCode == 'D')
			{
					Curren_Mode = SinMode;
					SinMode_UI();
			}
			//һԪһ�η���ģʽ
			else if(KeyCode == 'E')
			{
					Curren_Mode = One_One;
					One_One_UI();
			}			
  }
	//���¡�=��,��ʱ������
	else if(KeyCode == '=')           
	{
		memcpy(math_str,dis_str,index);//��������ַ������Ƶ�math_str
		math_str[index] = '=';
		Need_Math_Flag = 1;
	}
	//��ʱ���������ʾ����
	else if(KeyCode == 'L')
	{
      index = 0;              //��ʾ�ַ�����������
			dis_str[index] = '\0';     
			sprintf(math_dis,"result = %g",0);//��ʽ���ַ���
		  
		  //�жϵ�ǰģʽ�������Ӧ��ʾ��
			switch (Curren_Mode)
			{
        case Calculation:
			  	 LCD_Clean_Line(40,16,BLACK);
				   LCD_Clean_Line(60,16,BLACK);
			  break;
			  case One_Two:
				  LCD_Clean_Line(60,16,BLACK);
				  LCD_Clean_Line(80,16,BLACK);
			  break;
			  case Circular:
			  	  LCD_Clean_Line(20,16,BLACK);
			  case SinMode:
			  	  LCD_Clean_Line(20,16,BLACK);
			  case One_One:
			  	  LCD_Clean_Line(20,16,BLACK);
			  default:
			  	break;
			}
	}
	//��ʱ�û�����OK��
	else if(KeyCode == 'O')
  {
    unsigned char i,j,count;
		char temp[50];
  	memcpy(math_str,dis_str,index);//��������ַ������Ƶ�math_str
		math_str[index] = ' ';
		math_str[index+1] = '=';
		i = 0;
		count = 0;
		//�����ַ�������ȡ��������
		while(math_str[i] != '=')
		{  
		   j = 0;
        while(math_str[i] != ' ')
		   {
              temp[j] = math_str[i];
			  i++;
			  j++;
		   }
		   i++;
		   temp[j++] = '\0';
		   input_num[count] = atof(temp);//��ȡ��������� 
		   printf("temp = %s\r\n",temp);
		   printf("data = %g\r\n",input_num[count]);
		   count++;
		}
		//�жϵ�ǰģʽ�����������������
		switch(Curren_Mode)
        {
		  case One_Two:
		  	    Need_OneTwo_Flag = 1;
				break;
			case Circular:
				Need_Circular_Flag = 1;
				break;
			case SinMode:
				Need_SinMode_Flag = 1;
				break;
			case One_One:
				Need_OneOne_Flag = 1;
				break;
			default:
				break;
		}
	}
	else
	{   
		  //��ʱ��Ҫ����������Ӧ��ʾ��
	    if(need_clean_data == 1)
	    {
					index = 0;
					dis_str[index] = '\0';
					sprintf(math_dis,"result = %g",0);
					switch (Curren_Mode)
					{
									case Calculation:
								 LCD_Clean_Line(40,16,BLACK);
							 LCD_Clean_Line(60,16,BLACK);
						break;
						case One_Two:
							LCD_Clean_Line(60,16,BLACK);
							LCD_Clean_Line(80,16,BLACK);
						break;
						case Circular:
								LCD_Clean_Line(20,16,BLACK);
						case SinMode:
								LCD_Clean_Line(20,16,BLACK);
						case One_One:
								LCD_Clean_Line(20,16,BLACK);
						default:
							break;
							
					}
						 
					need_clean_data = 0;
		    }
			  //����������ݱ�����dis_str
				dis_str[index] = KeyCode;
				index++;
				dis_str[index] = '\0';
	}

} 

//ɨ�����
void Scan_Keyboard(void)
{
  switch (KeyState)
	{
		case 0: {
		if (AnyKey()) {    
			char scankey = ScanKey();
			//printf("scankey = %d\n",scankey);
			if (scankey != 0xff)
			{
					KeyCode = scankey;
					printf("KeyCode = %c\n",KeyCode);
					Data_Handle();
			}
			KeyState = 1;
		}
		
		break;
		}
		case 1: {
		if (SameKey()) {
			FindKey();
			KeyState = 2;  
		}
		else 
			KeyState = 0;
		
		break;
		}
		case 2: {
			if (SameKey()) {
			}
			else 
				KeyState = 3;
			
			break;
			}
		case 3: {
			if (SameKey()) {
				KeyState = 2;
			}
			else {
				ClearKey();
				KeyState = 0;
			}
			
			break;
		 }
  }
// func end
}
 
// �м�����
char AnyKey(void) {
 //Start();  //����
 
 int r = -1;
 for (r = 0; r < row_count; r++) {
     if (In(_rows[r]) == 0)  // In macro
         break;	 
 }
 
 //Stop();  //�ָ�
 
 if (!(0 <= r && r < row_count))
    return 0;
 else
    return 1;
}
 
// �����£� ��ֵ��ͬ
char SameKey(void) {
  
  // char KeyCode_new = KeyCode;
  char KeyCode_new = ScanKey();
  if (KeyCode == KeyCode_new)  
    return 1;
  else
    return 0;
}
 
// ɨ���
char ScanKey(void) {
 
 /* ��ɨ�� */
    int r = -1;
    for (r = 0; r < row_count; r++) {
        if (In(_rows[r]) == 0)  // In macro
            break;
    }
 
    /* ��û���ҵ���Ч�У����� */
    if (!(0 <= r && r < row_count)) {
      return 0xff;
        
    }
 
    /* ��ɨ�裬�ҳ������ĸ������� */
    int c = -1;
    for (c = 0; c < col_count; c++) {
        // �����������
        Cols_out(~(1 << c));
        
        if (In(_rows[r]) == 0)  // In macro
            break;
    }
 
    /* �����е������³�� */
    Start();
 
    /* ��û���ҵ���Ч�У����� */
    if (!(0 <= c && c < col_count))
        return 0xff;
    //return r * col_count + c;
		return Code_Map[r * col_count + c];
 
}
 
// FindKey compares KeyCode to values in KeyTable.
// If match, KeyValue, KeyDown and KeyNew are updated.
void FindKey(void) {
 KeyValue = (KeyPressed)KeyCode;
 KeyDown = 1;
 KeyNew = 1;
}
 
 
void ClearKey(void) {
 KeyDown = 0;
}
 
KeyPressed getKey(void) {
  if(KeyNew)
  {
    KeyNew = 0;
    return KeyValue;
  }
  else
    return Key_None;
}
 
void Start(void)
{
    /* �����0�� ������ */
    PORT_COL->BRR = COLS;
}
 
void Stop(void)
{
    /* �����1��ʹ�в������� */
    PORT_COL->BSRR = COLS;
}
 
//���������Ϊ1
void Cols_out(uint16_t v)
{
  if ((v & 0x01) > 0) //0b001
    High(_cols[0]);
  else
    Low(_cols[0]);
  
  if ((v & 0x02) > 0) //0b010
    High(_cols[1]);
  else
    Low(_cols[1]);
  
  if ((v & 0x04) > 0) //0b100
    High(_cols[2]);
  else
    Low(_cols[2]);
  
  if ((v & 0x08) > 0) //0b1000
    High(_cols[3]);
  else
    Low(_cols[3]);
	
 if ((v & 0x10) > 0) //0b10000
    High(_cols[4]);
  else
    Low(_cols[4]);                                        
}
