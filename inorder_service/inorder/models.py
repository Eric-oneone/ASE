from django.db import models

class Order(models.Model):
    order_id = models.CharField(max_length=20, unique=True)
    customer_name = models.CharField(max_length=100)
    product = models.CharField(max_length=100)
    quantity = models.PositiveIntegerField()
    order_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.order_id
