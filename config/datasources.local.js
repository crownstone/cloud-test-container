module.exports = {
  sendgridDs: {
    name: "sendgridDs",
    connector: "memory"
  },
  filesDs: { // LOCAL
    "connector": "loopback-component-storage-gridfs",
    "name": "files_v1",
    "url": "mongodb://127.0.0.1:27017/files_v1",
  },
  userDs: { // LOCAL
    "connector": "loopback-connector-mongodb",
    "name": "users_v1",
    "url": "mongodb://127.0.0.1:27017/users_v1",
  },
  mongoDs: { // LOCAL
    "connector": "loopback-connector-mongodb",
    "name": "data_v1",
    "url": "mongodb://127.0.0.1:27017/data_v1",
  },

};
