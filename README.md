# councilmatic-stack

The goal of this project is to get the imago project, scraper-us-municipal project, and councilmatic-starter-template all working together.

## Requirements

1. Install docker an docker-compose if you do not have them installed
2. Clone this project into the the folder `scrapers` in this project: https://github.com/datamade/scrapers-us-municipal.

## Initializing

1. Run `docker-compose up` to start the database and scrapers containers.  Keep this terminal window running.
2. Run the initial migration `docker-compose exec scrapers pupa dbinit us`

## Running the scrapers

1. Ensure the containers are running: `docker-compose up`.
2. `docker-compose exec scrapers /bin/bash` (ssh's into the scrapers project)
3. `pupa update sacramento` (runs the update script)

## Resources:

Docker stuff: https://docs.docker.com/compose/django/#create-a-django-project

Open civic data api: https://github.com/opencivicdata/imago

Scrapers US Municipal: https://github.com/opencivicdata/scrapers-us-municipal/pull/243

Councilmatic: https://github.com/datamade/councilmatic-starter-template,
