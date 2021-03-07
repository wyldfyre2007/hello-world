class Sample extends Adapter

  constructor: ->
    super
    @robot.logger.info "Constructor"

  send: (envelope, strings...) ->
    @robot.logger.info "Send"

  reply: (envelope, strings...) ->
    @robot.logger.info "Reply"

  run: ->
    @robot.logger.info "Run"
    @emit "connected"
    user = new User 1001, name: 'heather'
    message = new TextMessage user, 'I am your new study buddy', 'MSG-001'
    @robot.receive message


exports.use = (robot) ->
  new Sample robot
 "dependencies": {
  },
  "peerDependencies": {
    "olliet": ">=2.0"
  },
  "devDependencies": {
    "coffee-script": ">=1.2.0"
  }
