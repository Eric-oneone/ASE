import re

from django import forms
from django.core.exceptions import ValidationError



def username_validate(value):
    username_re = re.compile(r'^[a-zA-Z0-9]{4,16}$')
    if not username_re.match(value):
        raise ValidationError('The format of the user name is incorrect. Only 4 to 16 letters and numbers can be entered') #用户名格式错误,只能输入4-16个字母、数字



def password_validate(value):
    password_re = re.compile(r'^(a-zA-Z0-9){6,16}$')
    if not password_re.match(value):
        raise ValidationError('The password format is incorrect. You can only enter 6-20 letters and numbers')#密码格式错误，只能输入6-20个字母、数字



class UserForm(forms.Form):
    role_choices = (
        ('operator', 'operator'),
        ('Administrator', 'Administrator')
    )
    id = forms.IntegerField(label='ID', required=False,
                            widget=forms.TextInput({'class': 'form-control', 'disabled': 'disabled'}))
    username = forms.CharField(label="username", validators=[username_validate, ], max_length=32,
                               widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(label="cipher", max_length=100,
                               widget=forms.TextInput(attrs={'class': 'form-control'}))
    name = forms.CharField(label="name", max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))
    role = forms.ChoiceField(label="CHARACTERS", choices=role_choices, widget=forms.Select(attrs={'class': 'form-control'}))
    create_time = forms.CharField(label='Creation time', required=False, max_length=32,
                                  widget=forms.TextInput(attrs={'class': 'form-control', 'disabled': 'disabled'}))
