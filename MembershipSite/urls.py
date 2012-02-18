from django.conf.urls.defaults import patterns, include, url
from django.contrib import admin
admin.autodiscover()
import settings
from MembershipSite.logic.views import *

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'myproject.views.home', name='home'),
    # url(r'^myproject/', include('myproject.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^login/$', 'MembershipSite.logic.views.login'),
    url(r'^logout/$', 'MembershipSite.logic.views.logout'),
    url(r'^registration/$', 'MembershipSite.logic.views.registration'),
    url(r'^registration_completed/$', 'MembershipSite.logic.views.registration_completed'),
    url(r'^editprofile', 'MembershipSite.logic.views.editprofile'),
    url(r'^sendmail/$', 'MembershipSite.logic.views.send_testmail'),
    url(r'^confirm/(?P<code>[-a-z0-9]+)/$', 'MembershipSite.logic.views.confirm_registration', name='confirm_registration'),
    url(r'^', include('cms.urls')),
)

if settings.DEBUG:
    urlpatterns = patterns('',
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve',
    {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
    url(r'', include('django.contrib.staticfiles.urls')),
) + urlpatterns

