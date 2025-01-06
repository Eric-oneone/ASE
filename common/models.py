from django.db import models



class User(models.Model):
    role_choices = (
        ('operator', 'operator'),
        ('Administrator', 'Administrator')
    )

    username = models.CharField(max_length=32, unique=True, verbose_name='username')

    password = models.CharField(max_length=100, verbose_name='password')

    name = models.CharField(max_length=32, verbose_name='name')

    role = models.CharField(max_length=32, choices=role_choices, default='operator', verbose_name='角色')

    create_time = models.DateTimeField(auto_now_add=True, verbose_name='Creation time')

    modify_time = models.DateTimeField(auto_now=True, verbose_name='Modification time')

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['create_time']
        verbose_name = 'User information'
        verbose_name_plural = verbose_name



class Customer(models.Model):

    name = models.CharField(max_length=32, verbose_name='Client name')

    phone = models.CharField(max_length=32, verbose_name='telephone')

    address = models.CharField(max_length=32, verbose_name='address')

    create_time = models.DateTimeField(auto_now_add=True, verbose_name='Creation time')

    modify_time = models.DateTimeField(auto_now=True, verbose_name='Modification time')

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['create_time']
        verbose_name = 'Customer information'
        verbose_name_plural = verbose_name



class Clothes(models.Model):
    size_choices = (
        ('S', 'S'),
        ('M', 'M'),
        ('L', 'L'),
        ('XL', 'XL'),
        ('XXL', 'XXL')
    )

    name = models.CharField(max_length=32, verbose_name='Costume name')

    sn = models.CharField(max_length=32, unique=True, verbose_name='Garment number')

    price = models.DecimalField(max_digits=10, decimal_places=2, verbose_name='Price')

    size = models.CharField(max_length=32, choices=size_choices, verbose_name='dimension')

    color = models.CharField(max_length=32, verbose_name='colour')

    stock = models.PositiveIntegerField(verbose_name='inventory')

    desc = models.CharField(max_length=200, verbose_name='Description')

    create_time = models.DateTimeField(auto_now_add=True, verbose_name='Creation time')

    modify_time = models.DateTimeField(auto_now=True, verbose_name='Modification time')

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['create_time']
        verbose_name = 'Clothing information'
        verbose_name_plural = verbose_name



class Inorder(models.Model):

    code = models.CharField(max_length=32, verbose_name='Warehouse entry number')

    customer = models.ForeignKey(Customer, on_delete=models.CASCADE, verbose_name='client')

    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='user')

    clothes = models.ManyToManyField(Clothes, through='InorderClothes', verbose_name='outfit')

    create_time = models.DateTimeField(auto_now_add=True, verbose_name='Creation time')

    modify_time = models.DateTimeField(auto_now=True, verbose_name='Modification time')

    def __str__(self):
        return self.code

    class Meta:
        ordering = ['create_time']
        verbose_name = 'Warehouse entry information'
        verbose_name_plural = verbose_name



class InorderClothes(models.Model):

    inorder = models.ForeignKey(Inorder, on_delete=models.CASCADE, verbose_name='Warehouse warrant')

    clothes = models.ForeignKey(Clothes, on_delete=models.CASCADE, verbose_name='outfit')

    amount = models.PositiveIntegerField()

    def __str__(self):
        return self.clothes.name

    class Meta:
        ordering = ['id']
        verbose_name = 'Store entry details'
        verbose_name_plural = verbose_name



class Outorder(models.Model):

    code = models.CharField(max_length=32, verbose_name='The invoice number')

    customer = models.ForeignKey(Customer, on_delete=models.CASCADE, verbose_name='client')

    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='user')

    clothes = models.ManyToManyField(Clothes, through='OutorderClothes', verbose_name='outfit')

    create_time = models.DateTimeField(auto_now_add=True, verbose_name='Creation time')

    modify_time = models.DateTimeField(auto_now=True, verbose_name='Modification time')

    def __str__(self):
        return self.code

    class Meta:
        ordering = ['create_time']
        verbose_name = 'Outbound information'
        verbose_name_plural = verbose_name



class OutorderClothes(models.Model):

    outorder = models.ForeignKey(Outorder, on_delete=models.CASCADE, verbose_name='Outbound order')

    clothes = models.ForeignKey(Clothes, on_delete=models.CASCADE, verbose_name='outfit')

    amount = models.PositiveIntegerField(verbose_name='quantity')

    def __str__(self):
        return self.clothes.name

    class Meta:
        ordering = ['id']
        verbose_name = 'Details of the delivery slip'
        verbose_name_plural = verbose_name

# python manage.py makemigrations
# python manage.py migrate
