# Generated by Django 2.0 on 2024-11-29 21:51

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Clothes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=32, verbose_name='服装名')),
                ('sn', models.CharField(max_length=32, unique=True, verbose_name='服装号')),
                ('price', models.DecimalField(decimal_places=2, max_digits=10, verbose_name='价格')),
                ('size', models.CharField(choices=[('S', 'S'), ('M', 'M'), ('L', 'L'), ('XL', 'XL'), ('XXL', 'XXL')], max_length=32, verbose_name='尺寸')),
                ('color', models.CharField(max_length=32, verbose_name='颜色')),
                ('stock', models.PositiveIntegerField(verbose_name='库存')),
                ('desc', models.CharField(max_length=200, verbose_name='描述')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('modify_time', models.DateTimeField(auto_now=True, verbose_name='修改时间')),
            ],
            options={
                'verbose_name': '服装信息',
                'verbose_name_plural': '服装信息',
                'ordering': ['create_time'],
            },
        ),
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=32, verbose_name='客户名')),
                ('phone', models.CharField(max_length=32, verbose_name='电话')),
                ('address', models.CharField(max_length=32, verbose_name='地址')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('modify_time', models.DateTimeField(auto_now=True, verbose_name='修改时间')),
            ],
            options={
                'verbose_name': '客户信息',
                'verbose_name_plural': '客户信息',
                'ordering': ['create_time'],
            },
        ),
        migrations.CreateModel(
            name='Inorder',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('code', models.CharField(max_length=32, verbose_name='入库单号')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('modify_time', models.DateTimeField(auto_now=True, verbose_name='修改时间')),
            ],
            options={
                'verbose_name': '入库单信息',
                'verbose_name_plural': '入库单信息',
                'ordering': ['create_time'],
            },
        ),
        migrations.CreateModel(
            name='InorderClothes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('amount', models.PositiveIntegerField()),
                ('clothes', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='common.Clothes', verbose_name='服装')),
                ('inorder', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='common.Inorder', verbose_name='入库单')),
            ],
            options={
                'verbose_name': '入库单详情',
                'verbose_name_plural': '入库单详情',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Outorder',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('code', models.CharField(max_length=32, verbose_name='出库单号')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('modify_time', models.DateTimeField(auto_now=True, verbose_name='修改时间')),
            ],
            options={
                'verbose_name': '出库单信息',
                'verbose_name_plural': '出库单信息',
                'ordering': ['create_time'],
            },
        ),
        migrations.CreateModel(
            name='OutorderClothes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('amount', models.PositiveIntegerField(verbose_name='数量')),
                ('clothes', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='common.Clothes', verbose_name='服装')),
                ('outorder', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='common.Outorder', verbose_name='出库单')),
            ],
            options={
                'verbose_name': '出库单详情',
                'verbose_name_plural': '出库单详情',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=32, unique=True, verbose_name='用户名')),
                ('password', models.CharField(max_length=100, verbose_name='密码')),
                ('name', models.CharField(max_length=32, verbose_name='姓名')),
                ('role', models.CharField(choices=[('操作员', '操作员'), ('管理员', '管理员')], default='操作员', max_length=32, verbose_name='角色')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('modify_time', models.DateTimeField(auto_now=True, verbose_name='修改时间')),
            ],
            options={
                'verbose_name': '用户信息',
                'verbose_name_plural': '用户信息',
                'ordering': ['create_time'],
            },
        ),
        migrations.AddField(
            model_name='outorder',
            name='clothes',
            field=models.ManyToManyField(through='common.OutorderClothes', to='common.Clothes', verbose_name='服装'),
        ),
        migrations.AddField(
            model_name='outorder',
            name='customer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='common.Customer', verbose_name='客户'),
        ),
        migrations.AddField(
            model_name='outorder',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='common.User', verbose_name='用户'),
        ),
        migrations.AddField(
            model_name='inorder',
            name='clothes',
            field=models.ManyToManyField(through='common.InorderClothes', to='common.Clothes', verbose_name='服装'),
        ),
        migrations.AddField(
            model_name='inorder',
            name='customer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='common.Customer', verbose_name='客户'),
        ),
        migrations.AddField(
            model_name='inorder',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='common.User', verbose_name='用户'),
        ),
    ]