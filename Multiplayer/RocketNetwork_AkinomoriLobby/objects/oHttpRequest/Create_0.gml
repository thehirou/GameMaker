import_url=""
global.yourIp="null"

var url="https://api64.ipify.org/?format=json"
var map=ds_map_create();
http_request(url,"GET",map,"")

