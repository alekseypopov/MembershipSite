import os
import sys

path = '/home/aleksey/MembershipSite'
if path not in sys.path:
	sys.path.insert(0, '/home/aleksey/MembershipSite')

os.environ['DJANGO_SETTINGS_MODULE'] = 'MembershipSite.settings'

import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()

