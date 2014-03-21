#!/bin/bash
# Developer: Zakeria Hassan
# Date: Mar. 21, 2014
# make sure to run NPM install json

scheme="http"
host="localhost"
port="8080"
application="WhoteachswhatJPA"
prefix="api"
array=( CurriculumSemester ResponsibilityToFaculty account comphour course courseinsemester evalfactor faculty facultyToCourseInSemesterYear permission preptime program responsibility semester )
for i in "${array[@]}"
do
    echo "TESTING: $scheme://$host:$port/$application/$prefix/$i"
    curl -XGET "$scheme://$host:$port/$application/$prefix/$i" |json
done

