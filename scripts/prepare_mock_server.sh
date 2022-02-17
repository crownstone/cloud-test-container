source ~/.zshrc

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ${SCRIPT_DIR}/../checkout

MOCK_DIR=${SCRIPT_DIR}/../checkout/mock_server/

rm -rf ${MOCK_DIR}
git clone git@github.com:crownstone/app-bridge-mock-server.git ${MOCK_DIR}
cd ${MOCK_DIR}

yarn
npm run build