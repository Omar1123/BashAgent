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

    console.log('   ')
    console.log('                (///(###(///(             '.red)
    console.log('               (*           *(            '.red)
    console.log('               /             /            '.red)
    console.log('              (/             /(           '.red)
    console.log('          /////////(#(/%//(////#&       '.red)
    console.log('          /(  ////(#######(////  (/       '.red)
    console.log('           */(##&&         &#(/*        '.red)
    console.log('            ((/   ,******,    /((         '.red)
    console.log('            ((                 ((         '.red)
    console.log('             (/#             #/(          '.red)
    console.log('               /%           %/            '.red)
    console.log('            (//#         #//(#&         '.red)
    console.log('        &(//,/# /*/#     #/*/ #/,//(&     '.red)
    console.log('     %//,    // ((  *///*  (( //    ,//%  '.red)
    console.log('    #/      (//  /(       (/  //(      /# '.red)
    console.log('   %/(      /(   */       /*   (/      ,/%'.red)
    console.log('   */        //%  /(     (/  #/*        /*'.red)
    console.log('   */ /( /( ## (#  /(   (/ %(* ## (/ (/ /*'.red)
    console.log('   ,/#&&&&&&&&&&(/#(/(&(/((/#&&&&&&&&&/,'.red)
    console.log('   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'.white)
    console.log('   Server Monitoring Module'.yellow + ' ON'.green)
    console.log('   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'.white)
    console.log('   ')
    console.log('   -> '.green + 'Health Check: '.white + 'http://'.cyan +  internalIp.v4.sync().cyan  + ':'.cyan +  colors.cyan(port) + '/server/health/check'.cyan)
    console.log('   -> '.green + 'Web Shell : '.white + 'http://'.cyan +  internalIp.v4.sync().cyan  + ':'.cyan + colors.cyan(port) + '/server/health/command'.cyan)
    console.log('   ')
    console.log('   [' + '+'.green + '] Waiting for remote instructions')
    console.log('   ')
});
