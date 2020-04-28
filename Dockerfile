FROM python:alpine3.7
COPY . /service

WORKDIR /service
RUN pip install -e .

ENV FLASK_APP=microservice_package
ENV FLASK_ENV=development

# To expose the app to localhost (127.0.0.1) outside the container
# we must use the ip-addr of 0.0.0.0 inside the container.
EXPOSE 5000
CMD flask run --host 0.0.0.0
