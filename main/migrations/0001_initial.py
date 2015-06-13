# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Comuna',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=200, verbose_name='Name')),
                ('cut', models.CharField(max_length=200, null=True, verbose_name='CUT', blank=True)),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Updated')),
            ],
            options={
                'ordering': ['name'],
                'verbose_name': 'Comuna',
                'verbose_name_plural': 'Comuna',
            },
        ),
        migrations.CreateModel(
            name='Enterprise',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('origin', models.CharField(max_length=50, verbose_name='Name')),
                ('destiny', models.CharField(max_length=50, verbose_name='Name')),
                ('name', models.CharField(max_length=50, verbose_name='Name')),
                ('address_name', models.CharField(max_length=100, null=True, verbose_name='StreetName', blank=True)),
                ('address_number', models.CharField(max_length=10, null=True, verbose_name='AddressNumber', blank=True)),
                ('address_extras', models.CharField(max_length=100, null=True, verbose_name='StreetName', blank=True)),
                ('web', models.URLField(max_length=100, null=True, verbose_name='Web', blank=True)),
                ('services', models.CharField(max_length=400, verbose_name='Service')),
                ('available', models.BooleanField(default=True, verbose_name='Available')),
                ('phone', models.CharField(max_length=20, null=True, verbose_name='Phone', blank=True)),
                ('comuna', models.ForeignKey(related_name='enterprises', to='main.Comuna')),
            ],
        ),
        migrations.CreateModel(
            name='Provincia',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=200, verbose_name='Name')),
                ('cut', models.CharField(max_length=200, null=True, verbose_name='CUT', blank=True)),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Updated')),
            ],
            options={
                'verbose_name': 'Provincia',
                'verbose_name_plural': 'Provincia',
            },
        ),
        migrations.CreateModel(
            name='Region',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=200, verbose_name='Name')),
                ('number', models.CharField(max_length=200, verbose_name='Number')),
                ('cut', models.CharField(max_length=200, null=True, verbose_name='CUT', blank=True)),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Updated')),
            ],
            options={
                'verbose_name': 'Region',
                'verbose_name_plural': 'Region',
            },
        ),
        migrations.AddField(
            model_name='provincia',
            name='region',
            field=models.ForeignKey(related_name='provincia', to='main.Region'),
        ),
        migrations.AddField(
            model_name='comuna',
            name='provincia',
            field=models.ForeignKey(related_name='comuna', to='main.Provincia'),
        ),
    ]
