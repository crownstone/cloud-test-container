SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mongo localhost:27017 ${SCRIPT_DIR}/scripts/mongo.js
