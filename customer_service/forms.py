import re

from django import forms
from django.core.exceptions import ValidationError



def phone_validate(value):
    phone_re = re.compile(r'^1[3456789]\d{9}$')
    if not phone_re.match(value):
        raise ValidationError('Mobile phone format error')



class CustomerForm(forms.Form):
    id = forms.IntegerField(label='ID', required=False,
                            widget=forms.TextInput({'class': 'form-control', 'disabled': 'disabled'}))
    name = forms.CharField(label='Client name', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))#客户名
    phone = forms.CharField(label='telephone', validators=[phone_validate, ], max_length=11,#电话
                            widget=forms.TextInput(attrs={'class': 'form-control'}))
    address = forms.CharField(label='address', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))#地址
    create_time = forms.CharField(label='Creation time', required=False, max_length=32,#创建时间
                                  widget=forms.TextInput(attrs={'class': 'form-control', 'disabled': 'disabled'}))
