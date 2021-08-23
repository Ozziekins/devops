import requests 
from django.shortcuts import render
from datetime import datetime
import pytz

# Create your views here.
def index(request):
    # url = "http://worldtimeapi.org/api/timezone/Europe/Moscow"

    # r = requests.get(url).json()

    # context = {'datetime' : r['datetime']}

    timezone_moscow = pytz.timezone('Europe/Moscow') 
    datetime_moscow = datetime.now(timezone_moscow)

    context = {'datetime' : datetime_moscow.strftime("%H:%M:%S")}

    return render(request, 'worldtime/index.html', context)