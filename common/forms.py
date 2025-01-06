import re

from captcha.fields import CaptchaField
from django import forms
from django.core.exceptions import ValidationError



def username_validate(value):
    username_re = re.compile(r'^[a-zA-Z0-9]{4,16}$')
    if not username_re.match(value):
        raise ValidationError('The format of the user name is incorrect. Only 4 to 16 letters and numbers can be entered')


def password_validate(value):
    password_re = re.compile(r'^[a-zA-Z0-9]{6,16}$')
    if not password_re.match(value):
        raise ValidationError('The password format is incorrect. You can only enter 6-20 letters and numbers')


class LoginForm(forms.Form):
    username = forms.CharField(label='user name', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(label='password', max_length=32, widget=forms.PasswordInput(attrs={'class': 'form-control'}))

    captcha = CaptchaField(label='verification code')


class RegisterForm(forms.Form):
    username = forms.CharField(label='username', validators=[username_validate], max_length=32,
                               widget=forms.TextInput(attrs={'class': 'form-control'}))
    password1 = forms.CharField(label='password', validators=[password_validate], max_length=32,
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    password2 = forms.CharField(label='Confirm password', validators=[password_validate], max_length=32,
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    name = forms.CharField(label='name', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))
    captcha = CaptchaField(label='Verification code')



class ChangepwdForm(forms.Form):
    password_now = forms.CharField(label='Old password', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))
    password1 = forms.CharField(label='New password', validators=[password_validate], max_length=32,
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    password2 = forms.CharField(label='Confirm password', validators=[password_validate], max_length=32,
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    captcha = CaptchaField(label="Verification code")
