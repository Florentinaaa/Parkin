#!/bin/sh
mvn clean package && docker build -t com.park/Parkinglot .
docker rm -f Parkinglot || true && docker run -d -p 9080:9080 -p 9443:9443 --name Parkinglot com.park/Parkinglot