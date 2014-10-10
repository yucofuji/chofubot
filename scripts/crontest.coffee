#Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 20 21 * * 1', () =>
    envelope = room: "#bottest"
    robot.send envelope, msg.random ['aaa', 'bbb', 'ccc']
  )
  cronTest.start()
