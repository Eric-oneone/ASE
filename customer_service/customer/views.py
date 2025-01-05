from .models import Customer
from .serializers import CustomerSerializer
from rest_framework.viewsets import ModelViewSet

class CustomerViewSet(ModelViewSet):
    queryset = Customer.objects.all().order_by('created_at')  # 添加排序
    serializer_class = CustomerSerializer
