import requests 
from django.conf import settings 
from django.shortcuts import render
from datetime import datetime
import pytz
import os
import logging 
from django.http import HttpResponse
from pathlib import Path
from wsgiref.util import FileWrapper

logger = logging.getLogger('visitlogger')

BASE_DIR = Path(__file__).resolve().parent.parent

# Create your views here.
def index(request):
    logger.info('A client visited')
    
    timezone_moscow = pytz.timezone('Europe/Moscow') 
    datetime_moscow = datetime.now(timezone_moscow)

    context = {'datetime' : datetime_moscow.strftime("%H:%M:%S")}

    return render(request, 'worldtime/index.html', context)


def visits(request):

    data_file = open(os.path.join(BASE_DIR / 'logs', 'visits.log'), 'rb')

    data = data_file.readlines()

    context = {'visitlog' : data}

    return render(request, 'worldtime/visits.html', context)
