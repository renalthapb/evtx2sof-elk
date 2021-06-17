curl -X PUT http://localhost:9200/hostlogs -H'Content-Type: application/json' -d '{
	"mappings": {
		"properties": {
			"Event.System.TimeCreated.@SystemTime": { 
				"type":"date"
			}
		}
	}
}'