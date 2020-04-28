FROM python:alpine3.7
COPY . /service

WORKDIR /service
RUN pip install -e .

ENV FLASK_APP=python_microservice_package
ENV FLASK_ENV=development

EXPOSE 5000
CMD flask run --host 0.0.0.0
