from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/common/', include('common.urls')),  # Register routes for the common app
]
