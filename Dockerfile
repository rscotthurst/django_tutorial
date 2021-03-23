FROM python:3.8
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
RUN python manage.py makemigrations
RUN python manage.py migrate
# python manage.py runserver 0.0.0.0:8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]