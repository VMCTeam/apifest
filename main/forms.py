# -*- coding: utf-8 -*-
from django import forms
from main.models import Comuna, Region, Tag
from django.utils.translation import ugettext_lazy as _


class SearchForm(forms.Form):
    regions = Region.objects.all()
    comunas = Comuna.objects.all()
    tags = Tag.objects.all()

    region = forms.ModelChoiceField(label=_('Region'), queryset=(regions),
                             widget=forms.Select(attrs={'class': 'selector'}))
    comuna = forms.ModelChoiceField(label=_('Comuna'), queryset=(comunas),
                             widget=forms.Select(attrs={'class': 'selector'}))
    activity = forms.ModelChoiceField(label=_('Activity'), queryset=(tags),
                            widget=forms.Select(attrs={'class': 'selector'}))