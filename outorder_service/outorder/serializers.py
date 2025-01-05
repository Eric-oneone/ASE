from rest_framework import serializers
from .models import OutOrder

class OutOrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = OutOrder
        fields = '__all__'

    # Validate that order_id is not empty and unique
    def validate_order_id(self, value):
        if not value.strip():
            raise serializers.ValidationError("Order ID cannot be empty.")
        if OutOrder.objects.filter(order_id=value).exists():
            raise serializers.ValidationError("Order ID must be unique.")
        return value

    # Validate that quantity is greater than zero
    def validate_quantity(self, value):
        if value <= 0:
            raise serializers.ValidationError("Quantity must be greater than zero.")
        return value

    # Validate that shipping_date is not in the past
    def validate_shipping_date(self, value):
        from django.utils import timezone
        if value < timezone.now():
            raise serializers.ValidationError("Shipping date cannot be in the past.")
        return value
