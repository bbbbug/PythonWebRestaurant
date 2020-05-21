from django.conf.urls import url
from res2 import views

urlpatterns = [
    url(r'^$', views.show_table),
    url(r'^term$', views.edit_table),
    url(r'^change', views.change_table),
    url(r'^food', views.show_food),
]