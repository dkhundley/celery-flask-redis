import time
from celery import Celery
from celery.utils.log import get_task_logger
import os

logger = get_task_logger(__name__)

app = Celery('tasks', broker='redis://redis:6379/0', backend='redis://redis:6379/0')

_app = Celery('tasks',
              backend = os.environ.get('CELERY_RESULT_BACKEND'),
              broker = os.environ.get('CELERY_BROKER_URL'))


@app.task()
def longtime_add(x, y):
    logger.info('Got Request - Starting work ')
    time.sleep(4)
    logger.info('Work Finished ')
    return x + y
		