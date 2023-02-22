FROM python:3.11
RUN apt-get update -y
RUN apt-get upgrade -y

WORKDIR /app

COPY ./requirements.txt ./
RUN pip install -r requirements.txt
COPY ./proj ./proj

CMD [ "python3", "./proj/manage.py", "runserver", "0.0.0.0:8000"]


