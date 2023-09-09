global.urlSet=resultHttp

if gotResult=true and state=0
{
	spr=sprite_add(import_url, 0, false, false, 0, 0);
	state=1	
}
