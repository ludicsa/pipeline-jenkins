FROM python:3.8.10-alpine

WORKDIR / 

COPY /app/requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 8080

ENV FLASK_ENV development

COPY server.py .

COPY services.py .

CMD [ "python3", "server.py" ]
