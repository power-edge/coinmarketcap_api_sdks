# start from Python 3.x base image
FROM python:3.8-alpine

#RUN #apt-get update \
#    && apt-get upgrade -y

COPY . /var/opt/coinmarketcap_py_sdk

WORKDIR /var/opt/coinmarketcap_py_sdk

RUN python setup.py install


##creating packages directory and Authentication Directory
#RUN mkdir packages \
#    && mkdir auth

##Installing pypi server and pass lib module for authentication
#RUN python3 -m pip install pypiserver passlib
#
#COPY ./docker_entry.sh /pypi-server
#
##Making the entrypoint file executable
#RUN chmod +rx ./docker_entry.sh
#
#ENTRYPOINT ["/pypi-server/docker_entry.sh"]
#
#EXPOSE 80
