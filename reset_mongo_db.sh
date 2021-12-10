SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

JS_STRING="
db_files = connect(\"files_v1\");
db_users = connect(\"users_v1\");
db_data  = connect(\"data_v1\");

db_files.dropDatabase();
db_users.dropDatabase();
db_data.dropDatabase();
"

# create tmp js file to instruct mongo
TMP_FILE_PATH=${SCRIPT_DIR}/tmp_mongo_instructions.js
rm ${TMP_FILE_PATH}
echo ${JS_STRING} >> ${TMP_FILE_PATH}

mongo localhost:27017 ${TMP_FILE_PATH}
rm ${TMP_FILE_PATH}
