from rest_framework import generics
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import serializers, status
from django.contrib.auth import get_user_model

from .serializers import RegisterSerializer

User = get_user_model()

class RegisterView(generics.CreateAPIView):
    """
    API view to handle user registration.
    """
    serializer_class = RegisterSerializer


class UserDetailView(generics.RetrieveUpdateAPIView):
    """
    API view to retrieve and update user details.
    """
    permission_classes = [IsAuthenticated]  # Only authenticated users can access
    serializer_class = RegisterSerializer

    def get_object(self):
        """
        Return the currently authenticated user.
        """
        return self.request.user


class ChangePasswordView(generics.UpdateAPIView):
    """
    API view to allow users to change their password.
    """
    permission_classes = [IsAuthenticated]

    class ChangePasswordSerializer(serializers.Serializer):
        old_password = serializers.CharField(required=True)
        new_password = serializers.CharField(required=True)

    serializer_class = ChangePasswordSerializer

    def update(self, request, *args, **kwargs):
        """
        Validate old password and update to a new password.
        """
        user = self.request.user
        serializer = self.get_serializer(data=request.data)

        # Check if the old password is valid
        if serializer.is_valid():
            if not user.check_password(serializer.validated_data['old_password']):
                return Response(
                    {"old_password": "Incorrect password."},
                    status=status.HTTP_400_BAD_REQUEST
                )

            # Update the password
            user.set_password(serializer.validated_data['new_password'])
            user.save()
            return Response(
                {"detail": "Password updated successfully."},
                status=status.HTTP_200_OK
            )

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
