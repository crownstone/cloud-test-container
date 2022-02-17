SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

IP_ADDRESS=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'`

${SCRIPT_DIR}/reset_mongo_db.sh

(trap 'kill 0' SIGINT; exec ${SCRIPT_DIR}/scripts/run_cloud.sh & exec ${SCRIPT_DIR}/scripts/run_cloud_v2.sh & exec ${SCRIPT_DIR}/scripts/run_mock_server.sh)

