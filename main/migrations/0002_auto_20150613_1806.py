# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tags',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=50, verbose_name='Name')),
                ('display_name', models.CharField(max_length=50, verbose_name='Name')),
                ('eng_name', models.CharField(max_length=50, verbose_name='Name')),
            ],
        ),
        migrations.AddField(
            model_name='enterprise',
            name='tags',
            field=models.ManyToManyField(related_name='enterprise', to='main.Tags'),
        ),
    ]
