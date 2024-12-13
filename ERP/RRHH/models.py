from django.db import models

# Create your models here.

class Department(models.Model):
    pk_int = models.AutoField(primary_key=True)  # Para coincidir con la columna pk_int de MySQL
    department_name = models.CharField(max_length=100, unique=True)
    description = models.TextField(null=True, blank=True)

    class Meta:
        db_table = 'department'  # Nombre de la tabla en la base de datos

    def __str__(self):
        return self.department_name

class JobPosition(models.Model):
    pk_int = models.AutoField(primary_key=True)
    job_position_name = models.CharField(max_length=100, unique=True)
    description = models.TextField(null=True, blank=True)
    fk_department = models.ForeignKey(
        'Department',
        on_delete=models.CASCADE,
        db_column='fk_department'  # Cambia aquí para el nombre de columna deseado
    )

    class Meta:
        db_table = 'job_position'

    def __str__(self):
        return self.job_position_name

class Employee(models.Model):
    pk_int = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    address = models.CharField(max_length=255, blank=True, null=True)
    email = models.EmailField(max_length=100)
    phone_number = models.CharField(max_length=20, blank=True, null=True)
    hire_date = models.DateField(auto_now_add=True)
    dni = models.CharField(max_length=50, unique=True)
    fk_position = models.ForeignKey(JobPosition, on_delete=models.CASCADE)
    fk_salary_history = models.ForeignKey('SalaryHistory', on_delete=models.SET_NULL, null=True, blank=True)
    status = models.CharField(max_length=20, choices=[('ACTIVE', 'Active'), ('ON_VACATION', 'On Vacation'), ('INACTIVE', 'Inactive')], default='ACTIVE')

    class Meta:
        db_table = 'employee'

    def __str__(self):
        return f"{self.first_name} {self.last_name}"

class SalaryHistory(models.Model):
    pk_int = models.AutoField(primary_key=True)
    fk_employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    change_date = models.DateField(auto_now_add=True)
    previous_salary = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    current_salary = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        db_table = 'salary_history'

class PaymentDate(models.Model):
    pk_int = models.AutoField(primary_key=True)
    fk_employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    fk_salary_history = models.ForeignKey(SalaryHistory, on_delete=models.CASCADE)
    scheduled_date = models.DateField()
    payment_date = models.DateField(auto_now_add=True)
    payment_status = models.CharField(max_length=20, choices=[('ADVANCE', 'Advance'), ('ON_TIME', 'On Time'), ('DELAYED', 'Delayed')], default='ON_TIME')

    class Meta:
        db_table = 'payment_date'

class Vacation(models.Model):
    pk_int = models.AutoField(primary_key=True)
    fk_employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    request_date = models.DateField(auto_now_add=True)
    start_date = models.DateField()
    end_date = models.DateField()
    management_status = models.CharField(max_length=20, choices=[('PENDING', 'Pending'), ('REJECTED', 'Rejected'), ('APPROVED', 'Approved')], default='PENDING')

    class Meta:
        db_table = 'vacation'

class User(models.Model):
    pk_int = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    phone_number = models.CharField(max_length=20, blank=True, null=True)
    dni = models.CharField(max_length=50, unique=True)
    password = models.CharField(max_length=255)

    class Meta:
        db_table = 'user'