const routes = require('express').Router()
const health = require('../core/server/healthCheck.js')
const command = require('../core/server/realtime.js')

routes.post('/server/health/check', health);
routes.post('/server/health/command', command);

module.exports = routes;
