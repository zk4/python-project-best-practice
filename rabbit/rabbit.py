#coding: utf-8
from .logx import setup_logging
import logging
setup_logging()
logger = logging.getLogger(__name__)

import sys

def feed(count):
    return count * 2


def main():
    # print("main is called")
    pass

def entry_point():
    # logger.info("rabbit ..")
    # logger.debug('rabbit ..')
    # logger.info('rabbit ..')
    # logger.warning('rabbit ..')
    # logger.error('rabbit ..')
    # logger.critical('rabbit ..')
    num = int(sys.argv[1])
    carrots = feed(num)
    print(carrots)


