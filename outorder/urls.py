from django.urls import path

from . import views

# 出库子路由
app_name = 'outorder'
urlpatterns = [
    path('', views.list, name='index'),  # 首页
    path('add', views.add, name='add'),  # 添加
    path('search', views.search, name='search'),  # 搜索
    path('update/<int:outorder_id>', views.update, name='update'),  # 修改出库单
    path('delete/<int:outorder_id>', views.delete, name='delete'),  # 删除出库单
    path('detail/<int:outorder_id>', views.detail, name='detail'),  # 出库单详情
    path('<int:outorder_id>/addmore', views.addmore, name='addmore'),  # 添加出库单货物
    path('<int:outorder_id>/<int:outorderclothes_id>/editmore', views.editmore, name='editmore'),  # 修改出库单货物
    path('<int:outorder_id>/<int:outorderclothes_id>/deletemore', views.deletemore, name='deletemore')  # 删除出库单货物
]
