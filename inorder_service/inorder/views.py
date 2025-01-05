# Import necessary modules
from rest_framework.viewsets import ModelViewSet  # Provides CRUD operations for models
from rest_framework.filters import OrderingFilter  # Enables ordering functionality
from .models import Order  # Import the Order model
from .serializers import OrderSerializer  # Import the serializer for Order

# Define the OrderViewSet with ordering functionality
class OrderViewSet(ModelViewSet):
    """
    A ViewSet for handling CRUD operations on Order model.
    Added ordering functionality for order_date and order_id.
    """
    queryset = Order.objects.all().order_by('-order_date')  # Default ordering by order_date (descending)
    serializer_class = OrderSerializer  # Use the OrderSerializer for serialization
    filter_backends = [OrderingFilter]  # Enable ordering functionality
    ordering_fields = ['order_date', 'order_id']  # Allow ordering by order_date and order_id
    ordering = ['-order_date']  # Default ordering (descending order_date)
