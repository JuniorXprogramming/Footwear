# Generated by Django 4.1.7 on 2023-02-28 14:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("app_jsy3b", "0006_foot_p_stock"),
    ]

    operations = [
        migrations.AlterField(
            model_name="foot",
            name="p_special_price",
            field=models.CharField(max_length=255, null=True),
        ),
    ]
