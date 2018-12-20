FROM python:3
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get -y install libgdal-dev

RUN adduser pupa
USER pupa

ENV CPLUS_INCLUDE_PATH=/usr/include/gdal
ENV C_INCLUDE_PATH=/usr/include/gdal

COPY ./scrapers /home/pupa

WORKDIR /home/pupa
RUN pip install --user -r requirements.txt

ENV PATH="$PATH:/home/pupa/.local/bin"

ENV DATABASE_URL=postgresql://postgresql/opencivicdata

RUN touch blah

CMD ["tail", "-f", "blah"]
