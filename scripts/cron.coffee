# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#
cron = require('cron').CronJob

module.exports = (robot) ->

 sayArr = [
     'http://cdn-ak.f.st-hatena.com/images/fotolife/p/perosatoimo/20140426/20140426210534.jpg'
     'http://cdn.mkimg.carview.co.jp/minkara/userstorage/000/013/462/720/5541fe566e.jpg'
     'http://ure.pia.co.jp/mwimgs/0/d/600/img_0df373b8c99139e02934a6099eaf4d3155145.jpg'
     'http://thumbnail.image.rakuten.co.jp/@0_mall/t-time/cabinet/new_rms2/teijitaishakyoko_tm.jpg?_ex=200x200&s=2&r=1'
     'http://cdn-ak.f.st-hatena.com/images/fotolife/p/perosatoimo/20140427/20140427201255.png'
  ]
  new cron '0 0 * * * *', () =>
      say = random sayArr
      robot.send {room: "#general"}, say
      , null, true, "Asia/Tokyo"
