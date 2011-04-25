tcposc alpha

DESCRIPTION : 

tcposc is a straight forward bridge between tcp and osc but as the OSC destination IP and port is included in the tcp message, you can control *several OSC devices*. tcposc has a tcp server and OSC client. This alpha version tcp server/listener will wait incoming messages and hang up as the client quit. Disclaimer: working alpha but no inside test whatsoever. Use at your own risks.

USAGE :

tcposc forward the osc command received as a TCP message to any OSC enabled device. 
(Due to the translation to UDP, you may want to wait like 0.001 seconds between every tcp message send)

The TCP message format is space separated : OSCdestinationIP  OSCdestinationport  OSCcommand argument
example :
192.168.1.4 8000 /box/40h 0 126 126 126 126 126 126 0

TO RUN :

python tcposc.py

INSTALL :

You need python and to download and install pyosc. 
To install pyosc : python setup.py install

SETUP : 
To setup the tcp port listener, modify tcposc.py

TCP_IP = '127.0.0.1'
TCP_PORT = 13857

LICENSE : 
tcposc is too crappy to have any license for the moment : do whatever you want ! 
Any improvements are more than welcome, but please keep the idea of simple multi destination message format.

TODO:
add several arguments handling.

tcposc is my way to learn python, solving a particular need at the same time.
