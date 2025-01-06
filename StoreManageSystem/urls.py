from django.contrib import admin
from django.urls import path, include

from common import views


app_name = 'customer'
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.login),
    path('index/', views.index, name='index'),
    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'),
    path('changpwd/', views.changepwd, name='changepwd'),
    path('captcha', include('captcha.urls')),
    path('user/', include('user.urls')),
    path('customer/', include('customer.urls')),
    path('clothes/', include('clothes.urls')),
    path('inorder/', include('inorder.urls')),
    path('outorder/', include('outorder.urls')),
    path('checkusername/<str:username>/', views.checkusername, name='checkusername')
]
