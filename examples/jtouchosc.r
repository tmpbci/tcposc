REBOL [ Title: "jtcpsend" 
	author: Sam Neurohack
	Version: 0.8
]
outport: open/lines tcp://localhost:13857
oscipOUT: "192.168.151.201"
oscportOUT: 8000
on: 1
off: 0

;;for counter 1 2 1 [
;;	print counter

			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" on "/" on " " off " " off]	
			insert outport oscommand
			wait 0.002

;full off

	for raw 1 8 1 [
		for column 1 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]	
			insert outport oscommand
			wait 0.002
			]
		
		]
	wait 0.001
	
; Up down
	for raw 1 8 1 [
	for column 1 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.1
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]
			insert outport oscommand
			wait 0.001
			]
		]

;left right

	for column 1 8 1 [
	for raw 1 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.1
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]
			insert outport oscommand
			wait 0.001
			]
		]
	wait 0.001

;full on

	for column 1 8 1 [
		for raw 1 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	wait 1

;full off

	for raw 1 8 1 [
		for column 1 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]	
			insert outport oscommand
			wait 0.002
			]
		
		]
	wait 0.001

;full on

		for column 8 1 -1 [
		for raw 1 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	wait 1

;full off
	
	for raw 8 1 -1 [
		for column 1 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]	
			insert outport oscommand
			wait 0.002
			]
		
		]

; 1 0
; 0 1 on

	for column 5 8 1 [
		for raw 5 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	for column 1 4 1 [
		for raw 1 4 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	wait 0.2


; 1 0
; 0 1 off

	for column 5 8 1 [
		for raw 5 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]		
			insert outport oscommand
			wait 0.001
			]
		]
	for column 1 4 1 [
		for raw 1 4 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]		
			insert outport oscommand
			wait 0.002
			]
		]
	wait 0.02

; 0 1
; 1 0 on
		
	for column 5 8 1 [
		for raw 1 4 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	for column 1 4 1 [
		for raw 5 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	wait 0.2

; 0 1
; 1 0 off

	for column 5 8 1 [
		for raw 1 4 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]		
			insert outport oscommand
			wait 0.001
			]
		]
	for column 1 4 1 [
		for raw 5 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]		
			insert outport oscommand
			wait 0.002
			]
		]
	wait 0.02

; 1 0
; 0 1 on

	for column 5 8 1 [
		for raw 5 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	for column 1 4 1 [
		for raw 1 4 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	wait 0.25


; 1 0
; 0 1 off

	for column 5 8 1 [
		for raw 5 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]		
			insert outport oscommand
			wait 0.001
			]
		]
	for column 1 4 1 [
		for raw 1 4 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]		
			insert outport oscommand
			wait 0.002
			]
		]
	wait 0.002

; 0 1
; 1 0 on
		
	for column 5 8 1 [
		for raw 1 4 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	for column 1 4 1 [
		for raw 5 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " on]		
			insert outport oscommand
			wait 0.001
			]
		]
	wait 0.25

; 0 1
; 1 0 off

	for column 5 8 1 [
		for raw 1 4 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]		
			insert outport oscommand
			wait 0.001
			]
		]
	for column 1 4 1 [
		for raw 5 8 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]		
			insert outport oscommand
			wait 0.002
			]
		]
	wait 0.002	
	
; center beat

for beat 1 9 1 [

			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 4 "/" 4 " " on]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 5 "/" 4 " " on]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 4 "/" 5 " " on]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 5 "/" 5 " " on]		
			insert outport oscommand
			wait 0.3
			
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 4 "/" 4 " " off]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 5 "/" 4 " " off]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 4 "/" 5 " " off]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 5 "/" 5 " " off]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 4 "/" 6 " " on]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 5 "/" 6 " " on]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 4 "/" 3 " " on]		
			insert outport oscommand
			wait 0.001
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 5 "/" 3 " " on]		
			insert outport oscommand
			wait 0.001
			for beatraw 3 6 1 [
				oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 3 "/" beatraw " " on]		
				insert outport oscommand
				wait 0.001
				]
			for beatraw 3 6 1 [
				oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" 6 "/" beatraw " " on]		
				insert outport oscommand
				wait 0.001
				]
			wait 0.3
			
		for raw 3 6 1 [
		for column 3 6 1 [
			oscommand: ajoin [oscipOUT " " oscportOUT " /1/40h/" raw "/" column " " off]	
			insert outport oscommand
			wait 0.002
			]
		
		]
	wait 0.3
]
			

;;	]
close outport