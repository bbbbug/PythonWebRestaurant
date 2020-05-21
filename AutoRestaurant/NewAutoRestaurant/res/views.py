from django.shortcuts import render

# Create your views here.

from django.shortcuts import render
from res import models
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
# Create your views here.
def show_food(request):
    '''
    作用：查询出所有的餐品
    :param request:
    :return: 餐品集合
    '''
    tablelist = models.table.objects.filter(tableflag=0)
    print(len(tablelist))
    menulist = models.food.objects.all()
    print(len(menulist))
    return render(request, "menu/menu.html", {"menulist":menulist,"tablelist":tablelist},)

def detail_food(request):
    '''
    作用：查询每个餐品的详情（价格、简介等）
    :param request:
    :return: 餐品详情
    '''
    fid = request.GET.get('fid')
    foodInfo = models.food.objects.get(id=fid)
    ftid = foodInfo.food_type_id
    print(ftid)
    for case in switch(ftid):
        if case(1):
            ftype='热菜'
            break
        if case(2):
            ftype='凉菜'
            break
        if case(3):
            ftype='主食'
            break
        if case(4):
            ftype='甜品'
            break
        if case(5):
            ftype='汤'
            break
        if case(6):
            ftype='开胃'
            break
        if case():
            ftype=''
    foodInfo.food_type_id=ftype
    return render(request, "menu/menuPre.html", {"foodInfo": foodInfo}, )

def show_termfood(request):
    print("进入show_termfood")
    ftid = request.GET.get('ftid')
    menulist=models.food.objects.filter(food_type_id=ftid)
    upmenulist = []
    downmenulist = []
    mlist = []
    print(len(menulist))
    for i in range(len(menulist)):
        if i % 2 == 0:
            upmenulist.append(menulist[i])
        else:
            downmenulist.append(menulist[i])
    mlist.append(upmenulist)
    mlist.append(downmenulist)
    return render(request, "menu/menu.html", {"mlist": mlist}, )

def index(request):
    return render(request,"index.html",)    #元组需加
