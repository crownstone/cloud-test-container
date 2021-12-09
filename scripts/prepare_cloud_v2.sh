source ~/.zshrc

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ${SCRIPT_DIR}/../checkout

CLOUD_DIR=${SCRIPT_DIR}/../checkout/cloud_v2/

rm -rf ${CLOUD_DIR}
git clone git@github.com:crownstone/cloud-v2.git ${CLOUD_DIR}
cd ${CLOUD_DIR}

yarn
npm run build