# Crownstone Cloud Test Environment

This repo houses a few scripts that will start both Crownstone Clouds on your local machine.

## Requirements

Currently, this repo expects a certain configuration on your pc.

- it expects you have mongoDB installed on your computer, and that the mongo shell command will start the mongo shell.

- it expects that NVM (Node version manager) is installed.

- it sources ~/.zshrc in order to let the script know where to find NVM.

- it expects you to have ssh access to Github and have access to cloud-v2

## Running

Checkout and configure the clouds;

```angular2html
./prepare_clouds.sh
```

Run the clouds locally (also clears the local mongo db before starting):

```angular2html
./run_clouds.sh
```

Clear the local mongo db in between test runs:

```angular2html
./reset_mongo_db.sh
```