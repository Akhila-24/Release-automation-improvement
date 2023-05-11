set -e
curl -X GET http://localhost:8080/job/job/config.xml -u $1:$2 -o tempconfig.xml
cat tempconfig.xml
curl -X POST --fail http://localhost:8080/createItem?name=job1 -u $1:$2 --data-binary @tempconfig.xml -H "Content-Type:text/xml"
curl -X POST http://localhost:8080/createItem?name=job2 -u $1:$2 --data-binary @tempconfig.xml -H "Content-Type:text/xml"