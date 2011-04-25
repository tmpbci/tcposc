REBOL [ Title: "jtcpsend" 
	author: Sam Neurohack
	Version: 0.8
]
outport: open/lines tcp://localhost:13857
oscipOUT: "127.0.0.1"
oscportOUT: 8000
on: 1
off: 0

for counter 1 2 1 [
	;;	print counter
	oscommand: ajoin [oscipOUT " " oscportOUT " /40h/clear " on]	
	insert outport oscommand
			
	wait 0.3
	oscommand: ajoin [oscipOUT " " oscportOUT " /40h/clear " off]	
	insert outport oscommand
	
	wait 0.3
]

for counter 1 2 1 [
	for raw 0 7 1 [
		oscommand: ajoin [oscipOUT " " oscportOUT " /40h/led_row " raw " " on]	
		insert outport oscommand
		wait 0.001
		]
			
	wait 0.3
	for raw 7 0 -1 [
		oscommand: ajoin [oscipOUT " " oscportOUT " /40h/led_row " raw " " off]	
		insert outport oscommand
		wait 0.001
		]
	
	wait 0.3
]

for counter 1 2 1 [
	;;	print counter
	oscommand: ajoin [oscipOUT " " oscportOUT " /40h/frame 0 126 126 126 126 126 126 0"]	
	insert outport oscommand
			
	wait 0.3
	oscommand: ajoin [oscipOUT " " oscportOUT " /40h/clear " off]	
	insert outport oscommand
	
	wait 0.3
]
close outport