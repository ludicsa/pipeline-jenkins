FROM python:3.8.10-alpine

WORKDIR / 

COPY /app/requirements.txt .

COPY /app/server.py .

COPY /app/services.py .

RUN pip install -r requirements.txt

EXPOSE 8080

ENV FLASK_ENV development

CMD [ "python3", "server.py" ]
