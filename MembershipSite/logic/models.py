from uuid import uuid4
from django.contrib.auth.models import User
from django.db import models
from django.contrib.sites.models import Site
from django.core.urlresolvers import reverse
from django.core.mail import EmailMessage
from django.conf import settings
from django.template.loader import get_template_from_string, get_template
from django.template import Context, TemplateDoesNotExist
from django.template import Template
from django.contrib import admin
from MembershipSite.settings import DEFAULT_FROM_EMAIL
from django.http import HttpResponse
import csv

def mail(mailto, template, ctx={}, mailfrom=None, subject=None):
    '''
    This function is used to send pre-formatted email to user.
    mailto : end user email address
    template : mail template.
    ctx : used in template
    mailfrom : mail sender address
    subject : mail subject
    '''
    mailfrom = mailfrom or settings.DEFAULT_FROM_EMAIL
    if isinstance(template, basestring):
        try:
            body = get_template(template).render(Context(ctx))
            subject = subject or ''
        except TemplateDoesNotExist:
            template = Template.objects.get(name=template)
            subject = subject or get_template_from_string(u'')
            body = get_template_from_string(u'')
    msg = EmailMessage(subject, body, mailfrom, [mailto])
    msg.content_subtype = "html"
    msg.send()
    
TITLE_TYPES = (
    ('Mr', 'Mr'),
    ('Mrs', 'Mrs'),
    ('Ms', 'Ms'),
    ('Dr', 'Dr'),
)

class Profile(models.Model):
    '''
    This model is used for email confirmation to confirm user by email.
    Just only email-notification is used now.
    '''
    user = models.OneToOneField(User, editable=False, null=True, unique=True)
    title = models.CharField(max_length=4, choices=TITLE_TYPES, null=True)
    country = models.CharField(max_length=100, null=True, verbose_name='Country')
    state = models.CharField(max_length=20, null=True, verbose_name='State')
    city = models.CharField(max_length=100, null=True, verbose_name='city')
    # activation_code is not used for now.
    #activation_code = models.CharField(max_length=50, db_index=True, null=True)
    
    
        
    @staticmethod
    def create(user):
        return Profile(user=user, activation_code="")
    
    def send_email_confirmation_mail(self):
        self.activation_code = str(uuid4())
        self.save()
        url = 'http://%s%s' % (Site.objects.get_current().domain, reverse('confirm_registration', args=[self.activation_code]))
        mail(self.user.email, 'email_confirmation.html', {'user': self.user, 'email': self.user.email, 'url':url}, subject="Registration Confirm")
        

class ProfileAdmin(admin.ModelAdmin):
    list_display = ['user', 'title', 'country', 'state', 'city']
    actions = ['sendmail_to_Members', 'output_to_csv']    
    
    def sendmail_to_Members(self, request, queryset):
        member_count = 0
        for member in queryset:
            member_count = member_count + 1
            mail(member.user.email, 'email_from_admin.html', None, mailfrom=DEFAULT_FROM_EMAIL, subject="Message from officesecy.org")
        message = "You sent mails to %dMembers" % member_count
        self.message_user(request, message)
    sendmail_to_Members.short_description = "Send Msg to Members"

    def output_to_csv(self, request, queryset):
        # Create the HttpResponse object with the appropriate CSV header.
        response = HttpResponse(mimetype='text/csv')
        response['Content-Disposition'] = 'attachment; filename=output.csv'
        writer = csv.writer(response)
        for member in queryset:
            writer.writerow([member.user.username, member.user.email, member.title, member.country, member.state, member.city])
        self.message_user(request, "Successfully generated .csv file")
        return response    
    output_to_csv.short_description = "Output to CSV format"
admin.site.register(Profile, ProfileAdmin)
