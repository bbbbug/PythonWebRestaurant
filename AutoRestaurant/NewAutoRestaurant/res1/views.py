from django.shortcuts import render
from res import models
from django.shortcuts import HttpResponse
from django.http import HttpResponseRedirect
# Create your views here.
class switch(object):
  def __init__(self, value):
    self.value = value
    self.fall = False
  def __iter__(self):
    """Return the match method once, then stop"""
    yield self.match
    raise StopIteration
  def match(self, *args):
    """Indicate whether or not to enter a case suite"""
    if self.fall or not args:
      return True
    elif self.value in args:
      self.fall = True
      return True
    else:
      return False

class orderFunction(object):
    def statusid_change_statusname(oid):
        '''
        作用：将订单状态编号转换成状态名
        oid:订单状态编号
        :return: 订单状态
        '''
        for case in switch(oid):
            if case(0):
                name='未处理'
                break
            if case(1):
                name='处理中'
                break
            if case(2):
                name='已处理'
                break
            if case():
                name = ''
        return name
    def find_customer(cid):
        '''
        作用：通过订单上的cid，查询到相应的顾客
        cid:顾客id
        :return: 顾客信息
        '''
        customer=models.customer.objects.get(id=cid)
        return customer
    def find_food(ofid):
        '''
        作用:通过订单表的ofid，查询到对应的餐品
        ofid:餐品外键
        :return: 订单中的餐品
        '''
        food=models.food.objects.get(id=ofid)
        print(food.foodname)
        return food


def show_order(request):
    '''
    作用：查询出所有订单
    :param request:
    :return: 订单集合
    '''
    orderlist=models.order.objects.all()
    '''for order in orderlist:
        #status=orderFunction.statusid_change_statusname(0)
        customer=orderFunction.find_customer(order.order_customer_id)
        order.order_customer_id=customer.cname
    '''
    print(orderlist)
    return render(request, "order/order.html",{"orderlist":orderlist})

def new_order(request):
    '''
    作用：创建订单
    :param request:
    :return:
    '''
    concat = request.POST
    print(concat)
    foodlist=[]
    orderid=''
    obj=''
    for key in concat:
        if key=="tableid":
            tableid=concat[key]
            obj=models.order.objects.create(order_table_id=tableid, orderstatus=0)
            models.table.objects.get(id=tableid).update(tableflag=1)
        foodlist.append(concat[key])
    for foodid in foodlist:
        models.orderfood.objects.create(foodNum=1, status=0, orderfood_food_id=foodid,orderfood_order_id=obj.id)
    return render(request, "order/order.html",)

def detail_order(request):
    '''
    作用：查看订单详情
    :param request:
    :return: 订单详情餐品
    '''
    oid = request.GET.get('oid')
    orderfoods=models.orderfood.objects.filter(orderfood_order_id=oid)
    order=models.order.objects.get(id=oid)
    print(order.orderremark)
    for orderfood in orderfoods:
        print(orderfood.orderfood_food_id)
        food=orderFunction.find_food(orderfood.orderfood_food_id)
        orderfood.orderfood_food_id=food.foodname
    return render(request, "order/orderDetail.html",{"orderfoods":orderfoods,"order":order})

def order_action(request):
    '''
    作用：查看订单详情
    :param request:
    :return: 订单详情餐品
    '''
    oid = request.GET.get('orderid')
    foodname=request.GET.get("foodname")
    food=models.food.objects.get(foodname=foodname)
    return render(request, "order/orderAction.html",{"foodInfo":food,"oid":oid})

def order_del(request):
    '''
    作用：查看订单详情
    :param request:
    :return: 订单详情餐品
    '''
    oid = request.GET.get('oid')
    fid=request.GET.get('fid')
    models.orderfood.objects.filter(orderfood_food_id=fid,orderfood_order_id=oid).delete()
    return HttpResponseRedirect('/order/')


'''
def user_info(request):
    return render(request, "user_info.html",)

def login_out(request):
    return render(request,"login.html",)

def login(request):
    uname=request.POST['uname']
    upwd=request.POST['upwd']
    userInfo=models.user.objects.filter(uname=uname,upassword=upwd)
    if userInfo == None:
        return render(request, "login.html", )
    else:
        return render(request, "index.html", {"userInfo":userInfo})

'''
