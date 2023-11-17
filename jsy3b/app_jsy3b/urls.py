from django.urls import path,include
from django.contrib import admin

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path("productMen", views.checkdate, name="productMen"),
    path("product/<int:p_id>", views.product, name="product"),
    path("productFemale", views.checkdate, name="productFemale"),
    path("", include("django.contrib.auth.urls")),
    path("sale", views.checkdate, name="sale"),
    path('admin/', admin.site.urls),
    path('register', views.register, name="register"),
    path('AddtoCart/<str:product_id>', views.add_to_cart, name="AddToCart"),
    path('cart', views.cart, name="cart"),
    path('removeCart/<str:product_id>', views.remove_cart, name="removeCart"),
    path('increment/<str:product_id>', views.cart_increment, name="Increment"),
    path('decrement/<str:product_id>', views.cart_decrement, name="Decrement"),
    path('cartClear', views.cart_clear, name="Clear"),
    path('justkidding', views.jk, name="Verify-payment"),
    path('Report', views.report, name="report")
]