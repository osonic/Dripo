/////////////////////////////////////
//  Generated Initialization File  //
/////////////////////////////////////

#include "compiler_defs.h"
#include "C8051F300_defs.h"

// Peripheral specific initialization functions,
// Called from the Init_Device() function
void PCA_Init()
{
    PCA0CN    = 0x40;
    PCA0MD    &= ~0x40;
    PCA0MD    = 0x00;
    PCA0CPM0  = 0x46;
    PCA0CPM1  = 0x21;
    PCA0CPH0  = 0x80;
}

void Timer_Init()
{
    TCON      = 0x55;
    TMOD      = 0x21;
    CKCON     = 0x02;
    TH1       = 0x96;
}

void Comparator_Init()
{
    CPT0CN    = 0x05;
    CPT0MX    = 0x11;
}

void Voltage_Reference_Init()
{
    REF0CN    = 0x04;
}

void Port_IO_Init()
{
    // P0.0  -  CEX0 (PCA),  Push-Pull,  Digital
    // P0.1  -  CEX1 (PCA),  Open-Drain, Digital
    // P0.2  -  Unassigned,  Open-Drain, Digital
    // P0.3  -  Skipped,     Push-Pull,  Digital
    // P0.4  -  TX0 (UART0), Push-Pull,  Digital
    // P0.5  -  Unassigned,  Open-Drain, Digital
    // P0.6  -  Unassigned,  Open-Drain, Digital
    // P0.7  -  Unassigned,  Open-Drain, Digital

    P0MDOUT   = 0x19;
    XBR0      = 0x08;
    XBR1      = 0x81;
    XBR2      = 0xC0;
}

void Interrupts_Init()
{
    IP        = 0x05;
    EIE1      = 0x08;
    IT01CF    = 0xC4;
    IE        = 0x87;
}

// Initialization function for device,
// Call Init_Device() from your main program
void Init_Device(void)
{
    PCA_Init();
    Timer_Init();
    Comparator_Init();
    Voltage_Reference_Init();
    Port_IO_Init();
    Interrupts_Init();
}
