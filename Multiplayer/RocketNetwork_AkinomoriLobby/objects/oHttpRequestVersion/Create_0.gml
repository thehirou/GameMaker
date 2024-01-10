//6899 EVERYTIME YOU CHANGE VERSION CHANGE IT HERE
global.version="Release 1.0.9.3"
versionReal=1.093
global.updateName="'Apfel Online'"
global.legal="© 2023 TheHirou.com"

receivedVersion=999999
manageFromJson=""
reasonClosed=""
import_url=""
match="Checking version..."
olderversion="Checking version..."
_string="Checking version..."

var url="https://apfelproject.com/apfelonline/version.json"
var map=ds_map_create();
http_request(url,"GET",map,"")

