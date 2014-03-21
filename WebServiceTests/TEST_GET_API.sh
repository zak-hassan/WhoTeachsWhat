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
    url="$scheme://$host:$port/$application/$prefix/$i"
    status=$(curl --write-out %{http_code} $url --silent --output /dev/null)

    echo "GET Request: $url "
    echo "Status : $status "
    
    curl -XGET "$url" |json
done

