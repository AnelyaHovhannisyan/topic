FROM python:3.7.2

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN pip install --upgrade pip

EXPOSE 8001

CMD ["python", "manage.py", "runserver", "0:8001"]