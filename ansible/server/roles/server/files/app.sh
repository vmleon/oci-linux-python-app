#!/bin/bash
# source /home/opc/pythonapp/venv/bin/activate
# FIXME failing miserably with systemd, it works with ./app.sh
/home/opc/pythonapp/venv/bin/gunicorn \
  --bind 0.0.0.0:3000 \
  -w 2 \
  --enable-stdio-inheritance \
  wsgi:app \
  2>&1 > /home/opc/pythonapp/app.log