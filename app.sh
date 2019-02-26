#
# app.sh
#
# This script will be run by OpenShift's launcher.
#
# OpenShift's default port is 8080. Either you need to change the port that
# Jupyter runs on, or you need to change the port in the OpenShift settings.
# This is the easier of the two solutions.
#
jupyter notebook --no-browser --ip=0.0.0.0 --port=8080
