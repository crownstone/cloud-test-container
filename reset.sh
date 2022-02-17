SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "\nResetting bridge mocks...\n"
${SCRIPT_DIR}/scripts/reset_mocks.sh
echo "\nDone!\n"

echo "\nResetting mongo database...\n"
${SCRIPT_DIR}/scripts/reset_mongo_db.sh
echo "\nDone!\n"

echo "\nInserting expected initial values into mongo..\n"
${SCRIPT_DIR}/scripts/insert_mongo_initial_values.sh
echo "\nDone!\n"
