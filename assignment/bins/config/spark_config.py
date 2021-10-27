"""
created by : Siddharth Sethia
Date : 26/10/2021
Description : Place all spark job related configuration in this file. Change it based on data volume.

"""

calcAvg = {
    "appname": "Hellofresh_assignment_task1",
    # "bucketname":"datalake",
    # "sourcepath":"temp",
    # "targetpath":"output",
    "spark-config" :
        {
            "spark.driver.memory" : "2g",
            "spark.executor.memory" : "1g",
            "spark.executor.cores" : "3",
            "spark.executor.instances" : "5",
            "spark.executor.memoryOverhead": "3g",
            "spark.driver.memoryOverhead": "3g",
            "spark.dynamicAllocation.enabled": "false",
            "spark.dynamicAllocation.initialExecutors": "3",
            "spark.dynamicAllocation.maxExecutors": "12"
        }
}
