//6899 EVERYTIME YOU CHANGE VERSION CHANGE IT HERE
global.jsonBlacklist=""


var url="https://apfelproject.com/apfelonline/blacklist.json"
var map=ds_map_create();
http_request(url,"GET",map,"")

