import requests 
from django.conf import settings 
from django.shortcuts import render
from datetime import datetime
import pytz
import logging 
from pathlib import Path

logger = logging.getLogger('visitlogger')

BASE_DIR = Path(__file__).resolve().parent.parent

# Create your views here.
def index(request):
    # url = "http://worldtimeapi.org/api/timezone/Europe/Moscow"

    # r = requests.get(url).json()

    # context = {'datetime' : r['datetime']}

    logger.info('A client visited')
    
    timezone_moscow = pytz.timezone('Europe/Moscow') 
    datetime_moscow = datetime.now(timezone_moscow)

    context = {'datetime' : datetime_moscow.strftime("%H:%M:%S")}

    return render(request, 'worldtime/index.html', context)


def visits(request):

    # datetime_now = datetime.now()

    # context = {'visitime' : datetime_now.strftime("%H:%M:%S")}

    short_report = open(BASE_DIR / 'logs/visits.log', 'rb')
    response = HttpResponse(FileWrapper(short_report), content_type='text/plain')

    # return response

    context = {'visitlog' : response}

    return render(request, 'worldtime/visits.html', context)
