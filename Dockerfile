FROM python:3
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get -y install libgdal-devel

RUN adduser pupa
USER pupa

RUN export CPLUS_INCLUDE_PATH=/usr/include/gdal
RUN export C_INCLUDE_PATH=/usr/include/gdal

RUN mkdir /code
COPY ./scrapers /code

WORKDIR /code
RUN pip install -r requirements.txt

RUN touch blah

CMD ["tail", "-f", "blah"]
