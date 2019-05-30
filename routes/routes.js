const routes = require('express').Router()
const health = require('../core/server/healthCheck.js')

routes.post('/server/health/check', health);

module.exports = routes;
