SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

(trap 'kill 0' SIGINT; exec ${SCRIPT_DIR}/scripts/run_cloud.sh & exec ${SCRIPT_DIR}/scripts/run_cloud_v2.sh & exec ${SCRIPT_DIR}/scripts/run_mock_server.sh)