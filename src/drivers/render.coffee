events      = require 'events'

class RenderOnlyDriver extends events.EventEmitter
  constructor: (@query, @config) ->
  
  execute: () =>
    this.emit 'data', @query
    this.emit 'endquery'

    
module.exports.DriverClass = RenderOnlyDriver
