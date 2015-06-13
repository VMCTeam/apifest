# -*- coding: utf-8 -*-
from django.contrib import admin
from main.models import Tag, Enterprise, Region, Comuna, Provincia


class TagAdmin(admin.ModelAdmin):
    list_display = ('name', 'eng_name', 'display_name')

admin.site.register(Tag, TagAdmin)
