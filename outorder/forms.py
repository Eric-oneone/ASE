from django import forms

from common.models import Customer, User, Outorder, Clothes



class OutorderForm(forms.Form):
    id = forms.IntegerField(label='ID', required=False,
                            widget=forms.TextInput({'class': 'form-control', 'disabled': 'disabled'}))
    code = forms.CharField(label='Warehouse entry number', required=False, max_length=32,
                           widget=forms.TextInput(attrs={'class': 'form-control'}))

    customer = forms.ModelChoiceField(label='client', queryset=Customer.objects.all(),
                                      widget=forms.Select({'class': 'form-control'}))
    user = forms.ModelChoiceField(label='agent', required=False, queryset=User.objects.all(),
                                  widget=forms.Select({'class': 'form-control'}))
    create_time = forms.CharField(label='Creation time', required=False, max_length=32,
                                  widget=forms.TextInput(attrs={'class': 'form-control', 'disabled': 'disabled'}))



class OutorderClothesForm(forms.Form):
    id = forms.IntegerField(label='ID', required=False,
                            widget=forms.TextInput({'class': 'form-control', 'disabled': 'disabled'}))
    outorder = forms.ModelChoiceField(label='The invoice number', required=False, queryset=Outorder.objects.all(),
                                      widget=forms.Select({'class': 'form-control'}))
    clothes = forms.ModelChoiceField(label='outfit', queryset=Clothes.objects.all(),
                                     widget=forms.Select({'class': 'form-control'}))
    amount = forms.IntegerField(label='quantity', widget=forms.NumberInput(attrs={'class': 'form-control'}))



class EditmoreForm(forms.Form):
    clothes = forms.ModelChoiceField(label='outfit', required=False, queryset=Clothes.objects.all(),
                                     widget=forms.Select({'class': 'form-control', 'disabled': 'disabled'}))
    amount = forms.IntegerField(label='quantity', widget=forms.NumberInput(attrs={'class': 'form-control'}))
