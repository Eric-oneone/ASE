from django.urls import path

from . import views

# 服装子路由
app_name = 'clothes'
urlpatterns = [
    path('', views.list, name='index'),  # 首页货物列表
    path('add', views.add, name='add'),  # 添加货物
    path('search', views.search, name='search'),  # 搜索货物
    path('update/<int:clothes_id>', views.update, name='update'),  # 修改货物
    path('delete/<int:clothes_id>', views.delete, name='delete'),  # 删除货物
    path('checkstock/<int:clothes_id>', views.checkstock, name='checkstock')  # 检查货物库存
]
