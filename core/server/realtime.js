const util = require('util');
const exec = util.promisify(require('child_process').exec);

let health = [
];

async function getCommand(command) {

  const { stdout, stderr } = await exec(command);

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

module.exports = async(req, res) => {

  let commandLine = await getCommand(req.body.command)

  health.push({
    "result" : commandLine
  });

  console.log('       [' + '*'.cyan + '] Instruction received')
  res.status(200).json(health)
  health = [];
}
