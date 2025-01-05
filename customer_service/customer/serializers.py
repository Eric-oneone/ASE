from rest_framework import serializers
from .models import Customer

class CustomerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Customer
        fields = '__all__'

    # 自定义验证规则：确保 name 和 email 不为空
    def validate_name(self, value):
        if not value.strip():
            raise serializers.ValidationError("Name cannot be empty.")
        return value

    def validate_email(self, value):
        if "@" not in value:
            raise serializers.ValidationError("Enter a valid email address.")
        return value
