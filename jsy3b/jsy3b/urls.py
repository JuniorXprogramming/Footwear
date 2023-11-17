from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('', include('app_jsy3b.urls')),
    path('admin/', admin.site.urls),
]