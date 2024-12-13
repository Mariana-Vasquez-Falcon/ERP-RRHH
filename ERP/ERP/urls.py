"""
URL configuration for ERP project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
# ERP/urls.py

from django.contrib import admin
from django.urls import path
from RRHH.views import *

from RRHH.views import list_job_positions


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', login, name='log'),
    path('index/', index, name='ini'),
    path('employees/', list_employees, name='list_employees'),
    path('job_position/', list_job_positions, name='job_position_list'),  
    path('payment_dates/', list_payment_dates, name='list_payment_dates'),
    path('salary_histories/', list_salary_histories, name='list_salary_histories'),
    path('vacations/', list_vacations, name='list_vacations'),
    path('departments/', list_departments, name='department_list'),
]

