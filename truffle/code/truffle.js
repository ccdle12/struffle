module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*",
      gas: 4712388,
    },
    ganache: {
      host: "ganache",
      port: 8545,
      network_id: "*",
      gas: 4712388,
    },
  }
};
