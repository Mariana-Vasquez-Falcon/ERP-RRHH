import requests
from django.http import HttpResponse, JsonResponse
from django.template import loader
from django.shortcuts import render, redirect
from django.conf import settings  # Importa las configuraciones globales
from .models import Department, JobPosition, User
from django.contrib.auth import authenticate, login as auth_login
from django.contrib.auth.hashers import check_password

# Create your views here.

def index(request):    
    template = loader.get_template("index.html")
    return HttpResponse(template.render())

def login(request):
    if request.method=='POST':
        email = request.POST['email']
        password = request.POST['password']

        try:
            user=User.objects.get(email=email)
            if check_password(password, user.password):
                return render(request, 'index.html')
            else:
                return render(request, 'login.html', {'error':'Credenciales incorrectas.'})
        except User.DoesNotExist:
            return render(request, 'login.html',{'error': 'Credenciales incorrectas.'})
        
    return render (request, 'login.html')

def department(request):
    template = loader.get_template("department.html")
    return HttpResponse(template.render())

def employee(request):
    template = loader.get_template("employee.html")
    return HttpResponse(template.render())

def job_position(request):
    template = loader.get_template("job_position.html")
    return HttpResponse(template.render())

def payment_date(request):
    template = loader.get_template("payment_date.html")
    return HttpResponse(template.render())

def salary_history(request):
    template = loader.get_template("salary_history.html")
    return HttpResponse(template.render())

def vacation(request):
    template = loader.get_template("vacation.html")
    return HttpResponse(template.render())

# Vistas para obtener datos desde la API
def list_departments(request):
    try:
        response = requests.get(f"{settings.API_BASE_URL}/departments/all")
        response.raise_for_status()
        departments = response.json()
        return render(request, 'department.html', {'departments': departments})
    except requests.exceptions.RequestException as e:
        return JsonResponse({'error': 'Error al conectarse con el servicio de departamentos'}, status=500)

def list_job_positions(request):
    try:
        response = requests.get(f"{settings.API_BASE_URL}/jobPositions/all")
        response.raise_for_status()
        job_positions = response.json()
        return render(request, 'job_position.html', {'job_positions': job_positions})
    except requests.exceptions.RequestException as e:
        return JsonResponse({'error': 'Error al conectarse con el servicio de puestos de trabajo'}, status=500)

def list_employees(request):
    try:
        response = requests.get(f"{settings.API_BASE_URL}/employees/all")
        response.raise_for_status()
        employees = response.json()
        return render(request, 'employee.html', {'employees': employees})
    except requests.exceptions.RequestException as e:
        return JsonResponse({'error': f'Error al conectar con el servicio de empleados: {str(e)}'}, status=500)

def list_salary_histories(request):
    try:
        response = requests.get(f"{settings.API_BASE_URL}/salaryHistories/all")
        response.raise_for_status()
        salary_histories = response.json()
        return render(request, 'salary_history.html', {'salary_histories': salary_histories})
    except requests.exceptions.RequestException as e:
        return JsonResponse({'error': f'Error al conectar con el servicio de historial de salarios: {str(e)}'}, status=500)

def list_payment_dates(request):
    try:
        response = requests.get(f"{settings.API_BASE_URL}/paymentDates/all")
        response.raise_for_status()
        payment_dates = response.json()
        return render(request, 'payment_date.html', {'payment_dates': payment_dates})
    except requests.exceptions.RequestException as e:
        return JsonResponse({'error': f'Error al conectar con el servicio de fechas de pago: {str(e)}'}, status=500)

def list_vacations(request):
    try:
        response = requests.get(f"{settings.API_BASE_URL}/vacations/all")
        response.raise_for_status()
        vacations = response.json()
        return render(request, 'vacation.html', {'vacations': vacations})
    except requests.exceptions.RequestException as e:
        return JsonResponse({'error': f'Error al conectar con el servicio de vacaciones: {str(e)}'}, status=500)
