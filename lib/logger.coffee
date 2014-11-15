debug   = require('debug')

levels  =
    notice: 
        tag: 'notice'
        console: 'info'
    warning: 
        tag: 'warn'
        console: 'warn'
    error: 
        tag: 'error'
        console: 'error'
    debug: 
        tag: 'debug'
        console: 'log'

module.exports  = (name) ->
    name        = name || process.env.APP_NAME
    logger      = debug("#{name}:info")
    log.log     = console.log.bind(console)
    
    for level of levels
        sub_logger      = debug("#{name}:#{level.tag}")
        sub_logger.log  = console[level.console].bind(console)
        
        log[level.tag]  = sub_logger
        
    return logger