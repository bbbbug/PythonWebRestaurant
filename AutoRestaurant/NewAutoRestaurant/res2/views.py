from django.shortcuts import render
from res import models
import json
from django.http import HttpResponse
# Create your views here.
def show_table(request):
    print("进入show_table")
    tablelist=models.table.objects.all()
    return render(request, "table/table.html",{"tablelist":tablelist},)

def change_table(request):
    print("进入change_table")
    tableid = int(request.GET.get('tableid'))
    print(tableid)
    obj=models.table.objects.get(id=tableid)
    obj.tableflag=2
    obj.save()
    tablelist=models.table.objects.all()
    return render(request, "table/table.html",{"tablelist":tablelist},)

def show_food(request):
    print("进入show_food")
    tableid = int(request.GET.get('tableid'))
    orders=models.order.objects.filter(order_table_id=tableid)

    orderlist=orders[0]
    return HttpResponse(json.dumps(orderlist))


def edit_table(request):
    tid = request.GET.get('flag')
    tablelist = models.table.objects.filter(tableflag=tid)
    tlist = []
    tables = []
    for i in range(len(tablelist)):
        if i % 4 == 0:
            if len(tables) != 0:
                tlist.append(tables)
            tables = []
        tables.append(tablelist[i])
    print(tlist)
    return render(request, "table/table.html", {"tlist": tlist}, )
