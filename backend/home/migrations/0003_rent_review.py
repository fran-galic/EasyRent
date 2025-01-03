# Generated by Django 5.1.3 on 2025-01-03 13:43

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0002_remove_vehicle_insured_remove_vehicle_yearofcreation_and_more'),
        ('src', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Rent',
            fields=[
                ('rent_id', models.AutoField(primary_key=True, serialize=False)),
                ('dateTimeRented', models.DateTimeField()),
                ('dateTimeReturned', models.DateTimeField(blank=True, default=None, null=True)),
                ('price', models.DecimalField(decimal_places=2, max_digits=10)),
                ('rentoid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='src.rentoid')),
                ('vehicle', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.vehicle')),
            ],
        ),
        migrations.CreateModel(
            name='Review',
            fields=[
                ('review_id', models.AutoField(primary_key=True, serialize=False)),
                ('rating', models.SmallIntegerField(blank=True, default=None, null=True)),
                ('description', models.TextField(blank=True, default='')),
                ('reviewDate', models.DateField(blank=True, default=None, null=True)),
                ('rent', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.rent')),
            ],
        ),
    ]
