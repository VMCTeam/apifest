# -*- coding: utf-8 -*-
from django.db import models
from django.utils.translation import ugettext_lazy as _

class Region(models.Model):
    name = models.CharField(_('Name'), max_length=200)
    number = models.CharField(_('Number'), max_length=200)
    cut = models.CharField(_('CUT'), max_length=200, blank=True, null=True)
    created = models.DateTimeField(_('Created'), auto_now_add=True,
                                                 editable=False)
    updated = models.DateTimeField(_('Updated'), auto_now=True)

    def __unicode__(self):
        return self.name

    class Meta:
        verbose_name = _("Region")
        verbose_name_plural = _("Region")


class Provincia(models.Model):
    name = models.CharField(_('Name'), max_length=200)
    region = models.ForeignKey(Region, related_name='provincia')
    cut = models.CharField(_('CUT'), max_length=200, blank=True, null=True)
    created = models.DateTimeField(_('Created'), auto_now_add=True,
                                                 editable=False)
    updated = models.DateTimeField(_('Updated'), auto_now=True)

    def __unicode__(self):
        return self.name

    class Meta:
        verbose_name = _("Provincia")
        verbose_name_plural = _("Provincia")


class Comuna(models.Model):
    name = models.CharField(_('Name'), max_length=200)
    provincia = models.ForeignKey(Provincia, related_name='comuna')
    cut = models.CharField(_('CUT'), max_length=200, blank=True, null=True)
    created = models.DateTimeField(_('Created'), auto_now_add=True,
                                                 editable=False)
    updated = models.DateTimeField(_('Updated'), auto_now=True)

    def __unicode__(self):
        return self.name

    class Meta:
        verbose_name = _("Comuna")
        verbose_name_plural = _("Comuna")
        ordering = ['name']

    def get_by_region(self, regionid):
        """
        Retorna todas las comunas dentro de una región.
        """
        try:
            region = Region.objects.get(id=int(regionid))
            comunas = Comuna.objects.filter(provincia__region=region)
            return comunas
        except:
            return None


class Tag(models.Model):
    name = models.CharField(_('Name'), max_length=50, null=False, blank=False)
    display_name = models.CharField(_('Name'), max_length=50, null=False,
                                               blank=False)
    eng_name = models.CharField(_('Name'), max_length=50, null=False,
                                               blank=False)

    def __unicode__(self):
        return self.display_name


class Enterprise(models.Model):
    comuna = models.ForeignKey(Comuna, related_name="enterprises")
    origin = models.CharField(_('Name'), max_length=50, null=False,
                    blank=False)
    destiny = models.CharField(_('Name'), max_length=50, null=False,
                    blank=False)
    name = models.CharField(_('Name'), max_length=50, null=False, blank=False)
    address_name = models.CharField(_('StreetName'), max_length=100, blank=True,
                                                 null=True)
    address_number = models.CharField(_('AddressNumber'), max_length=10,
                                                 blank=True, null=True)
    address_extras = models.CharField(_('StreetName'), max_length=100, blank=True,
                                                 null=True)
    web = models.URLField(_('Web'), max_length=100, null=True, blank=True)
    services = models.CharField(_('Service'), max_length=400)
    available = models.BooleanField(_('Available'), default=True)
    phone = models.CharField(_('Phone'), max_length=20, blank=True, null=True)
    tags = models.ManyToManyField(Tag, related_name="enterprise")

    def __unicode__(self):
        return self.name