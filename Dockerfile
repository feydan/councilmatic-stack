FROM python:3
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get -y install libgdal-dev

RUN adduser pupa
USER pupa

ENV CPLUS_INCLUDE_PATH=/usr/include/gdal
ENV C_INCLUDE_PATH=/usr/include/gdal

COPY --chown=pupa:pupa ./scrapers /home/pupa/scrapers

WORKDIR /home/pupa/scrapers
RUN pip install --user -r requirements.txt

ENV PATH="$PATH:/home/pupa/.local/bin"

ENV DATABASE_URL=postgresql://postgresql/opencivicdata
ENV DJANGO_SETTINGS_MODULE=pupa.settings

CMD ["tail", "-f", "requirements.txt"]
