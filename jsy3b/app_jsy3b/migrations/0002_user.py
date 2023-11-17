# Generated by Django 4.1.7 on 2023-02-26 09:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("app_jsy3b", "0001_initial"),
    ]

    operations = [
        migrations.CreateModel(
            name="user",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("u_name", models.CharField(max_length=20, unique=True)),
                ("u_pass", models.CharField(max_length=20)),
                ("u_number", models.CharField(max_length=10)),
                ("u_email", models.EmailField(max_length=255)),
                ("u_type", models.CharField(max_length=50)),
            ],
        ),
    ]
