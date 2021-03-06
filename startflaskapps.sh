#!/bin/bash
# clean up existing apps
killall flask;
# python app1a
export FLASK_APP=/path/to/flaskapp1.py; 
flask run --port=8090 >/dev/null 2>&1 &
ps -elf | grep "8090";

# python app2a
export FLASK_APP=/path/to/flaskapp2.py; 
flask run --port=8091 >/dev/null 2>&1 &
ps -elf | grep "8091"

# python app1b
export FLASK_APP=/path/to/flaskapp3.py;
flask run --port=9090 >/dev/null 2>&1 &
ps -elf | grep "9090";

# python app2b
export FLASK_APP=/path/to/flaskapp4.py;
flask run --port=9091 >/dev/null 2>&1 &
ps -elf | grep "9091"
