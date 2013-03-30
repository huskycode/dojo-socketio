# Customer: We need simple server which say "Hello World!" to our client whose visit,
# at 22:50 I will send another requirement.
# https://github.com/huskycode/dojo-socketio/blob/master/README.md

require('should')
io = require('socket.io-client')
require('../main/main')

http = require('http')

describe 'server', ->
    this.timeout(2000)
    it 'should response to request', (done) ->
    # get url , call callback, check value
        http.get('http://localhost:23456', 
            (response) ->
                response.setEncoding('utf8')
                response.statusCode.should.equal(200)
                response.on('data', 
                    (data) ->
                        data.should.equal('Hello Wolrd!')
                    )
                done()
        )
        
    it 'should connect to server with sokcet.io', (done) ->
        socket = io.connect('http://localhost:23456')
        socket.on('hello', 
            (data, printABC) ->
                console.log(printABC)
                printABC('abc')
                data.should.equal('Connect')
                done()
        )
        