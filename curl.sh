curl -X GET http://localhost:8080/job/job -u $1:$2 -o tempconfig.xml
curl -X POST http://localhost:8080/job/createItem?name=job1 -u $1:$2 -H 'contentType:application/xml' --data tempconfig.xml