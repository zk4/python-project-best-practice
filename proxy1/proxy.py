#coding: utf-8
from .logx import setup_logging
import logging
setup_logging()
logger = logging.getLogger(__name__)



def main():
    # print("main is called")
    pass

def entry_point():
    logger.info("foo")
    logger.debug('foo')
    logger.info('foo')
    logger.warning('foo')
    logger.error('foo')
    logger.critical('foo')


