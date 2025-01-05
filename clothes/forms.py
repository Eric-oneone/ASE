from django import forms


# 服装表单
class ClothesForm(forms.Form):
    size_choices = (
        ('S', 'S'),
        ('M', 'M'),
        ('L', 'L'),
        ('XL', 'XL'),
        ('XXL', 'XXL')
    )
    id = forms.IntegerField(label='ID', required=False,
                            widget=forms.TextInput({'class': 'form-control', 'disabled': 'disabled'}))
    name = forms.CharField(label='Costume name', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'})) #服装名
    sn = forms.CharField(label='Garment number', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))#服装号
    price = forms.DecimalField(label='Price', max_digits=10, decimal_places=2,
                               widget=forms.NumberInput(attrs={'class': 'form-control'}))#价格
    size = forms.ChoiceField(label='dimension', choices=size_choices, widget=forms.Select(attrs={'class': 'form-control'}))#尺寸
    color = forms.CharField(label='colour', max_length=32, widget=forms.TextInput(attrs={'class': 'form-control'}))#颜色
    stock = forms.IntegerField(label='inventory', widget=forms.NumberInput(attrs={'class': 'form-control'}))#库存
    image = forms.ImageField(label='picture', required=False, widget=forms.FileInput(attrs={'class': 'form-control'}))#图片
    desc = forms.CharField(label='Description', required=False, max_length=200,
                           widget=forms.Textarea(attrs={'class': 'form-control'}))#描述
