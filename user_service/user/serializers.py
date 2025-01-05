from rest_framework import serializers
from django.contrib.auth import get_user_model
from rest_framework.validators import UniqueValidator
from django.contrib.auth.password_validation import validate_password

User = get_user_model()

class RegisterSerializer(serializers.ModelSerializer):
    """
    Serializer for user registration with password confirmation.
    """
    email = serializers.EmailField(
        required=True,
        validators=[UniqueValidator(queryset=User.objects.all())]  # Ensure email is unique
    )
    password = serializers.CharField(
        write_only=True, required=True, validators=[validate_password]  # Password validation
    )
    password2 = serializers.CharField(write_only=True, required=True)  # Confirm password field

    class Meta:
        model = User
        fields = ['username', 'email', 'password', 'password2']  # Fields for registration

    def validate(self, attrs):
        """
        Check if both passwords match.
        """
        if attrs['password'] != attrs['password2']:
            raise serializers.ValidationError({"password": "Passwords do not match."})
        return attrs

    def create(self, validated_data):
        """
        Create a new user with encrypted password.
        """
        user = User.objects.create(
            username=validated_data['username'],
            email=validated_data['email']
        )
        user.set_password(validated_data['password'])  # Encrypt the password
        user.save()
        return user
