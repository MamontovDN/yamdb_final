#!/bin/bash -x

python manage.py migrate --noinput || exit 1
python manage.py collectstatic --no-input
python manage.py loaddata fixtures.json
exec "$@"

