from django.urls import path

from . import views

# 客户管理模块子路由
app_name = 'customer'
urlpatterns = [
    path('', views.list, name='index'),  # 首页
    path('add', views.add, name='add'),  # 添加客户
    path('search', views.search, name='search'),  # 搜索客户
    path('update/<int:customer_id>', views.update, name='update'),  # 修改客户
    path('delete/<int:customer_id>', views.delete, name='delete')  # 删除客户
]
