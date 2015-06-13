# -*- coding: utf-8 -*-
import json
import requests
from django.conf import settings
from main.models import Enterprise, Comuna
from robobrowser import RoboBrowser

def downloadInfo():
    url = u'http://api.recursos.datos.gob.cl/datastreams/invoke/TURIS-' +\
        u'AVENT?auth_key=&(api_key)s&output=json_array' % \
        {'api_key': settings.API_KEY}

    response = requests.get(url)
    data = json.loads(response)
    table = data['result']
    for row in table:
        e = Enterprise()
        try:
            d_comuna = row[2]
            comuna = Comuna.objects.filter(name=d_comuna)
            if comuna.exists():
                comuna = comuna.first()
            e.comuna = comuna
        except:
            pass
        e.origin = row[3]
        e.destiny = row[4]
        e.name = row[5]
        e.address_name = row[6]
        e.address_number = row[7]
        e.address_extras = row[8]
        e.phone = row[9]
        e.web = row[10]

        found_tags = False
        #TODO: Acá debe parsear la info y buscar los tags

        if found_tags:
            e.save()

# [Utils: Crawler]
# @Return: List of Str or None
def metaData(url):
    # Variables:
    crawler     = RoboBrowser(history=True)
    endpoint    = "http://"+url 
    endpointSSL = "https://"+url 
    connFlag    = True
    metadata    = list()

    # Procedimientos:
    try:
        crawler.open(endpoint, verify=False)
    except:
        connFlag = False

    if not connFlag:
        try:
            crawler.open(endpointSSL, verify=False)
        except:
            return None
    
    metadata.append(crawler.select("meta"))
    return metadata
