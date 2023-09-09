if ds_map_find_value(async_load, "id") == get
{
if ds_map_find_value(async_load, "status") == 0
    {
    r_str = ds_map_find_value(async_load, "result");
	resultHttp=r_str
	
	var file=resultHttp
	jsonOutput=json_parse(file);
	
	import_url=jsonOutput[$ "banana"];
	
	gotResult=true
    }
else
    {
    r_str = "null";
    }
}