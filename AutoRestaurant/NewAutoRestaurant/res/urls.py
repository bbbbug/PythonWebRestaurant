from django.conf.urls import url
from res import views

urlpatterns = [
    url(r'^$', views.show_food),
    url(r'term$', views.show_termfood),
    url(r'detail$', views.detail_food),
]