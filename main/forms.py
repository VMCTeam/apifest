# -*- coding: utf-8 -*-
from django import forms
from main.models import Comuna, Region
from django.utils.translation import ugettext_lazy as _

avail_sports = (
            ('', ''),
        )

class SearchForm(forms.Form):
    regions = Region.objects.all()
    comunas = Comuna.objects.all()

    region = forms.ModelChoiceField(label=_('Region'), queryset=(regions),
                             widget=forms.Select(attrs={'class': 'selector'}))
    comuna = forms.ModelChoiceField(label=_('Comuna'), queryset=(comunas),
                             widget=forms.Select(attrs={'class': 'selector'}))
    activity = forms.ChoiceField(label=_('Activity'), choices=avail_sports,
                            widget=forms.Select(attrs={'class': 'selector'}))