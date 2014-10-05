# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 20 18 * * 1', () =>
      envelope = room: "#general"
      robot.send envelope, "‚‚‚ƒƒƒƒ‚“‚‚‚‚"
  )
  cronTest.start()
