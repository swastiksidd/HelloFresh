"""

code Name: driver.py
created by : Siddharth Sethia
date : 26/10/2021
Purpose : This code doesnt contain any business logic. It is just the entry point of the application
Modification History : NA

"""

# Library Imports

from datetime import datetime
# from pyspark.sql import SparkSession
# import pyspark.sql.functions as F
# import argparse
import bins.config.config as config
from bins.config.spark_config import calcAvg
import bins.utils.logging_session as logging_session
import bins.utils.error_log as error_log
from bins.utils.create_spark_inst import spark_create
from bins.src.core import recipe
# Library Imports


# Function Definition

def main():
  recipe(src_path,tgt_path,execution_date).preprocess_json(spark)
  recipe(src_path,tgt_path,execution_date).calc_avg_time(spark)

# Function Definition

# Python main

if __name__ == "__main__":
  
  logger = logging_session.getloggingSession()
  logger.info("creating spark instance")
  
  # creating spark instance
  
  
  # bucket = calcAvg.get('bucketname')
  # sourcepath = calcAvg.get('sourcepath')
  # targetpath = calcAvg.get('targetpath')
  app_name = calcAvg.get('appname')  
  spark_config = calcAvg.get('spark-config')
  spark = spark_create(spark_config,app_name)
  
  # spark = SparkSession.builder.appName('HelloFresh').getOrCreate()
  

  try:
    # parser.add_argument("--execution_date", help="date of execution" ,default='2021/10/31') # Added in config, For parameter we can use argparse or argv.
    # parser = argparse.ArgumentParser()
    src_path = config.source_path
    tgt_path = config.target_path
    execution_date = config.exec_date
    logger.info("Calling core functions.")
    main()
    logger.info("Job completed.")
  except Exception as e:
    logger.info("job failed due to Exception.")
    error_log.get_errorlog()