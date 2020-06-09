while true; do
json='{"_time": "__time__", "remote_addr": "x.x.x.x", "host": "www.example.com", "remote_user": "", "status": "200", "server_protocol": "HTTP/1.1", "request_method": "GET", "request_uri": "/", "request": "GET / HTTP/1.1", "body_bytes_sent": "0", "request_time": "0.000", "upstream_response_time": "", "http_referer": "", "http_user_agent": "hogegege", "http_x_forwarded_for": "x.x.x.x", "http_x_forwarded_proto": "http", "severity": "INFO" }'

echo json=$(echo $json| sed -e "s/__time__/$(date +'%Y-%m-%d %H:%M:%S')/") | curl -X POST http://docker.for.mac.host.internal:9880/app.log -d @-
sleep 1
done
