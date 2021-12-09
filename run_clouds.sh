SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

${SCRIPT_DIR}/reset_mongo_db.sh

(trap 'kill 0' SIGINT; exec ${SCRIPT_DIR}/scripts/run_cloud.sh & exec ${SCRIPT_DIR}/scripts/run_cloud_v2.sh)
