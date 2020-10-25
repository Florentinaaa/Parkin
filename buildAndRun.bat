@echo off
call mvn clean package
call docker build -t com.park/Parkinglot .
call docker rm -f Parkinglot
call docker run -d -p 9080:9080 -p 9443:9443 --name Parkinglot com.park/Parkinglot