from django.urls import path

from . import views

# 用户管理子路由
app_name = 'user'
urlpatterns = [
    path('', views.list, name='index'),  # 用户列表
    path('add', views.add, name='add'),  # 添加用户
    path('search', views.search, name='search'),  # 搜索用户
    path('update/<int:user_id>', views.update, name='update'),  # 修改用户
    path('delete/<int:user_id>', views.delete, name='delete')  # 删除用户
]
