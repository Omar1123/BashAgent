const util = require('util');
const exec = util.promisify(require('child_process').exec);

let health = [   
];

async function getHostname() {

  const { stdout, stderr } = await exec('hostname -f &> /dev/null && printf "$(hostname -f)" || printf "$(hostname -s)"');

  if(stderr) {
    console.log('Hostname:', stderr)
    return await ' '
  } else {
    console.log('Hostname:', stdout)

    return await stdout
  }
}

async function getPrivateIP() {

  const { stdout, stderr } = await exec('./ip.sh');

  if(stderr) {
    console.log('Hostname:', stderr)
    return await ' '
  } else {
    console.log('Hostname:', stdout)

    return await stdout
  }
}

async function getPublicIP() {

  const { stdout, stderr } = await exec('echo $(curl -s ipecho.net/plain;echo)');

  if(stderr) {
    console.log('Hostname:', stderr)
    return await ' '
  } else {
    console.log('Hostname:', stdout)

    return await stdout
  }
}

async function getOperativeSystem() {

  const { stdout, stderr } = await exec('./version.sh');

  if(stderr) {
    console.log('OperativeSystem:', stderr)
    return await ' '
  } else {
    console.log('OperativeSystem:', stdout)

    return await stdout
  }
}

async function getKernel() {

  const { stdout, stderr } = await exec('uname -r');

  if(stderr) {
    console.log('Kernel:', stderr)
    return await ' '
  } else {
    console.log('Kernel:', stdout)

    return await stdout
  }
}

async function getArchitecture() {

  const { stdout, stderr } = await exec('printf ""$(arch | grep x86_64 &> /dev/null) && printf " 64 Bit OS\n" || printf " 32 Bit OS\n"');

  if(stderr) {
    console.log('Architecture:', stderr)
    return await ' '
  } else {
    console.log('Architecture:', stdout)

    return await stdout
  }
}

async function getSwap() {

  const { stdout, stderr } = await exec('./swap.sh');

  if(stderr) {
    console.log('Swap:', stderr)
    return await ' '
  } else {
    console.log('Swap:', stdout)

    return await stdout
  }
}

async function getLoadAverage() {

  const { stdout, stderr } = await exec('./average.sh');

  if(stderr) {
    console.log('LoadAverage:', stderr)
    return await ' '
  } else {
    console.log('LoadAverage:', stdout)
    return await stdout
  }
}

async function getReboot() {

  const { stdout, stderr } = await exec('last -x 2> /dev/null|grep reboot 1> /dev/null && /usr/bin/last -x 2> /dev/null|grep reboot|head -3 || echo -e "No reboot events are recorded."');

  if(stderr) {
    console.log('Reboot:', stderr)
    return await ' '
  } else {
    console.log('Reboot:', stdout)

    return await stdout
  }
}

async function getShutdown() {

  const { stdout, stderr } = await exec('last -x 2> /dev/null|grep shutdown 1> /dev/null && /usr/bin/last -x 2> /dev/null|grep shutdown|head -3 || \ echo -e "No shutdown events are recorded."');

  if(stderr) {
    console.log('Shutdown:', stderr)
    return await ' '
  } else {
    console.log('Shutdown:', stdout)

    return await stdout
  }
}

async function getMemoryConsuming() {

  const { stdout, stderr } = await exec('./memory.sh');

  if(stderr) {
    console.log('MemoryConsuming:', stderr)
    return await ' '
  } else {
    console.log('MemoryConsuming:', stdout)

    return await stdout
  }
}

async function getCPUResource() {

  const { stdout, stderr } = await exec('./cpu.sh');

  if(stderr) {
    console.log('CPUResource:', stderr)
    return await ' '
  } else {
    console.log('CPUResource:', stdout)

    return await stdout
  }
}

async function getLastAccess() {

  const { stdout, stderr } = await exec('last | head -4');

  if(stderr) {
    console.log('LastAccess:', stderr)
    return await ' '
  } else {
    console.log('LastAccess:', stdout)

    return await stdout
  }
}


async function getProcessRunning() {

  const { stdout, stderr } = await exec('ps --no-headers');

  if(stderr) {
    console.log('Process:', stderr)
    return await ' '
  } else {
    console.log('Process:', stdout)

    return await stdout
  }
}

async function getDiskStatus() {

  const { stdout, stderr } = await exec('df -k | sed 1d');

  if(stderr) {
    console.log('Process:', stderr)
    return await ' '
  } else {
    console.log('Process:', stdout)

    return await stdout
  }
}

async function getDfFree() {

  const { stdout, stderr } = await exec('./dfFree.sh');

  if(stderr) {
    console.log('dfFree:', stderr)
    return await ' '
  } else {
    console.log('dfFree:', stdout)

    return await stdout
  }
}

async function getDfBussy() {

  const { stdout, stderr } = await exec('./dfBussy.sh');

  if(stderr) {
    console.log('dfBussy:', stderr)
    return await ' '
  } else {
    console.log('dfBussy:', stdout)

    return await stdout
  }
}

async function getMemBusy() {

  const { stdout, stderr } = await exec('./memBusy.sh');

  if(stderr) {
    console.log('memBusy:', stderr)
    return await ' '
  } else {
    console.log('memBusy:', stdout)

    return await stdout
  }
}

async function getMemFree() {

  const { stdout, stderr } = await exec('./memFree.sh');

  if(stderr) {
    console.log('memFree:', stderr)
    return await ' '
  } else {
    console.log('memFree:', stdout)

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

  res.status(200).json(health)
  health = [];
}
