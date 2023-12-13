//-----------------------------------------------------------------------------
// Global CONSTANTS
//-----------------------------------------------------------------------------


#define  WRITE          0           // SMBus WRITE command
#define  READ           1           // SMBus READ command
#define  SMB_MTSTA      0xE0           // (MT) start transmitted
#define  SMB_MTDB       0xC0           // (MT) data byte transmitted
#define  SMB_MRDB       0x80           // (MR) data byte received


bit write_smb_data(unsigned char target_addr, unsigned char * data_out, unsigned data_out_size);
unsigned char read_smb_byte(unsigned char target_addr);