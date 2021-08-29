from django.test import TestCase

from freezegun import freeze_time
from datetime import datetime, timezone, timedelta
import pytz

timezone_moscow = pytz.timezone('Europe/Moscow') 

# Create your tests here.
class TimeTestCase(TestCase):    
    datetime_moscow = datetime.now(timezone_moscow)

    @freeze_time(datetime_moscow)
    def test_moscow_time_correct(self):
        """The displayed moscow time is correct"""
        
        self.assertEqual(datetime.now(timezone(timedelta(hours=3))), datetime.now(timezone_moscow))