const util = require('util');
const exec = util.promisify(require('child_process').exec);
var colors = require('colors')

let health = [
];

async function getHostname() {

  const { stdout, stderr } = await exec('hostname -f &> /dev/null && printf "$(hostname -f)" || printf "$(hostname -s)"');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getPrivateIP() {

  const { stdout, stderr } = await exec('commands/ip.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getPublicIP() {

  const { stdout, stderr } = await exec('echo $(curl -s ipecho.net/plain;echo)');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getOperativeSystem() {

  const { stdout, stderr } = await exec('commands/version.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getKernel() {

  const { stdout, stderr } = await exec('uname -r');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getArchitecture() {

  const { stdout, stderr } = await exec('printf ""$(arch | grep x86_64 &> /dev/null) && printf " 64 Bit OS\n" || printf " 32 Bit OS\n"');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getSwap() {

  const { stdout, stderr } = await exec('commands/swap.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getLoadAverage() {

  const { stdout, stderr } = await exec('commands/average.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getReboot() {

  const { stdout, stderr } = await exec('last -x 2> /dev/null|grep reboot 1> /dev/null && /usr/bin/last -x 2> /dev/null|grep reboot|head -3 || echo -e "No reboot events are recorded."');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getShutdown() {

  const { stdout, stderr } = await exec('last -x 2> /dev/null|grep shutdown 1> /dev/null && /usr/bin/last -x 2> /dev/null|grep shutdown|head -3 || \ echo -e "No shutdown events are recorded."');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getMemoryConsuming() {

  const { stdout, stderr } = await exec('commands/memory.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getCPUResource() {

  const { stdout, stderr } = await exec('commands/cpu.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getLastAccess() {

  const { stdout, stderr } = await exec('last | head -4');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}


async function getProcessRunning() {

  const { stdout, stderr } = await exec('ps --no-headers');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getDiskStatus() {

  const { stdout, stderr } = await exec('df -k | sed 1d');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getDfFree() {

  const { stdout, stderr } = await exec('commands/dfFree.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getDfBussy() {

  const { stdout, stderr } = await exec('commands/dfBussy.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getMemBusy() {

  const { stdout, stderr } = await exec('commands/memBusy.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

async function getMemFree() {

  const { stdout, stderr } = await exec('commands/memFree.sh');

  if(stderr) {
    return await ' '
  } else {
    return await stdout
  }
}

module.exports = async(req, res) => {

  let hostname = await getHostname()
  let ip = await getPrivateIP()
  let publicIP = await getPublicIP()
  let operativeSystem = await getOperativeSystem()
  let kernel = await getKernel()
  let architecture = await getArchitecture()
  let swap = await getSwap()
  let average = await getLoadAverage()
  let reboot = await getReboot()
  let shutdown = await getShutdown()
  let memory = await getMemoryConsuming()
  let cpu = await getCPUResource()
  let lastAccess = await getLastAccess()
  let processRunning = await getProcessRunning()
  let diskStatus = await getDiskStatus()

  let freeD = await getDfFree()
  let bussyD = await getDfBussy()

  let bussyM = await getMemBusy()
  let freeM = await getMemFree()

  health.push({
    "hostname" : hostname,
    "ip" : ip,
    "freeDisk" : freeD,
    "usedDisk" : bussyD,
    "freeMem" : freeM,
    "usedMem" : bussyM,
    "publicIp" : publicIP,
    "system" : operativeSystem,
    "kernel" : kernel,
    "architecture" : architecture,
    "swap" : swap,
    "average" : average,
    "reboot" : reboot,
    "shutdown" : shutdown,
    "memory" : memory,
    "cpu" : cpu,
    "lastAccess" : lastAccess,
    "process" : processRunning,
    "diskStatus" : diskStatus
  });

  console.log('       [' + '*'.cyan + '] Instruction received')
  res.status(200).json(health)
  health = [];
}
