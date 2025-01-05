import re

from django import forms
from django.core.exceptions import ValidationError


# 用户名验证
def username_validate(value):
    username_re = re.compile(r'^[a-zA-Z0-9]{4,16}$')
    if not username_re.match(value):
        raise ValidationError('The format of the user name is incorrect. Only 4 to 16 letters and numbers can be entered') #用户名格式错误,只能输入4-16个字母、数字


# 密码验证
def password_validate(value):
    password_re = re.compile(r'^(a-zA-Z0-9){6,16}$')
    if not password_re.match(value):
        raise ValidationError('The password format is incorrect. You can only enter 6-20 letters and numbers')#密码格式错误，只能输入6-20个字母、数字


# 用户表单
class UserForm(forms.Form):
    role_choices = (
        ('operator', 'operator'),#操作员
        ('Administrator', 'Administrator')#管理员
    )
    id = forms.IntegerField(label='ID', required=False,
                            widget=forms.TextInput({'class': 'form-control', 'disabled': 'disabled'}))
    username = forms.CharField(label="username", validators=[username_validate, ], max_length=32, #用户名
                               widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(label="cipher", max_length=100, #密码
                               widget=forms.TextInput(attrs={'class': 'form-control'}))
    name = forms.CharField(label="name", max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))#姓名
    role = forms.ChoiceField(label="CHARACTERS", choices=role_choices, widget=forms.Select(attrs={'class': 'form-control'}))#角色
    create_time = forms.CharField(label='Creation time', required=False, max_length=32,#创建时间
                                  widget=forms.TextInput(attrs={'class': 'form-control', 'disabled': 'disabled'}))
