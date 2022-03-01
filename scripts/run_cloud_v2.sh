source ~/.zshrc
source ~/.bashrc

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd ${SCRIPT_DIR}/../checkout/cloud_v2

npm start

