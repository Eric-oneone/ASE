from django.contrib.auth.models import AbstractUser
from django.db import models

class User(AbstractUser):
    """
    Custom user model that extends Django's AbstractUser.
    Additional fields can be added here if needed.
    """
    email = models.EmailField(unique=True)  # Ensure email is unique
    created_at = models.DateTimeField(auto_now_add=True)  # Track user creation time

    def __str__(self):
        return self.username  # Return the username as the string representation
