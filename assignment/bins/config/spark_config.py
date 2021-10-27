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
            "spark.dynamicAllocation.enabled": "true",
            "spark.dynamicAllocation.initialExecutors": "3",
            "spark.dynamicAllocation.maxExecutors": "12"
        }
}