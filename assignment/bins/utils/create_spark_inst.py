"""
Created by : Siddharth Sethia
Date : 26/10/2021
Description : This module is used to create spark instance. Use spark_config to include spark configuration.

"""

from pyspark.conf import SparkConf
from pyspark.sql import SparkSession

def spark_create( spark_conf , app_name):
    conf = SparkConf()
    for k,v in spark_conf.items():
        conf.set(k,v)
    spark = SparkSession \
    .builder \
    .appName(app_name) \
    .config(conf=conf) \
    .getOrCreate()
    return spark
