# Generated by Django 5.1.3 on 2024-11-12 20:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_alter_modeltype_modeltypename_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='offer',
            name='picturePath',
        ),
        migrations.AddField(
            model_name='offer',
            name='image',
            field=models.BinaryField(default=b''),
        ),
    ]
