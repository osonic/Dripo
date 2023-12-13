#include "init.h"
#include <stdio.h>
#include "compiler_defs.h"
#include "C8051F300_defs.h"
#include "AD593X.h"
#include <math.h>
// This can be interuptted!

char putchar (char c)  
{
    if (c == '\n')      // check for newline character
    {                
        while (!TI0);   // wait until UART0 is ready to transmit
            TI0 = 0;    // clear interrupt flag
        SBUF0 = 0x0d;   // output carriage return command
    }
    while (!TI0);       // wait until UART0 is ready to transmit
    TI0 = 0;            // clear interrupt flag
    //SBUF0 = c;
    return (SBUF0 = c); // output <c> using UART 0
}

unsigned char put_unsigned_char (unsigned char c)  
{
    while (!TI0);       // wait until UART0 is ready to transmit
    EA = 0;
    EA = 0;
    TI0 = 0;            // clear interrupt flag
    SBUF0 = c;
    EA = 1;
    EA = 1;
    return c; // output <c> using UART 0
}

/*
// This can be interuptted!
char _getkey ()
{
    char c;
    while (!RI0);       // wait until UART0 receives a character
        c = SBUF0;      // save character to local variable
    RI0 = 0;            // clear UART0 receive interrupt flag
    //return '#';
    return (c);         // return value received through UART0
}
*/
bit main_delay_1s()
{
    unsigned long i = 0;
    for (i = 0; i < 34200; i++);
    return 1;
}

#define TYPE_SN 0x00
#define TYPE_CR 0x01
#define FREQ_HIGH 0x0D // 10K
#define FREQ_LOW  0x2B // 3K

double r = 0;
double c = 0;
long c_count = 0;
long r_count = 0;
long c_count_tmp = 0;
long r_count_tmp = 0;
sbit CH_SELECT = P0^3;
unsigned char DataBuffer[8];
xdata unsigned char SN[8];
bit data_found = 0;

void prepare_C_R(double c, double r)
{
    unsigned char * ptC = &c;
    unsigned char * ptR = &r;
    DataBuffer[0] = ptC[0];
    DataBuffer[1] = ptC[1];
    DataBuffer[2] = ptC[2];
    DataBuffer[3] = ptC[3];
    DataBuffer[4] = ptR[0];
    DataBuffer[5] = ptR[1];
    DataBuffer[6] = ptR[2];
    DataBuffer[7] = ptR[3];
}

void prepareSN()
{
    DataBuffer[0] = SN[0];
    DataBuffer[1] = SN[1];
    DataBuffer[2] = SN[2];
    DataBuffer[3] = SN[3];
    DataBuffer[4] = SN[4];
    DataBuffer[5] = SN[5];
    DataBuffer[6] = SN[6];
    DataBuffer[7] = SN[7];
}

void send_data(unsigned char type, unsigned char iLength)
{
    unsigned char i = 0;
    put_unsigned_char(0xF0);
    put_unsigned_char(type);
    for (i = 0; i < iLength; i++)
    {
        put_unsigned_char(DataBuffer[i]);
    }
    put_unsigned_char(0xF1);
}
                                                                                                                                                                                                                                                                                                                                                                                                                                     
void main(void)
{
    unsigned char i = 0;
    Init_Device();
    TI0 = 1;

    TH0 = 0x00;
    TL0 = 0x00;
    CH_SELECT = 0;

    for(i = 0; i < 8; i++)
    {
        SN[i] = i;
    }

    //prepareSN();
    //send_data(TYPE_SN, 8);
    //printf("Start!\n"); 

    while(1)
    {
        if (data_found == 1)
        {
            //printf("Sec\n");
            ET0 = 0;
            ET0 = 0;
            PCA0CPM1 = 0x01;
            PCA0CPM1 = 0x01;
            TH0 = 0;
            TL0 = 0;


            c_count = 0;
            r_count = 0;

            TH0 = 0;
            TL0 = 0;
            PCA0CPM1 = 0x21;
            PCA0CPM1 = 0x21; 
            if (c > 1000000)
            {
                c = 1000000;
            }
            if (r < 0)
            {
                r = 0;
            }
            prepare_C_R(c, r);
            //prepare_C_R(0.1, -0.1);
            send_data(TYPE_CR, 8);

            ET0 = 1;
            ET0 = 1;
            TH0 = 0x00;
            TL0 = 0x00;
            data_found = 0;
        }
    }
}

/*
void CMP0_F_ISR (void) interrupt INTERRUPT_COMPARATOR0F
{
    CP0FIF = 0;
    PCA0CPH0 = 0x80;
}

void CMP0_R_ISR (void) interrupt INTERRUPT_COMPARATOR0R
{
    CP0RIF = 0;  
    PCA0CPH0 = 0x26;
}
*/

void INT0_ISR(void) interrupt INTERRUPT_INT0
{
    PCA0CPH0 = FREQ_LOW;
}

void INT1_ISR(void) interrupt INTERRUPT_INT1
{
    PCA0CPH0 = FREQ_HIGH;
}

void TIMER0_ISR(void) interrupt INTERRUPT_TIMER0
{ 
    EA = 0;
    EA = 0;
    c_count_tmp = c_count;
    r_count_tmp = r_count;
    EA = 1;
    EA = 1; 

    if (CH_SELECT == 0)
    {
        c = ((1.44 * 1000 * 1000 * 1000 * 1000 ) / (100000 * 3 * (double)c_count_tmp)) / 1.03;
    }

    if (CH_SELECT == 1)
    {
        r = ((1.44 / (double)r_count_tmp) - 100000 * 0.01e-6) / (2 * 0.01e-6) / 1000 / 1.03; // 1.03 correct factor
    }
    
    if (c > 200  &&  r < 30000)
    {
        data_found = 1;
    }
    else
    {
        data_found = 0;
    }


    CH_SELECT = ~CH_SELECT; 

    EA = 0;
    EA = 0; 

    if (CH_SELECT == 0)
    {
        c_count = 0; 
    }
    if (CH_SELECT == 1)
    {
        r_count = 0; 
    }

    TH0 = 0x00;
    TL0 = 0x00;  

    EA = 1;
    EA = 1; 
}

void PCA_ISR(void) interrupt INTERRUPT_PCA0
{

    if (CH_SELECT == 0)
    {
        c_count++;
    }

    if (CH_SELECT == 1)
    {
        r_count++;
    }
    CCF1 = 0;
}