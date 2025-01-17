import datetime
import random
from django.contrib import messages
from django.core.paginator import Paginator
from django.db import transaction, DataError
from django.shortcuts import render, redirect, reverse
from common.models import Outorder, OutorderClothes, User, Customer
from outorder.forms import OutorderForm, OutorderClothesForm, EditmoreForm



def list(request):

    qs = Outorder.objects.all()
    paginator = Paginator(qs, 5)
    page = request.GET.get('page', '1')
    result = paginator.page(page)
    context = {
        'result': result
    }
    return render(request, 'outorder/index.html', context)



def add(request):
    if request.method == "POST":
        outorder_form = OutorderForm(request.POST)
        if outorder_form.is_valid():
            costomer = outorder_form.cleaned_data['customer']
            uid = request.session.get('user_id')
            user = User.objects.get(id=uid)
            now = datetime.datetime.now().strftime('%Y%m%d%H%M%S')
            code = 'IN' + now + str(random.randint(10000, 99999))
            new_outorder = Outorder.objects.create(code=code,
                                                   customer=costomer,
                                                   user=user)
            context = {
                'id': new_outorder.id
            }
            messages.add_message(request, messages.SUCCESS, 'Add successfully')
            return redirect(reverse('outorder:detail', args={new_outorder.id}))

        else:
            context = {
                'outorder_form': outorder_form
            }
            messages.add_message(request, messages.WARNING, 'Please check the contents')
            return render(request, 'outorder/add.html', context)
    else:
        outorder_form = OutorderForm()
        context = {
            'outorder_form': outorder_form
        }
        return render(request, 'outorder/add.html', context)



def search(request):
    object = Outorder.objects
    qs = object.values()
    id = request.POST.get('id')
    code = request.POST.get('code')
    customer_name = request.POST.get('customer_name')
    user_name = request.POST.get('user_name')
    if id:
        qs = object.filter(id=id)
    if code:
        qs = object.filter(code=code)
    if customer_name:
        customer = Customer.objects.get(name=customer_name)
        qs = object.filter(customer_id=customer.id)
    if user_name:
        user = User.objects.get(name=user_name)
        qs = object.filter(user_id=user.id)
    paginator = Paginator(qs, 5)
    page = request.GET.get('page', '1')
    result = paginator.page(page)
    context = {
        'result': result
    }
    messages.add_message(request, messages.SUCCESS, 'Query success')
    return render(request, 'outorder/index.html', context)



def update(request, outorder_id):
    outorder = Outorder.objects.get(id=outorder_id)
    qs = OutorderClothes.objects.filter(outorder_id=outorder_id)
    if request.method == "POST":
        outorder_form = OutorderForm(request.POST)
        if outorder_form.is_valid():
            customer = outorder_form.cleaned_data['customer']
            if customer:
                outorder.customer = customer

            outorder.save()
            context = {
                'outorder_id': outorder_id
            }
            messages.add_message(request, messages.SUCCESS, 'Modified successfully')
            return redirect(reverse('outorder:index'))

        else:
            context = {
                'outorder_form': outorder_form,
                'qs': qs
            }
            messages.add_message(request, messages.WARNING, 'Please check the contents')
            return render(request, 'outorder/edit.html', context)
    else:
        outorder_form = OutorderForm({'id': outorder.id,
                                      'code': outorder.code,
                                      'customer': outorder.customer,
                                      'user': outorder.user,
                                      'create_time': outorder.create_time})
        context = {
            'outorder_form': outorder_form,
            'outorder_id': outorder_id,
            'qs': qs
        }
        return render(request, 'outorder/edit.html', context)



def delete(request, outorder_id):
    qs = OutorderClothes.objects.filter(outorder_id=outorder_id)
    if qs:
        messages.add_message(request, messages.WARNING, 'Failed to delete, please delete the order first')
        return redirect(reverse('outorder:detail', args={outorder_id}))
    outorder = Outorder.objects.get(id=outorder_id)
    outorder.delete()
    messages.add_message(request, messages.SUCCESS, 'Successfully deleted')
    return redirect(reverse('outorder:index'))



