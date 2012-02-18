from django import forms
from django.contrib.auth.models import User
from models import Profile, mail, TITLE_TYPES
from django.contrib.auth import authenticate

class SignupForm(forms.Form):
    '''
    This form is used for sign-up
    '''
    title = forms.ChoiceField(choices=TITLE_TYPES, label="Title")
    username = forms.CharField(max_length=20, label="User Name")
    email = forms.EmailField(label = 'Email')
    password = forms.CharField(max_length=16, label="Password", widget = forms.PasswordInput)
    confirm_password = forms.CharField(max_length=16, label="Password Again", widget = forms.PasswordInput)
    country = forms.CharField(max_length=100, label='Country')
    state = forms.CharField(max_length=20, label='State')
    city = forms.CharField(max_length=100, label='city')
    
    def __init__(self, selfdata=None, *args, **kw):
        super(SignupForm, self).__init__(*args, **kw)
        if not selfdata is None:
            self.fields['title'].initial = selfdata['title']
            self.fields['username'].initial = selfdata['username']
            self.fields['email'].initial = selfdata['email']
            self.fields['country'].initial = selfdata['country']
            self.fields['state'].initial = selfdata['state']
            self.fields['city'].initial = selfdata['city']
    
    def clean_email(self):
        '''
        check if email already exist in database
        '''
        d = self.cleaned_data
        email = d.get('email')
        if User.objects.filter(email__iexact=email).count():
            raise forms.ValidationError("Email address already exists in database.")
    
    def clean_username(self):
        '''
        check if username is already exist
        '''
        d = self.cleaned_data
        username = d.get('username')
        if User.objects.filter(username__iexact=username).count():
            raise forms.ValidationError("Username address already exists in database.")
    
    def clean_confirm_password(self):
        '''
        check if password and confirm password is same
        '''
        data = self.cleaned_data
        password = data.get('password')
        confirm_password = data.get('confirm_password')
        if password != confirm_password:
            raise forms.ValidationError('Password Confirmation FAILED!')
        #return confirm_password
    
    def save(self, data):
        '''
        This function creates new User with data
        '''
        email = data['email']
        username = data['username']
        password = data['password']
        u = User(username=username, email=email, is_active=True)
        u.set_password(password)
        u.save()
        profile = Profile(title=data['title'], user=u, country=data['country'], state=data['state'], city=data['city'])
        profile.save()
        return True
        #bellow code is for email verification, but it's not needed for now.
        #profile = Profile.create(u)
        #profile.save()
        #profile.send_email_confirmation_mail()
        #print "sent email"
        
class AuthenticationByEmailForm(forms.Form):
    '''
    This form is used for user authentication
    '''
    username = forms.CharField(label = "Username")
    password = forms.CharField(label = "Password", widget=forms.PasswordInput)
   
    ''' 
    def __init__(self, request=None):
        self.request = request
        self.user_cache = None
        self.username = None
        self.password = None
        super(AuthenticationByEmailForm, self).__init__()
    '''
        
    def clean(self):
        '''
        This function is automatically called when form.is_valid() function is called
        And authenticate user with username and password.
        '''
        username = self.cleaned_data.get('username')
        password = self.cleaned_data.get('password')
        if username and password:
            user_cache = authenticate(username = username, password = password)
            if user_cache is None:
                raise forms.ValidationError("Please enter a correct email and password")
            elif not user_cache.is_active:
                raise forms.ValidationError("This account is not activated yet")
        return self.cleaned_data
    
    
    
    
    