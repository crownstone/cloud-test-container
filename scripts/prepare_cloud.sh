source ~/.zshrc

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ${SCRIPT_DIR}/../checkout

CLOUD_DIR=${SCRIPT_DIR}/../checkout/crownstone-cloud/

rm -rf ${CLOUD_DIR}
git clone https://github.com/crownstone/crownstone-cloud.git ${CLOUD_DIR}
cd ${CLOUD_DIR}

cp ${SCRIPT_DIR}/../config/config.local.json        ${CLOUD_DIR}/server/config.local.json
cp ${SCRIPT_DIR}/../config/datasources.local.js     ${CLOUD_DIR}/server/datasources.local.js
cp ${SCRIPT_DIR}/../config/middleware.local.js      ${CLOUD_DIR}/server/middleware.local.js
cp ${SCRIPT_DIR}/../config/model-config.local.json  ${CLOUD_DIR}/server/model-config.local.json

nvm use 12.22.7
yarn

