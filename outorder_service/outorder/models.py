from django.db import models

class OutOrder(models.Model):
    order_id = models.CharField(max_length=20, unique=True)
    product = models.CharField(max_length=100)
    quantity = models.PositiveIntegerField()
    customer_name = models.CharField(max_length=100)
    shipping_date = models.DateTimeField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.order_id
