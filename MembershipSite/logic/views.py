# Create your views here.
from django.http import HttpResponse
from django.shortcuts import redirect
from django.shortcuts import render_to_response
from django.core.context_processors import csrf
from django.contrib.auth.models import User
from django.template.context import RequestContext
from models import Profile
from models import mail
from uuid import uuid4
from django.contrib.sites.models import Site
from django.core.urlresolvers import reverse
from forms import SignupForm, AuthenticationByEmailForm
from django.contrib.auth import login as auth_login
from django.contrib.auth import authenticate
from MembershipSite.settings import DEFAULT_FROM_EMAIL
from django.contrib.auth import logout as auth_logout
from django.contrib.auth.decorators import login_required

def login(request):
    '''
    Called when user try to login
    '''
    if request.method == "POST":
        form = AuthenticationByEmailForm(request.POST)
        if form.is_valid():
            user = authenticate(username = request.POST['username'], password = request.POST['password'] )
            auth_login(request, user )
            return redirect("/main")
        return render_to_response('login_failed.html', None, RequestContext(request))
    form = AuthenticationByEmailForm()
    
    c = {'form': form}
    c.update(csrf(request))
    return render_to_response('login.html', c, RequestContext(request))

@login_required
def logout(request):
    '''
    logout current user
    '''
    if request.user.is_authenticated():
        auth_logout(request)
        return redirect("/")

def registration(request):
    '''
    Sign-in new user.
    Send email to user and automatically log-in to site.
    '''
    if request.method == 'POST':
        form = SignupForm(None, request.POST)
        if form.is_valid():
            form.save(request.POST) #create new user
            #send mail to user
            mail(request.POST['email'], 'email_confirmation.html', None, mailfrom=DEFAULT_FROM_EMAIL, subject="Registration Confirm")
            #log-in to user
            user = authenticate(username = request.POST['username'], password = request.POST['password'] )
            auth_login(request, user )
            return redirect("/main")
    else:
        form = SignupForm()
    
    c = {'form': form}
    c.update(csrf(request))
    return render_to_response('registration.html', c, RequestContext(request))

def registration_completed(request):
    return HttpResponse("Congratulation")

def confirm_registration(request, code):
    '''
    This function is called to finish user sign-in with email confirmation.
    This is not used now because we don't need email confirmation now.
    '''
    try:
        p = Profile.objects.get(activation_code=code)
        p.activation_code = None
        p.save()
        p.user.is_active = True
        p.user.save()
    except:
        return redirect("/")
    return render_to_response('registration_success.html')

def send_testmail(request):
    url = 'http://%s%s' % (Site.objects.get_current().domain, reverse('confirm_registration', args=[str(uuid4())]))
    user = User.objects.get(username = "philip")
    mail("icbsoft87@gmail.com", 'email_confirmation.html', {'user': user, 'email': user.email, 'url':url}, subject="Registration Confirm")
    return HttpResponse("Mail Verification Success")

@login_required
def editprofile(request):
    '''
    called when user clicked "edit profile"
    check if username and password is different with original one and not exist in database
    '''
    if request.method == 'POST':
        if request.user.username != request.POST['username']:
            users = User.objects.filter(username=request.POST['username'])
            if len(users) == 0:
                request.user.username = request.POST['username']
        if request.user.email != request.POST['email']:
            users = User.objects.filter(email=request.POST['email'])
            if len(users) == 0:
                request.user.email = request.POST['email']
        if request.POST['password'] != "" and request.POST['password'] == request.POST['confirm_password']:
            request.user.set_password(request.POST['password'])
        request.user.save()
        profiles = Profile.objects.filter(user=request.user)
        if len(profiles) != 0:
            profile = profiles[0]
            if profile.title != request.POST['title'] and request.POST['title'] != '':
                profile.title = request.POST['title']
            if profile.country != request.POST['country'] and request.POST['country'] != '':
                profile.country = request.POST['country']
            if profile.state != request.POST['state'] and request.POST['state'] != '':
                profile.state = request.POST['state']
            if profile.city != request.POST['city'] and request.POST['city'] != '':
                profile.city = request.POST['city']
            profile.save()
        else:
            new_profile = Profile(title=request.POST['title'], user=request.user, country=request.POST['country'], state=request.POST['state'], city=request.POST['city'])
            new_profile.save()
            
        return redirect("/main")
    else:
        #data is used to hand initiali value to form, this values is used in form.__init__() function
        data = {}
        data['username'] = request.user.username
        data['email'] = request.user.email
        profiles = Profile.objects.filter(user=request.user)
        if len(profiles) != 0:
            profile = profiles[0]
            data['title'] = profile.title
            data['country'] = profile.country
            data['state'] = profile.state
            data['city'] = profile.city
        else:
            data['title'] = ''
            data['country'] = ''
            data['state'] = ''
            data['city'] = ''
        form = SignupForm(data)
        
    c = {'form': form}
    c.update(csrf(request))
    return render_to_response('edit_profile.html', c, RequestContext(request))
