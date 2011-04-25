#!/usr/bin/env python


# Translate TCP message to OSC
#
# TCP message : OSC destination IP  OSC destination port  OSC command
#				192.168.1.4 8000 /box/clear 1 4 2
#					 0		  1		2		3 4 5		

import socket, time,random, OSC

# TCP listener
   
TCP_IP = '127.0.0.1'
TCP_PORT = 13857
BUFFER_SIZE = 1024  # Normally 1024, but we want fast response

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((TCP_IP, TCP_PORT))
s.listen(1)
conn, addr = s.accept()
print 'Connection address:', addr


while 1:
       data = conn.recv(BUFFER_SIZE)
       if not data: break
       #print "received data:", data
       commands = data.split()
       nb_oscargs = len(commands)
       oscargs = 3
       msg = OSC.OSCMessage()
       send_address = commands[0], int(commands[1]) # 0 : IP address 1: port
       c = OSC.OSCClient()
       c.connect( send_address ) # set the address for all following messages
       msg.setAddress(commands[2]) # set OSC address
       #print "adresse", commands[2]
       #print "data 1", commands[3]
       while oscargs != nb_oscargs:
       		#print commands[oscargs]
       		msg.append(float(commands[oscargs]))
       		oscargs = oscargs + 1
       #msg.append(1) int
       c.send(msg) # send it!
       conn.send(data)  # echo
       
       
conn.close()