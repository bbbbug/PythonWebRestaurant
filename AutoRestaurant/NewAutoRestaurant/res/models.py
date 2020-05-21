from django.db import models
# Create your models here.
class foodtype(models.Model):
    typename = models.CharField(max_length=512, default='')
    foodnum=models.IntegerField(max_length=11)

class food (models.Model):
    ftype=models.CharField(max_length=512)
    foodname=models.CharField(max_length=512)
    foodprice=models.FloatField(max_length=30)
    foodpicture=models.ImageField(upload_to='img')
    fooddescribe=models.CharField(max_length=256,default='')
    fooddiscount=models.FloatField(max_length=30)
    foodstatus = models.IntegerField(max_length=11, default=0)
    food_type=models.ForeignKey(foodtype,on_delete=models.CASCADE,default='')


class table(models.Model):
    tablepersonNum=models.IntegerField(default=10)
    tableflag=models.IntegerField(max_length=11,default='0')
    tabledescription=models.CharField(max_length=128,default='可容纳10人')

class customer(models.Model):
    cname = models.CharField(max_length=30,null=True)
    ctel = models.CharField(max_length=30,null=True)
    cage = models.IntegerField(null=True)
    csex = models.IntegerField(null=True)
    birthday=models.DateField(null=True)
    password=models.CharField(max_length=512,default='admin')
    cpicture=models.CharField(max_length=512,default='')
    cperference=models.CharField(max_length=512,default='')
    registerdate=models.DateTimeField()


class order (models.Model):
    order_customer=models.ForeignKey(customer,on_delete=models.CASCADE,default='')
    order_table =models.ForeignKey(table,on_delete=models.CASCADE,default='')
    ordercreatetime = models.DateTimeField()
    orderfinishtime=models.DateTimeField()
    orderremark = models.CharField(max_length=512, default='')
    orderpersonNum=models.IntegerField(max_length=11,default=0)
    orderassess=models.CharField(max_length=512,default='')
    orderstatus=models.IntegerField(max_length=11)
    orderprices=models.FloatField()
    orderallfoodnum=models.IntegerField(max_length=11)


class orderfood(models.Model):
    orderfood_food=models.ForeignKey(food,on_delete=models.CASCADE)
    orderfood_order=models.ForeignKey(order,on_delete=models.CASCADE)
    foodNum=models.IntegerField(default=1)
    status=models.IntegerField(max_length=11)


class cart(models.Model):
    orderid=models.ForeignKey(order,on_delete=models.CASCADE)
    orderfoodname=models.CharField(max_length=512)
    orderfoodtype=models.CharField(max_length=512)
    orderfoodnum=models.IntegerField(max_length=11)
    orderfoodprice=models.FloatField()
    orderfooddiscount=models.FloatField()
    orderfoodstatus=models.IntegerField(max_length=11)

class job(models.Model):
    jname=models.CharField(max_length=512)
    jbasesalary=models.FloatField()

class employee (models.Model):
    ename=models.CharField(max_length=512)
    epassword=models.CharField(max_length=512,default='admin')
    esex=models.IntegerField(max_length=11)
    email=models.CharField(max_length=512)
    address=models.CharField(max_length=512,default='')
    contract=models.CharField(max_length=512)
    employee_job=models.ForeignKey(job,on_delete=models.CASCADE)

class salary(models.Model):
    performance=models.FloatField()
    tablenum=models.IntegerField(max_length=11)
    totalsalary=models.FloatField()
    serverevaluate=models.CharField(max_length=512)
    salary_employee = models.ForeignKey(employee,on_delete=models.CASCADE)

