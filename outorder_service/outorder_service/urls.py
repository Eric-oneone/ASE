from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from outorder.views import OutOrderViewSet

# Define the router and register the viewset
router = DefaultRouter()
router.register(r'outorders', OutOrderViewSet, basename='outorder')

urlpatterns = [
    path('admin/', admin.site.urls),  # Admin panel
    path('api/', include(router.urls)),  # API endpoints
]
