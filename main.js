var colors = require('colors')
const express = require('express')
const bodyParser = require('body-parser')
const internalIp = require('internal-ip')
let app = express()

const port = 3050;
const routes = require('./routes/routes');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: false
}));

app.use(function (req, res, next) {
  //Enabling CORS
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods", "POST");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, contentType,Content-Type, Accept, Authorization")

  next()
})

app.use('/', routes)

let server = app.listen(process.env.PORT || 3050, function () {
  let port = server.address().port;

    console.log('')
    console.log('')
    console.log('')
    console.log('RRRRRRRRRRRRRRRRR           CCCCCCCCCCCCC   SSSSSSSSSSSSSSS      '.green + '             (///(###(///(             '.red)
    console.log('R::::::::::::::::R       CCC::::::::::::C SS:::::::::::::::S     '.green + '            (*           *(            '.red)
    console.log('R::::::RRRRRR:::::R    CC:::::::::::::::CS:::::SSSSSS::::::S     '.green + '            /             /            '.red)
    console.log('RR:::::R     R:::::R  C:::::CCCCCCCC::::CS:::::S     SSSSSSS     '.green + '           (/             /(           '.red)
    console.log('  R::::R     R:::::R C:::::C       CCCCCCS:::::S                 '.green + '       /////////(#(/%//(////#&       '.red)
    console.log('  R::::R     R:::::RC:::::C              S:::::S                 '.green + '       /(  ////(#######(////  (/       '.red)
    console.log('  R::::RRRRRR:::::R C:::::C               S::::SSSS              '.green + '        */(##&&         &#(/*        '.red)
    console.log('  R:::::::::::::RR  C:::::C                SS::::::SSSSS         '.green + '         ((/   ,******,    /((         '.red)
    console.log('  R::::RRRRRR:::::R C:::::C                  SSS::::::::SS       '.green + '         ((                 ((         '.red)
    console.log('  R::::R     R:::::RC:::::C                     SSSSSS::::S      '.green + '          (/#             #/(          '.red)
    console.log('  R::::R     R:::::RC:::::C                          S:::::S     '.green + '            /%           %/            '.red)
    console.log('  R::::R     R:::::R C:::::C       CCCCCC            S:::::S     '.green + '         (//#         #//(#&         '.red)
    console.log('RR:::::R     R:::::R  C:::::CCCCCCCC::::CSSSSSSS     S:::::S     '.green + '     &(//,/# /*/#     #/*/ #/,//(&     '.red)
    console.log('R::::::R     R:::::R   CC:::::::::::::::CS::::::SSSSSS:::::S     '.green + '  %//,    // ((  *///*  (( //    ,//%  '.red)
    console.log('R::::::R     R:::::R     CCC::::::::::::CS:::::::::::::::SS      '.green + ' #/      (//  /(       (/  //(      /# '.red)
    console.log('RRRRRRRR     RRRRRRR        CCCCCCCCCCCCC SSSSSSSSSSSSSSS        '.green + '%/(      /(   */       /*   (/      ,/%'.red)
    console.log('RRRRRRRR     RRRRRRR        CCCCCCCCCCCCC SSSSSSSSSSSSSSS        '.green + '*/        //%  /(     (/  #/*        /*'.red)
    console.log('                                                                 '.green + '*/ /( /( ## (#  /(   (/ %(* ## (/ (/ /*'.red)
    console.log('                                                                 '.green + ',/#&&&&&&&&&&(/#(/(&(/((/#&&&&&&&&&/,'.red)
    console.log('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'.white)
    console.log('Agent Module'.yellow + ' ON'.green)
    console.log('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'.white)
    console.log('')
    console.log('[ DOMAINS ANALIZED ]'.white)
    console.log('')
    console.log(internalIp.v4.sync())
});
