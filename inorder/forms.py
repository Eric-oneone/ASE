from django import forms

from common.models import Customer, User, Clothes, Inorder


# 入库单表单
class InorderForm(forms.Form):
    id = forms.IntegerField(label='ID', required=False,
                            widget=forms.TextInput({'class': 'form-control', 'disabled': 'disabled'}))
    code = forms.CharField(label='Warehouse entry number', required=False, max_length=32,#入库单号
                           widget=forms.TextInput(attrs={'class': 'form-control'}))
    customer = forms.ModelChoiceField(label='client', queryset=Customer.objects.all(),#客户
                                      widget=forms.Select({'class': 'form-control'}))
    user = forms.ModelChoiceField(label='agent', required=False, queryset=User.objects.all(),#
                                  widget=forms.Select({'class': 'form-control'}))
    create_time = forms.CharField(label='Creation time', required=False, max_length=32,#创建时间
                                  widget=forms.TextInput(attrs={'class': 'form-control', 'disabled': 'disabled'}))


# 入库单详情表单
class InorderClothesForm(forms.Form):
    id = forms.IntegerField(label='ID', required=False,
                            widget=forms.TextInput({'class': 'form-control', 'disabled': 'disabled'}))
    outorder = forms.ModelChoiceField(label='Warehouse entry number', required=False, queryset=Inorder.objects.all(),#入库单号
                                      widget=forms.Select({'class': 'form-control'}))
    clothes = forms.ModelChoiceField(label='outfit', queryset=Clothes.objects.all(),#服装
                                     widget=forms.Select({'class': 'form-control'}))
    amount = forms.IntegerField(label='quantity', widget=forms.NumberInput(attrs={'class': 'form-control'}))#数量


# 编辑表单
class EditmoreForm(forms.Form):
    clothes = forms.ModelChoiceField(label='outfit', required=False, queryset=Clothes.objects.all(),#服装
                                     widget=forms.Select({'class': 'form-control', 'disabled': 'disabled'}))
    amount = forms.IntegerField(label='quantity', widget=forms.NumberInput(attrs={'class': 'form-control'}))#数量
