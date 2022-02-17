SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

JS_STRING="
db = db.getSiblingDB('data_v1');
db.App.insert({\"name\": \"Crownstone.consumer\",\"pushSettings\": {\"apns\": {\"keyToken\": \"tokensEtc.\",\"keyId\":\"tokensEtc.\",\"teamId\":\"tokensEtc.\"},\"gcm\": {\"serverApiKey\": \"gcmKEY\"}}})
"

# create tmp js file to instruct mongo
TMP_FILE_PATH="${SCRIPT_DIR}/tmp_mongo_inserts.js"
rm -f ${TMP_FILE_PATH}
echo ${JS_STRING} >> ${TMP_FILE_PATH}

mongo localhost:27017 ${TMP_FILE_PATH}
rm ${TMP_FILE_PATH}
