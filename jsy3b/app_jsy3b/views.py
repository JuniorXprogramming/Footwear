from django.http import HttpResponse, HttpRequest, HttpResponseRedirect
from django.shortcuts import render, get_object_or_404, redirect
from app_jsy3b.models import Foot
from app_jsy3b.forms import Registerform
from django.contrib.auth import login
from django.urls import reverse
import datetime
import json
import time
from django.contrib.auth.decorators import login_required


def index(request):
    return render(request, 'app_jsy3b/home.html')

def productMen(request):
    all_foot = None
    try:
        all_foot = Foot.objects.all().order_by('-p_discount')
        context = {"Foot": all_foot}
    except:
        print("No Product")
    return render(request, 'app_jsy3b/productMen.html', context)

def productFemale(request):
    all_foot = None
    try:
        all_foot = Foot.objects.all().order_by('-p_discount')
        context = {"Foot": all_foot}
    except:
        print("No Product")
    return render(request, 'app_jsy3b/productFemale.html', context)

def product(request, p_id):
    p_detail = Foot.objects.get(id=p_id)
    context = {"p_id":p_detail}
    return render(request, 'app_jsy3b/product.html', context)

def checkdate(request):
    try:
        foot_object = Foot.objects.filter(p_discount=True)
        date_now = datetime.datetime.now()
        data_date = date_now.date()
        for i in range(len(foot_object)):
            print(i)
            if foot_object[i].p_end_discount < data_date :
                Foot.objects.filter(id=foot_object[i].id).update(p_discount=False, p_end_discount=None, p_special_price=0)
        if request.path == "/productFemale":
            return productFemale(request)
        elif request.path == "/productMen":
            return productMen(request)
        elif request.path == "/sale":
            return sale(request)
    except:
        return sale(request)

def sale(request):
    try:
        p_detail = Foot.objects.filter(p_discount=True)
        context = {"dc_detail":p_detail}
        return render(request, 'app_jsy3b/sale.html', context)
    except:
        context = {"dc_detail":False}
        return render(request, 'app_jsy3b/sale.html', context)

def register(request: HttpRequest):
    if request.method == "POST":
        form = Registerform(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            return HttpResponseRedirect(reverse('index'))
    else:
        form = Registerform()
    context = {"form": form}
    return render(request, 'registration/register.html', context)

def add_to_cart(request, product_id):
     # retrieve the product object
    product = get_object_or_404(Foot, pk=product_id)

    # get the cart from the cookie data or create a new cart
    cart_str = request.COOKIES.get('cart')
    if cart_str:
        cart = eval(cart_str)
    else:
        cart = {}


    # add the product to the cart
    cart[str(product_id)] = cart.get(str(product_id), 0) + 1

    # set the cart in a cookie
    response = HttpResponseRedirect(reverse('cart'))
    response.set_cookie('cart', cart)
    return response

@login_required(login_url="login")    
def cart(request):
    cart = request.COOKIES.get('cart', '')

    # retrieve the product objects for the items in the cart
    cart_dic = eval(cart)
    cart_items = []
    total_price = 0
    total_quanlity = 0
    if cart_dic:
        for keys in cart_dic:
            product = get_object_or_404(Foot, pk=keys)
            if product.p_discount == True:
                price = int(product.p_special_price) * int(cart_dic[keys])
                total_price += int(price)
                total_quanlity += int(cart_dic[keys])
            else:
                price = product.p_price * int(cart_dic[keys])
                total_quanlity += int(cart_dic[keys])
                total_price += price
            cart_items.append({
                "product":product,
                "quanlity":cart_dic[keys],
                "price":price,
            })
    # render the cart template with the cart items and total price
    context = {
        'cart_items': cart_items,
        'total_price': total_price,
        'total_quanlity':total_quanlity,
    }
    return render(request, 'app_jsy3b/cart.html', context)

def remove_cart(request, product_id):
    cart = request.COOKIES.get("cart")

    cart_dic = eval(cart)
    for i in cart_dic:
        if i == product_id:
            del cart_dic[i]
            break
    cart_str = json.dumps(cart_dic)

    responde = HttpResponseRedirect(reverse('cart'))
    responde.set_cookie('cart',cart_str)

    return responde

def cart_increment(request, product_id):
    cart = request.COOKIES.get("cart")

    cart_dic = eval(cart)
    for i in cart_dic:
        if i == str(product_id):
            cart_dic[i] += 1
            break

    cart_str = json.dumps(cart_dic)
    responde = HttpResponseRedirect(reverse('cart'))
    responde.set_cookie('cart', cart_str)
    return responde

def cart_decrement(request, product_id):
    cart = request.COOKIES.get("cart")
    cart_dic = eval(cart)
    responde = HttpResponseRedirect(reverse('cart'))
    if len(cart_dic) > 1:
        for i in cart_dic:
            if cart_dic[i] > 1:
                if i == str(product_id):
                    cart_dic[i] -= 1
                    cart_str = json.dumps(cart_dic)
                    responde.set_cookie('cart', cart_str)
            else:
                del cart_dic[product_id]
                cart_str = json.dumps(cart_dic)
                responde.set_cookie('cart', cart_str)
                break
    else:
        if cart_dic[product_id] > 1:
            for i in cart_dic:
                if i == str(product_id):
                    cart_dic[product_id] -= 1
                    cart_str = json.dumps(cart_dic)
                    responde.set_cookie('cart', cart_str)
                    break
        else:
            del cart_dic[product_id]
            cart_str = json.dumps(cart_dic)
            responde.set_cookie('cart', cart_str)

    return responde

def cart_clear(request):
    cart = request.COOKIES.get('cart')
    cart_dic = eval(cart)
    cart_dic.clear()
    cart_str = json.dumps(cart_dic)
    responde = HttpResponseRedirect(reverse('index'))
    responde.set_cookie('cart', cart_str)
    return responde

@login_required(login_url="login")
def jk(request):
    time.sleep(5)
    return HttpResponseRedirect(reverse('Clear'))

def report(request):
    return render(request, "app_jsy3b/report.html")

