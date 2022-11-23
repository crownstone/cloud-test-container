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

## Accessing the clouds

You can find them here:
- CloudV1 (https://cloud.crownstone.rocks)
  - http://127.0.0.1:3000
- CloudV2 (https://next.crownstone.rocks)
    - http://127.0.0.1:3050
    
    
# License

## Open-source license

This firmware is provided under a noncontagious open-source license towards the open-source community. It's available under three open-source licenses:
 
* License: LGPL v3+, Apache, MIT

<p align="center">
  <a href="http://www.gnu.org/licenses/lgpl-3.0">
    <img src="https://img.shields.io/badge/License-LGPL%20v3-blue.svg" alt="License: LGPL v3" />
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" />
  </a>
  <a href="https://opensource.org/licenses/Apache-2.0">
    <img src="https://img.shields.io/badge/License-Apache%202.0-blue.svg" alt="License: Apache 2.0" />
  </a>
</p>

## Commercial license

This firmware can also be provided under a commercial license. If you are not an open-source developer or are not planning to release adaptations to the code under one or multiple of the mentioned licenses, contact us to obtain a commercial license.

* License: Crownstone commercial license

# Contact

For any question contact us at <https://crownstone.rocks/contact/> or on our discord server through <https://crownstone.rocks/forum/>. 
