'''
created by : Siddharth Sethia
Date : 26/10/2021
Description : This config contains source, destination paths and variable value. Change the config in order to control the behaviour of the code.
	      I have placed the comments for s3 locations and you can also enter manual date to run the process for it.
'''

from datetime import date

source_path = "hdfs://localhost:9000/public/input/*.json"
# source_path = "s3://{bucket}/{filepath}"
target_path = "hdfs://localhost:9000/public/output/"
# target_path = "s3://{bucket}/{filepath}"
exec_date = date.today()
# exec_date = "2021-01-31"
