"""

Author : Siddharth Sethia
Date : 26/10/2021
Description : This utility will return a logger which will give indepth info of errors in the code.
Modification History : NA

"""


import sys,os
import logging_session
import linecache

logger = logging_session.getloggingSession()

def get_errorlog():
    exc_type,exc_obj,tb = sys.exc_info()
    f = tb.tb_frame
    lineno = tb.tb_lineno
    filename = f.f_code.co_filename
    linecache.checkcache(filename)
    line = linecache.getline(filename,lineno,f.f_globals)
    logger.error('EXCEPTION IN ({} , LINE {} "{}"): {}'.format(filename,lineno,line.strip(),exc_obj))