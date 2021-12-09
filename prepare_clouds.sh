SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "\n\nChecking out and configuring Cloud V1 (which runs on https://my.crownstone.rocks)... \n"
${SCRIPT_DIR}/scripts/prepare_cloud.sh
echo "\nDone!\n"

echo "Checking out and configuring Cloud V2 (which runs on https://next.crownstone.rocks)... \n"
${SCRIPT_DIR}/scripts/prepare_cloud_v2.sh
echo "\nDone\n"

echo "Run ./run_clouds.sh to launch the clouds locally."