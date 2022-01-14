SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo ""
echo "Checking out and configuring Cloud V1 (which runs on https://my.crownstone.rocks)..."
${SCRIPT_DIR}/scripts/prepare_cloud.sh
echo "Done!"

echo "Checking out and configuring Cloud V2 (which runs on https://next.crownstone.rocks)..."
${SCRIPT_DIR}/scripts/prepare_cloud_v2.sh
echo "Done"

echo "Run ./run_clouds.sh to launch the clouds locally."

