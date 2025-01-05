from rest_framework.viewsets import ModelViewSet
from rest_framework.filters import SearchFilter, OrderingFilter
from .models import OutOrder
from .serializers import OutOrderSerializer

class OutOrderViewSet(ModelViewSet):
    """
    A viewset for managing outbound orders.
    Features:
    - CRUD operations
    - Search by order ID and customer name
    - Ordering by shipping date and created time
    - Paginated results
    """
    queryset = OutOrder.objects.all().order_by('-created_at')  # Default ordering
    serializer_class = OutOrderSerializer
    filter_backends = [SearchFilter, OrderingFilter]  # Enable search and ordering
    search_fields = ['order_id', 'customer_name']  # Searchable fields
    ordering_fields = ['shipping_date', 'created_at']  # Orderable fields
    ordering = ['-created_at']  # Default order (most recent first)
