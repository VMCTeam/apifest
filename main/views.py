# -*- coding: utf-8 -*-
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from django.views.generic import FormView
from django.utils.decorators import method_decorator
from django.utils.translation import ugettext_lazy as _
from django.core.urlresolvers import reverse
import traceback
from main.forms import SearchForm


class SearchView(FormView):
    """
    Vista para buscar por región, comuna, tipo de deporte.
    """
    template_name = 'index.html'
    title = _('MyProfile')
    form_class = SearchForm

    def dispatch(self, request):
        return super(SearchView, self).dispatch(request=request)

    def get(self, request):
        """
        Si existe una instancia de perfil, muestra la vista de edición. De lo
        contrario, muestra la vista de creación.
        """
        data = {'view_title': self.title, 'form': self.form_class}
        return render(request, self.template_name, data)

    def post(self, request):
        data = {'view_title': self.title}
        return render(request, self.template_name, data)

searchView = SearchView.as_view()