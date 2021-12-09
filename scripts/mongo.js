db_files = connect("files_v1")
db_users = connect("users_v1")
db_data  = connect("data_v1")

db_files.dropDatabase()
db_users.dropDatabase()
db_data.dropDatabase()