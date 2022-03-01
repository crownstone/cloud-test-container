SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo ""
echo "Resetting bridge mocks..."
echo ""
${SCRIPT_DIR}/scripts/reset_mocks.sh
echo ""
echo "Done!"
echo ""

echo ""
echo "Resetting mongo database..."
echo ""
${SCRIPT_DIR}/scripts/reset_mongo_db.sh
echo ""
echo "Done!"
echo ""

echo ""
echo "Inserting expected initial values into mongo.."
echo ""
${SCRIPT_DIR}/scripts/insert_mongo_initial_values.sh
echo ""
echo "Done!"
echo ""