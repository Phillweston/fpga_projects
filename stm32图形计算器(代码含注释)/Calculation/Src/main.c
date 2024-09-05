/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  ** This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * COPYRIGHT(c) 2018 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f0xx_hal.h"
#include "usart.h"
#include "gpio.h"

/* USER CODE BEGIN Includes */
#include "oled.h"
#include "keypad.h"
#include "stdio.h"
#include "Calculation.h"
#include "draw.h"
#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif 
PUTCHAR_PROTOTYPE
{
HAL_UART_Transmit(&huart1 , (uint8_t *)&ch, 1, 0xFFFF);
return ch;
}
/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/
extern uint8_t math_str[80];      //计算表达式字符串，比如“12+45+9-9*8”这样

extern u8 dis_str[80];            //按键输入显示字符串
extern u8 index;                  //LCD显示字符串计数值，表示此时有几个有效字符

/*
enum Mode_Status
{
  Calculation = 0,  //计算器模式
  One_Two,          //计算一元二次方程模式
  Circular,         //圆形图像模式
  SinMode,          //Sin图像模式
  One_One           //一元一次图像模式
};
*/
u8 Curren_Mode;                   //表示当前模式，详见Mode_Status
u8 Need_Math_Flag;                //当前可以进行计算标志
u8 Need_OneTwo_Flag;              //当前可以计算一元二次方程标志
u8 Need_Circular_Flag;            //当前可以输出圆形标志
u8 Need_SinMode_Flag;             //当前可以输出Sin图形标志
u8 Need_OneOne_Flag;              //当前可以输出一元一次图形标志
char math_dis[50];                //计算的结果
u8 need_clean_data;               //Clean标志，清除当前输入
double input_num[3];              //输入参数，比如y=ax+b时，a和b

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();                  //系统时钟初始化

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();                        //GPIO初始化
  MX_USART1_UART_Init();                 //串口1初始化

  /* USER CODE BEGIN 2 */

	Lcd_Init();			                       //初始化OLED       
  BACK_COLOR=BLACK;                      //设置显示屏背景为黑色
	POINT_COLOR=YELLOW;                    //设置显示屏字体颜色为黄色
	
	Calculation_UI();                      //显示计算器界面
	Curren_Mode = Calculation;             //默认模式为计算器模式
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
    Scan_Keyboard();                     //键盘扫描

		switch(Curren_Mode)                  //判断当前模式
		{
	 	case Calculation:                    //计算器模式
			LCD_ShowString(0,40,dis_str);      //显示输入内容
	    if(Need_Math_Flag == 1)            //此时用户输入完，需要计算
	    {
			  Cal_Fun(math_str);               //计算结果
			  LCD_ShowString(0,60,math_dis);   //显示结果
			  need_clean_data = 1;             //下次输入需要自动清空输入内容
		    Need_Math_Flag = 0;              //置0
		  }
			break;

		case One_Two:                            //一元二次计算模式
			  LCD_ShowString(0,60,dis_str);        //显示输入内容
			  if(Need_OneTwo_Flag ==1)            //此时用户输入完，需要计算
			  {
					 Cal_OneTwo(input_num[0],input_num[1],input_num[2]);   //计算结果
					 LCD_ShowString(0,80,math_dis);                        //显示结果
					 need_clean_data = 1;                                  //下次输入需要自动清空输入内容
					 Need_OneTwo_Flag = 0;                                 //置0
			  }
				break;

		case Circular:                            //圆形图像模式
           LCD_ShowString(0,20,dis_str);      //显示输入内容
		       if(Need_Circular_Flag == 1)        //此时用户输入完，需要绘制图形
			     {
							Draw_Round((int)input_num[0],(int)input_num[1],(int)input_num[2]);  //绘制圆形
							Need_Circular_Flag = 0;
							need_clean_data = 1;             //下次输入需要自动清空输入内容
			   }
				break;

		case SinMode:                             //Sin图像模式
			  LCD_ShowString(0,20,dis_str);         //显示输入内容
		    if(Need_SinMode_Flag == 1)            //此时用户输入完，需要绘制图形
			  {
          Draw_Sin((int)input_num[0],(int)input_num[1]);  //绘制Sin图形
					Need_SinMode_Flag = 0;
					need_clean_data = 1;
			  }
				break;

		case One_One:                             //一元一次图像模式
			   LCD_ShowString(0,20,dis_str);        //显示输入内容   
		     if(Need_OneOne_Flag == 1)            //此时用户输入完，需要绘制图形
			   {
			      One_two_degree_equation((int)input_num[0],(int)input_num[1]); //绘制一元二次图形
            Need_OneOne_Flag = 0;
				    need_clean_data = 1;
			   }
				break;

		default :
			  	break;
		}
  }
  /* USER CODE END 3 */

}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInit;

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL12;
  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1;
  PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_PCLK1;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure the Systick interrupt time 
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick 
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void _Error_Handler(char * file, int line)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  while(1) 
  {
  }
  /* USER CODE END Error_Handler_Debug */ 
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
