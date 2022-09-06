SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo ""
echo ""
echo "Checking out and configuring Cloud V1 (which runs on https://my.crownstone.rocks)... "
echo ""
${SCRIPT_DIR}/scripts/prepare_cloud.sh
echo ""
echo "Done!"
echo ""

echo "Checking out and configuring Cloud V2 (which runs on https://next.crownstone.rocks)... "
echo ""
${SCRIPT_DIR}/scripts/prepare_cloud_v2.sh
echo ""
echo "Done!"
echo ""


echo "Checking out and configuring the SSE server (which runs on https://events.crownstone.rocks)... "
echo ""
${SCRIPT_DIR}/scripts/prepare_sse_server.sh
echo ""
echo "Done!"
echo ""


echo "Checking out and configuring the app bridge mock server... "
echo ""
${SCRIPT_DIR}/scripts/prepare_mock_server.sh
echo ""
echo "Done!"
echo ""


echo "Run ./run.sh to launch the clouds locally."

