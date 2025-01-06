import hashlib
from django.contrib import messages
from django.http import JsonResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from common import models
from common.forms import LoginForm, RegisterForm, ChangepwdForm
from common.models import User


# 首页
def index(request):
    return render(request, 'index.html')


# 用户登录方法
def login(request):
    if request.session.get('is_login', None):
        return redirect(reverse('index'))
    if request.method == "POST":
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            username = login_form.cleaned_data['username']
            password = login_form.cleaned_data['password']
            try:
                user = models.User.objects.get(username=username)
                if user.password == hash_code(password):
                    request.session['is_login'] = True
                    request.session['user_id'] = user.id
                    request.session['user_name'] = user.name
                    request.session['user_role'] = user.role
                    return redirect(reverse('index'))
                else:
                    messages.add_message(request, messages.WARNING, 'Incorrect password')
            except User.DoesNotExist:
                messages.add_message(request, messages.WARNING, 'User does not exist')
        return render(request, 'login.html', locals())
    login_form = LoginForm()
    return render(request, 'login.html', locals())



def logout(request):
    if not request.session.get('is_login', None):

        return redirect(reverse(reverse('index')))
    request.session.flush()
    return redirect(reverse('index'))



def changepwd(request):
    if not request.session.get('is_login', None):
        return redirect(reverse('index'))
    user = User.objects.get(id=request.session['user_id'])
    if request.method == "POST":
        changepwd_form = ChangepwdForm(request.POST)
        if changepwd_form.is_valid():
            password_now = changepwd_form.cleaned_data['password_now']
            print(hash_code(password_now))
            password1 = changepwd_form.cleaned_data['password1']
            print(password1)
            password2 = changepwd_form.cleaned_data['password2']
            print(password2)
            if hash_code(password_now) == user.password:
                if password1 == password2:
                    user.password = hash_code(password1)
                    user.save()
                    messages.add_message(request, messages.SUCCESS, 'Modified successfully')
                    return redirect(reverse('index'))
                else:
                    context = {
                        'changepwd_form': changepwd_form
                    }
                    messages.add_message(request, messages.WARNING, 'The two passwords are different')
                    return render(request, 'changepwd.html', context)
            else:
                context = {
                    'changepwd_form': changepwd_form
                }
                messages.add_message(request, messages.WARNING, 'The old password is incorrect')
                return render(request, 'changepwd.html', context)
        else:
            context = {
                'changepwd_form': changepwd_form
            }
            messages.add_message(request, messages.WARNING, 'Please check the contents')
            return render(request, 'changepwd.html', context)
    else:
        changepwd_form = ChangepwdForm()
        context = {
            'changepwd_form': changepwd_form,
        }
        return render(request, 'changepwd.html', context)



def checkusername(request, username):
    same_name_user = User.objects.filter(username=username)
    if not same_name_user:
        return JsonResponse({'ret': 0, 'msg': 'The user name is available'})
    return JsonResponse({'ret': 1, 'msg': 'The user name already exists'})



def hash_code(s, salt='psf'):
    h = hashlib.sha256()
    s += salt
    h.update(s.encode())
    return h.hexdigest()
