source ~/.zshrc

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd ${SCRIPT_DIR}/../checkout/mock_server

nvm use 12.22.7
npm start