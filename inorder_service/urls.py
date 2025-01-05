from django.urls import path

from . import views

# 入库子路由
app_name = 'inorder'
urlpatterns = [
    path('', views.list, name='index'),  # 首页
    path('add', views.add, name='add'),  # 添加入库单
    path('search', views.search, name='search'),  # 搜索入库单
    path('update/<int:inorder_id>', views.update, name='update'),  # 修改
    path('delete/<int:inorder_id>', views.delete, name='delete'),  # 删除
    path('detail/<int:inorder_id>', views.detail, name='detail'),  # 详情
    path('<int:inorder_id>/addmore', views.addmore, name='addmore'),  # 添加入库单货物
    path('<int:inorder_id>/<int:inorderclothes_id>/editmore', views.editmore, name='editmore'),  # 编辑入库单货物
    path('<int:inorder_id>/<int:inorderclothes_id>/deletemore', views.deletemore, name='deletemore')  # 删除入库单货物
]
