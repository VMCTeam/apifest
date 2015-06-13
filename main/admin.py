# -*- coding: utf-8 -*-
from django.contrib import admin
from main.models import Tag, Enterprise, Region, Comuna, Provincia


class TagAdmin(admin.ModelAdmin):
    list_display = ('name', 'eng_name', 'display_name')

class EnterpriseAdmin(admin.ModelAdmin):
    list_display = ('name', 'comuna', 'name', 'web')

admin.site.register(Tag, TagAdmin)
admin.site.register(Enterprise, EnterpriseAdmin)
