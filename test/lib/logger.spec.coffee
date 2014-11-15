logger  = require __dirname + '/../../lib/logger'

describe "Logger", ->
    my_logger = null
    
    beforeEach ->
        my_logger   = logger 'test-logger'
    
    describe "::log()", ->
        
        it "should be a function", ->
            my_logger.log.should.be.a 'function'

    describe "::notice()", ->
        it "should be a function", ->
            my_logger.notice.should.be.a 'function'
            
    describe "::warn()", ->
        it "should be a function", ->
            my_logger.warn.should.be.a 'function'
            
    describe "::error()", ->
        it "should be a function", ->
            my_logger.error.should.be.a 'function'
            
    describe "::debug()", ->
        it "should be a function", ->
            my_logger.debug.should.be.a 'function'