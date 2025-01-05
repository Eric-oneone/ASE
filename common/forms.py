import re

from captcha.fields import CaptchaField
from django import forms
from django.core.exceptions import ValidationError


# 用户名验证
def username_validate(value):
    username_re = re.compile(r'^[a-zA-Z0-9]{4,16}$')
    if not username_re.match(value):
        raise ValidationError('The format of the user name is incorrect. Only 4 to 16 letters and numbers can be entered')#用户名格式错误,只能输入4-16个字母、数字

# 密码验证
def password_validate(value):
    password_re = re.compile(r'^[a-zA-Z0-9]{6,16}$')
    if not password_re.match(value):
        raise ValidationError('The password format is incorrect. You can only enter 6-20 letters and numbers')#密码格式错误，只能输入6-20个字母、数字

# 登录表单
class LoginForm(forms.Form):
    username = forms.CharField(label='user name', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(label='password', max_length=32, widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    # 验证码模块  需要时开启
    captcha = CaptchaField(label='verification code')

# 注册表单
class RegisterForm(forms.Form):
    username = forms.CharField(label='username', validators=[username_validate], max_length=32,#用户名
                               widget=forms.TextInput(attrs={'class': 'form-control'}))
    password1 = forms.CharField(label='password', validators=[password_validate], max_length=32,#密码
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    password2 = forms.CharField(label='Confirm password', validators=[password_validate], max_length=32,#确认密码
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    name = forms.CharField(label='name', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))#姓名
    captcha = CaptchaField(label='Verification code')#验证码


# 修改密码表单
class ChangepwdForm(forms.Form):
    password_now = forms.CharField(label='Old password', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))#原密码
    password1 = forms.CharField(label='New password', validators=[password_validate], max_length=32,#新密码
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    password2 = forms.CharField(label='Confirm password', validators=[password_validate], max_length=32,#确认密码
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    captcha = CaptchaField(label="Verification code")#验证码
