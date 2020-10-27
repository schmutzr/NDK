import socket

s = socket.socket() # "s" may subsequently be used like a file-object for reading, writing
s.connect(('www.google.com', 80)) # use defaults AF_INET, SOCK_STREAM=TCP

s.send(b"GET / HTTP/1.0\n\n")
r = s.recv(10000) # buffer-size

print(str(r))

s.close()
