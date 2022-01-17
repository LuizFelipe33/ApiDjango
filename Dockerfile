FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requiriment.txt .
RUN pip install -r requiriment.txt

COPY . .
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]