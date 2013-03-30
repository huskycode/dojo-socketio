http = require('http')

requestHandler = (request, response) ->
    response.writeHead(200);
    response.write('Hello Wolrd!');
    response.end();
    
server = http.createServer(requestHandler)
io = require('socket.io').listen(server)
io.sockets.on('connection', 
    (socket) ->
        socket.emit('hello', 'Connect', 
            (data)->
                console.log('callbackcall with ' + data)
        )
)

server.listen(23456);