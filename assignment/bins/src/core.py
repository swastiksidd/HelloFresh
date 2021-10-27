"""

code Name: core.py
created by : Siddharth Sethia
date : 26/10/2021
Purpose : This code contain business logic for both the task.
Modification History : NA

"""

import pyspark.sql.functions as F
import bins.utils.logging_session as logging_session
import bins.utils.error_log as error_log
from datetime import date

class recipe:
    def __init__(self,src_path,tgt_path,execution_date):
        self.src_path = src_path
        self.tgt_path = tgt_path
        self.exec_date = execution_date
    
    def preprocess_json(self,spark):
        
        logger = logging_session.getloggingSession()
        logger.info("Preprocession Source Data")
        
        try:
            source_path = self.src_path
            target_path = self.tgt_path
            execution_date = self.exec_date
            
            # Reading Json Source
            
            df1 = spark.read.format("json").load(source_path).select("name","ingredients","cookTime","prepTime")
            logger.info("Source Data Read complete.")
            # cooktime and preptime is in PT format and in string we need to convert it to number based on hour, minute and second.

            df2 = df1.withColumn('cookTimeCov', 
                                 F.coalesce(F.regexp_extract('cookTime', r'(\d+)H', 1).cast('int'), F.lit(0)) * 3600 + 
                                 F.coalesce(F.regexp_extract('cookTime', r'(\d+)M', 1).cast('int'), F.lit(0)) * 60 + 
                                 F.coalesce(F.regexp_extract('cookTime', r'(\d+)S', 1).cast('int'), F.lit(0))) \
                     .withColumn('prepTimeCov', 
                                 F.coalesce(F.regexp_extract('prepTime', r'(\d+)H', 1).cast('int'), F.lit(0)) * 3600 + 
                                 F.coalesce(F.regexp_extract('prepTime', r'(\d+)M', 1).cast('int'), F.lit(0)) * 60 + 
                                 F.coalesce(F.regexp_extract('prepTime', r'(\d+)S', 1).cast('int'), F.lit(0)))

            
            # Calculating totalTime to identify the difficulty level.

            parsed_df = df2.withColumn('total_cooking_time',df2.cookTimeCov + df2.prepTimeCov) \
                           .withColumn('date_of_execution',F.lit(execution_date))
            
            # Writing the data in parquet format.
            
            parsed_df.write.partitionBy("date_of_execution").mode("overwrite").parquet(target_path)
            logger.info("Data preprocessed and stored in Parquet format.")
        
        except Exception as e:
            logger.info("Issue in preprocessing of data.")
            error_log.get_errorlog()

    def calc_avg_time(self,spark):
    
        logger = logging_session.getloggingSession()
        logger.info("Average time duration calculation started.")
        
        try:
            source_path = self.src_path
            target_path = self.tgt_path
            execution_date = self.exec_date
            
            df1 = spark.read.format("parquet").load(target_path+"/date_of_execution={}".format(execution_date))
            
            # Selecting records which contains beef as ingredients.

            df2 = df1.filter(F.lower(df1.ingredients).contains('beef'))
            
            # assigning the difficulty Level.

            df3 = df2.withColumn('difficulty',F.when(df2.total_cooking_time > 3600, "hard")
                                               .when(df2.total_cooking_time < 1800, "easy")
                                               .when((df2.total_cooking_time >= 1800) & (df2.total_cooking_time <= 3600), "medium")
                                               .otherwise(df2.total_cooking_time)).select("difficulty","total_cooking_time")

            # df3 contains difficulty level and total cooking time. Now we will calculate the average cooking time per difficulty level.

            df4 = df3.groupBy("difficulty").agg(F.avg("total_cooking_time").alias("avg_cook_Time_in_secs"))
            
            # COnverting the time from seconds to minute.
            
            avg_df = df4.withColumn('avg_total_cooking_time',F.round(df4.avg_cook_Time_in_secs/60)).select("difficulty","avg_total_cooking_time")            
            avg_df.coalesce(1).write.mode('overwrite').option('header','true').csv(target_path + "/report.csv")
            
            logger.info("Avg Time duration calculated successfully.")
            
        except Exception as e:        
            logger.info("Issue in average time duration calculation.")
            error_log.get_errorlog()
