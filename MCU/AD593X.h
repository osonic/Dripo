// IIC Command
#define CMD_CODE_BLK_WRITE  0xA0  // 1010:0000
#define CMD_CODE_BLK_READ   0xA1  // 1010:0001
#define CMD_ADDR_POINTER    0xB0  // 1011:0000

// Register
#define CONTROL_H   0x80
#define CONTROL_L   0x81

#define STR_FREQ_H  0x82
#define STR_FREQ_M  0x83
#define STR_FREQ_L  0x84

#define FREQ_INC_H  0x85
#define FREQ_INC_M  0x86
#define FREQ_INC_L  0x87

#define NUM_INC_H   0x88
#define NUM_INC_L   0x89

#define NUM_SETTLING_CYC_H  0x8A
#define NUM_SETTLING_CYC_L  0x8B

#define STATUS  0x8F

#define TEMP_H  0x92
#define TEMP_L  0x93

#define REAL_H  0x94
#define REAL_L  0x95

#define IMG_H   0x96
#define IMG_L   0x97

#define COMMAND_BLOCK_WRITE     0xA0
#define COMMAND_BLOCK_READ      0xA1
#define COMMAND_ADDR_POINTER    0xB0

// Functions for "PERFORMING A FREQUENCY SWEEP"
// The Cx51 Compiler allocates double the amount of storage for long types (4 bytes) as it does for int types (2 bytes). 

//void write_start_freq(long freq);
//void write_num_increments(int num);
//void write_freq_increments(long freq);

//void enter_standby_mode();
//void reset_device();

bit write_ad593x_register(unsigned char reg_addr, unsigned char data_out);
unsigned char read_ad593x_register(unsigned char command, unsigned char reg_addr);




