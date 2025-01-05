from django.contrib import admin
from django.urls import path, include

from common import views

# 主路由
app_name = 'customer'
urlpatterns = [
    path('admin/', admin.site.urls),  # 后台管理系统，无需用到
    path('', views.login),  # 登录
    path('index/', views.index, name='index'),  # 首页
    path('login/', views.login, name='login'),  # 登录
    path('logout/', views.logout, name='logout'),  # 退出登录
    path('changpwd/', views.changepwd, name='changepwd'),  # 修改密码
    path('captcha', include('captcha.urls')),  # 获取验证码
    path('user/', include('user.urls')),  # 用户管理模块
    path('customer/', include('customer.urls')),  # 客户管理模块
    path('clothes/', include('clothes.urls')),  # 货物管理模块
    path('inorder/', include('inorder.urls')),  # 入库管理模块
    path('outorder/', include('outorder.urls')),  # 出库管理模块
    path('checkusername/<str:username>/', views.checkusername, name='checkusername')  # 检查用户名方法
]
