from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class CustomUser(AbstractUser):
    profile_pic = models.ImageField(upload_to='media/profile_pic')


class AddVisitor(models.Model):
    
    category = models.CharField(max_length=150,default='True')
    fullname = models.CharField(max_length=200)
    email = models.CharField(max_length=150)
    mobilenumber = models.CharField(max_length=15)    
    apartmentno = models.CharField(max_length=150,default='True')
    floororwings = models.CharField(max_length=150,default='True')
    address = models.CharField(max_length=250)
    whomtomeet = models.CharField(max_length=250)
    reasontomeet = models.CharField(max_length=250)
    remark = models.CharField(max_length=250,default=0)
    status = models.CharField(default=0,max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

    def __str__(self):
        return  self.fullname
    
class VisitorPass(models.Model):
    category = models.CharField(max_length=150,default='True')
    visname = models.CharField(max_length=200)
    mobilenumber = models.CharField(max_length=150)
    address = models.CharField(max_length=15)    
    apartment = models.CharField(max_length=150,default='True')
    floor = models.CharField(max_length=150,default='True')
    inputdate = models.CharField(max_length=250)
    todate = models.CharField(max_length=250)
    passdescription = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

    def __str__(self):
        return  self.visname