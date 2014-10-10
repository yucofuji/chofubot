# Description:
#   No overtime by node-cron.

cron = require('cron').CronJob
random = require('hubot').Response::random

module.exports = (robot) ->

  new cron '0 0 30 21 * 1-5', () ->
    say = random [
      'http://serif.hatelabo.jp/images/cache/7cabedfe81e8e328aa930388fad4dbe95fe36aa9/c5673d089fdbb895ce57518bd7502a298a6f42aa.gif'
      'http://twitpic.com/show/large/chx2rk'
    ]
    user = {room: '#bottest'}
    robot.send user, say , true, true
