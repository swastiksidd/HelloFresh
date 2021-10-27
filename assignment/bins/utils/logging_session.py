"""

Author : Siddharth Sethia
Date : 26/10/2021
Description : This utility will return a logger which we can use to maintain the logs across application.
Modification History : NA

"""

import logging
import os
import datetime as dt
import bins.config.properties as properties


def getloggingSession():
    pid = os.getpid()    
    log_dir = properties.path
    log_level = properties.loglevel
    project = properties.project
    
    logger = logging.getLogger()
    logger.setLevel(log_level)
    
    timestamp = dt.datetime.now().strftime("%Y-%m-%d")
    log_file = project + '_' + timestamp + '_' + str(pid) + '.log'
    
    if not os.path.exists(log_dir):
        os.makedirs(log_dir)
        
    
    log_path = os.path.join(log_dir,log_file)
    
    file_handler = logging.FileHandler(log_path, mode='a')
    file_handler.setLevel(log_level)
    
    console_handler = logging.StreamHandler()
    console_handler.setLevel(log_level)
    
    formatter = logging.Formatter('%(asctime)s %(levelname)s: %(message)s',"%Y%m%d%H%M%S")
    
    file_handler.setFormatter(formatter)
    console_handler.setFormatter(formatter)
    
    logger.addHandler(file_handler)
    logger.addHandler(console_handler)
    
    return logger
