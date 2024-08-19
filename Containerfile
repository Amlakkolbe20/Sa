FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN sa create-db
RUN sa populate-db
RUN sa add-user -u admin -p admin
EXPOSE 5000
CMD ["sa", "run"]
