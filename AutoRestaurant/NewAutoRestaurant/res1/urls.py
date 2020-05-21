from django.conf.urls import url
from res1 import views
urlpatterns = [
    url(r'^$', views.show_order),
    url(r'detail', views.detail_order),
    url(r'new', views.new_order),
    url(r'act',views.order_action),
    url(r'del',views.order_del),
]
