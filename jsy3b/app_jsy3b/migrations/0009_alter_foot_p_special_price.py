# Generated by Django 4.1.7 on 2023-02-28 14:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("app_jsy3b", "0008_alter_foot_p_stock"),
    ]

    operations = [
        migrations.AlterField(
            model_name="foot",
            name="p_special_price",
            field=models.CharField(default=0, max_length=255),
        ),
    ]
