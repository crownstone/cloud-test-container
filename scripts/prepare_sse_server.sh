source ~/.zshrc
source ~/.bashrc
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ${SCRIPT_DIR}/../checkout

CLOUD_DIR=${SCRIPT_DIR}/../checkout/sse/

rm -rf ${CLOUD_DIR}
git clone git@github.com:crownstone/crownstone-sse-server.git ${CLOUD_DIR}
cd ${CLOUD_DIR}

cp ${SCRIPT_DIR}/../config/startSSE.sh        ${CLOUD_DIR}/start.sh

nvm install 16.14.2
nvm use 16.14.2
yarn
npm run build

