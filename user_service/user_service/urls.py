from django.contrib import admin
from django.urls import path
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
from user.views import RegisterView, UserDetailView, ChangePasswordView

urlpatterns = [
    # Admin panel
    path('admin/', admin.site.urls),

    # User registration
    path('api/register/', RegisterView.as_view(), name='register'),

    # User login to obtain JWT tokens
    path('api/login/', TokenObtainPairView.as_view(), name='token_obtain_pair'),

    # Refresh JWT tokens
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),

    # Retrieve and update user details
    path('api/user/', UserDetailView.as_view(), name='user_detail'),

    # Change password
    path('api/change-password/', ChangePasswordView.as_view(), name='change_password'),
]
