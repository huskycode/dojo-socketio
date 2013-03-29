dojo-socketio
=============

A codebase to use for HuskyCode's dojo. These topics are planned to be covered.

- HTTP module Server/Client
- Events
- Socket IO
- Basic TDD

How to Install NodeJS
---------------------

Refer to [INSTALL.md](https://raw.github.com/huskycode/node-template/master/INSTALL.md)

Resources
--------

#### HTTP

```CoffeeScript
http = require('http')
http.createServer([requestListener]) #Returns a new web server object.
http.get(options, callback) #send request (method GET) to server.
```

#### Response

```CoffeeScript
response.writeHead(statusCode, [reasonPhrase], [headers]) #Sends a response header to the request.
response.write(chunk, [encoding]) #This sends a chunk of the response body.
response.end([data], [encoding]) #This method signals to the server that response have been sent;
```

#### Message

```CoffeeScript
message.statusCode #HTTP (response) status code.
message.setEncoding([encoding]) #Set the encoding for data emitted by the 'data' event.

data: function (chunk) { }
close: function () { }
```

#### Server

```CoffeeScript
server.listen(port, [hostname], [backlog], [callback]) #Begin accepting connections.
server.close([callback]) #Stops the server from accepting new connections.

request: function (request, response) { }
connection: function (socket) { }
close: function () { }
connect: function (request, socket, head) { }
clientError: function (exception, socket) { }
```