def detail(request, outorder_id):

    qs1 = Outorder.objects.filter(id=outorder_id)
    qs2 = OutorderClothes.objects.filter(outorder_id=outorder_id)
    sum = 0
    for foo in qs2:
        sum += foo.clothes.price * foo.amount
    context = {
        'qs1': qs1,
        'qs2': qs2,
        'sum': sum,
        'outorder_id': outorder_id
    }
    return render(request, 'outorder/detail.html', context)



def addmore(request, outorder_id):
    if request.method == "POST":
        outorderclothes_form = OutorderClothesForm(request.POST)
        if outorderclothes_form.is_valid():
            clothes = outorderclothes_form.cleaned_data['clothes']
            amount = outorderclothes_form.cleaned_data['amount']
            with transaction.atomic():

                if clothes.stock >= amount:

                    clothes.stock -= amount
                    clothes.save()
                    new_outorderclothes = OutorderClothes.objects.create(clothes=clothes,
                                                                         outorder_id=outorder_id,
                                                                         amount=amount)
                    context = {
                        'id': new_outorderclothes.id
                    }
                    messages.add_message(request, messages.SUCCESS, 'Add successfully')
                    return redirect(reverse('outorder:detail', args={outorder_id}))

                else:
                    context = {
                        'outorderclothes_form': outorderclothes_form,
                        'outorder_id': outorder_id
                    }
                    messages.add_message(request, messages.WARNING, 'Failed to add, inventory is insufficient')
                    return render(request, 'outorder/addmore.html', context)

        else:
            context = {
                'outorderclothes_form': outorderclothes_form,
                'outorder_id': outorder_id
            }
            messages.add_message(request, messages.WARNING, 'Please check the contents')
            return render(request, 'outorder/addmore.html', context)
    else:
        outorderclothes_form = OutorderClothesForm()
        context = {
            'outorderclothes_form': outorderclothes_form,
            'outorder_id': outorder_id
        }
        return render(request, 'outorder/addmore.html', context)



def editmore(request, outorder_id, outorderclothes_id):
    outorderclothes = OutorderClothes.objects.get(id=outorderclothes_id)
    if request.method == "POST":
        editmore_form = EditmoreForm(request.POST)
        if editmore_form.is_valid():
            amount = editmore_form.cleaned_data['amount']
            del_amount = amount - outorderclothes.amount
            if del_amount <= outorderclothes.clothes.stock:
                with transaction.atomic():
                    outorderclothes.amount = amount
                    outorderclothes.clothes.stock -= del_amount
                    outorderclothes.save()
                    outorderclothes.clothes.save()
                context = {
                    'outorderclothes_id': outorderclothes_id
                }
                messages.add_message(request, messages.SUCCESS, 'Modified successfully')
                return redirect(reverse('outorder:detail', args={outorder_id}))
            else:
                messages.add_message(request, messages.WARNING, 'Modification failed, inventory is insufficient')
                return redirect(reverse('outorder:detail', args={outorder_id}))
        else:
            context = {
                'editmore_form': editmore_form,
                'outorder_id': outorder_id,
                'outorderclothes_id': outorderclothes_id
            }
            messages.add_message(request, messages.WARNING, 'Please check the contents')
            return render(request, 'outorder/editmore.html', context)
    else:
        editmore_form = EditmoreForm({'clothes': outorderclothes.clothes,
                                      'amount': outorderclothes.amount})
        context = {
            'editmore_form': editmore_form,
            'outorder_id': outorder_id,
            'outorderclothes_id': outorderclothes_id
        }
        return render(request, 'outorder/editmore.html', context)



def deletemore(request, outorder_id, outorderclothes_id):
    outorderclothes = OutorderClothes.objects.get(id=outorderclothes_id)
    with transaction.atomic():
        outorderclothes.delete()
        outorderclothes.clothes.stock += outorderclothes.amount
        outorderclothes.clothes.save()
        messages.add_message(request, messages.SUCCESS, 'Successfully deleted')
    return redirect(reverse('outorder:detail', args={outorder_id}))
