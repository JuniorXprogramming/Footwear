from django.db import models

# Create your models here.
class Foot(models.Model):
    p_name = models.CharField(max_length=255)
    p_image = models.CharField(max_length=255)
    p_price = models.IntegerField()
    p_descripe = models.TextField(max_length=512)
    p_discount = models.BooleanField(default=False)
    p_end_discount = models.DateField(null=True)
    p_special_price = models.CharField(max_length=255, default=0)
    p_type = models.CharField(max_length=10,null=True)
    p_stock = models.CharField(max_length=10, default=0)