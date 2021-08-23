import requests 
from django.shortcuts import render
from datetime import datetime
import pytz

# Create your views here.
def index(request):
    # url = "http://worldtimeapi.org/api/timezone/Europe/Moscow"

    # r = requests.get(url).json()

    # context = {'datetime' : r['datetime']}

    tz_MSCW = pytz.timezone('Europe/Moscow') 
    datetime_MSCW = datetime.now(tz_MSCW)

    context = {'datetime' : datetime_MSCW.strftime("%H:%M:%S")}

    return render(request, 'worldtime/index.html', context)