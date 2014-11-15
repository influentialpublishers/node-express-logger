debug   = require('debug')

levels  =
    info:
        tag: 'info'
        console: 'log'
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
    logger.log  = console.log.bind(console)
    
    for level, settings of levels
        sub_logger      = debug("#{name}:#{settings.tag}")
        sub_logger.log  = console[settings.console].bind(console)
        
        logger[settings.tag]  = sub_logger
        
    return logger