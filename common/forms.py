import re

from captcha.fields import CaptchaField
from django import forms
from django.core.exceptions import ValidationError


# 用户名验证
def username_validate(value):
    username_re = re.compile(r'^[a-zA-Z0-9]{4,16}$')
    if not username_re.match(value):
        raise ValidationError('用户名格式错误,只能输入4-16个字母、数字')

# 密码验证
def password_validate(value):
    password_re = re.compile(r'^[a-zA-Z0-9]{6,16}$')
    if not password_re.match(value):
        raise ValidationError('密码格式错误，只能输入6-20个字母、数字')

# 登录表单
class LoginForm(forms.Form):
    username = forms.CharField(label='user name', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(label='password', max_length=32, widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    # 验证码模块  需要时开启
    captcha = CaptchaField(label='verification code')

# 注册表单
class RegisterForm(forms.Form):
    username = forms.CharField(label='用户名', validators=[username_validate], max_length=32,
                               widget=forms.TextInput(attrs={'class': 'form-control'}))
    password1 = forms.CharField(label='密码', validators=[password_validate], max_length=32,
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    password2 = forms.CharField(label='确认密码', validators=[password_validate], max_length=32,
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    name = forms.CharField(label='姓名', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))
    captcha = CaptchaField(label='验证码')


# 修改密码表单
class ChangepwdForm(forms.Form):
    password_now = forms.CharField(label='原密码', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))
    password1 = forms.CharField(label='新密码', validators=[password_validate], max_length=32,
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    password2 = forms.CharField(label='确认密码', validators=[password_validate], max_length=32,
                                widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    captcha = CaptchaField(label="验证码")
