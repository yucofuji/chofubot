# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 30 18 * * *', () =>
      envelope = room: "#general"
      robot.send envelope, "god job!"
  )
  cronTest.start()
