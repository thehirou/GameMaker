function scr_save() {
	if(file_exists("Save.sav")) file_delete("Save.sav");
	ini_open("Save.sav");
	
	ini_write_real("Save1","highScore",global.highScore);

	ini_close();
}


function scr_load() {
	if (file_exists("Save.sav"))
	{
		ini_open("Save.sav");
		
		global.highScore=ini_read_real("Save1","highScore",-5);
	
		ini_close();
	}	

}
