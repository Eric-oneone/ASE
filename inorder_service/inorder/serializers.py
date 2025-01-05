from rest_framework import serializers
from .models import Order

class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Order
        fields = '__all__'

    # 自定义验证：order_id 不为空且唯一
    def validate_order_id(self, value):
        if not value.strip():
            raise serializers.ValidationError("Order ID cannot be empty.")
        if Order.objects.filter(order_id=value).exists():
            raise serializers.ValidationError("Order ID must be unique.")
        return value

    # 自定义验证：quantity 必须大于 0
    def validate_quantity(self, value):
        if value <= 0:
            raise serializers.ValidationError("Quantity must be greater than 0.")
        return value
