get = http_get("https://thehirou.com/projects/akinomori-engine/data.json");

spr = sprPlaceholder

jsonOutput=undefined

resultHttp=sprPlaceholder

global.urlSet="disabled"

r_str = "null";

gotResult=false
drawImage=false
image=0
imageVar =	sprite_add(resultHttp,0,0,0,0,0)
timer=0
onceIsCool=true

state=0