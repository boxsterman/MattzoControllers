#!/bin/bash


while true
do
	echo "Sequence 1 ==========================="
	# msg 1: Set Ext Advertising Disabled  
	hcitool cmd 0x08 0x39 02 00 00

	# msg 2: Set Ext ADV Parameters - Min/Max Interval: 30ms/30ms - Handle: 0x0 - SID: 0  
	hcitool cmd 0x08 0x36 19 00 13 00 30 00 00 30 00 00 07 01 00 00 00 00 00 00 00 00 7F 01 00 02 00 00

	# msg 3: Set Ext ADV Data - ADV Handle: 0x0  
	hcitool cmd 0x08 0x37 1E 00 03 01 1A 02 01 1A 02 0A 0C 13 03 C8 19 01 B4 30 42 27 FA 2A 77 B2 14 3E 8A ED 6B 48 7B

	# msg 4: Set Ext Advertising Enabled - Handles: 0x0   
	hcitool cmd 0x08 0x39 06 01 01 00 00 00 00 

	# msg 5: Set Ext ADV Parameters - Min/Max Interval: 2000ms/2000ms - Handle: 0x3 - SID: 3  
	hcitool cmd 0x08 0x36 19 03 10 00 80 0C 00 80 0C 00 07 01 00 00 00 00 00 00 00 00 7F 01 00 02 03 00 

	# msg 6: Set Ext ADV Data - ADV Handle: 0x3  
	hcitool cmd 0x08 0x37 0C 03 03 01 08 07 FF 4C 00 12 02 00 00

	# msg 7: Set Ext Advertising Enabled - Handles: 0x3   
	hcitool cmd 0x08 0x39 06 01 01 03 00 00 00

	sleep 0.6

	echo "Sequence 2 ==========================="
	# msg 1: Set Ext Advertising Disabled  
	hcitool cmd 0x08 0x39 02 00 00

	# msg 2: Set Ext ADV Parameters - Min/Max Interval: 270ms/270ms - Handle: 0x0 - SID: 0 
	hcitool cmd 0x08 0x36 19 00 13 00 B0 01 00 B0 01 00 07 01 00 00 00 00 00 00 00 00 7F 01 00 02 00 00 

	# msg 3: Set Ext ADV Data - ADV Handle: 0x0  - short message!!
	hcitool cmd 0x08 0x37 17 00 03 01 13 02 01 1A 02 0A 0C 0C FF 4C 00 10 07 7A 1F 7E C0 26 46 48 

	# msg 4: Set Ext Advertising Enabled - Handles: 0x0   
	hcitool cmd 0x08 0x39 06 01 01 00 00 00 00 

	# msg 5: Set Ext ADV Parameters - Min/Max Interval: 2000ms/2000ms - Handle: 0x3 - SID: 3  
	hcitool cmd 0x08 0x36 19 03 10 00 80 0C 00 80 0C 00 07 01 00 00 00 00 00 00 00 00 7F 01 00 02 03 00 

	# msg 6: Set Ext ADV Data - ADV Handle: 0x3  
	hcitool cmd 0x08 0x37 0C 03 03 01 08 07 FF 4C 00 12 02 00 00

	# msg 7: Set Ext Advertising Enabled - Handles: 0x3   
	hcitool cmd 0x08 0x39 06 01 01 03 00 00 00
	
	sleep 0.6

done
