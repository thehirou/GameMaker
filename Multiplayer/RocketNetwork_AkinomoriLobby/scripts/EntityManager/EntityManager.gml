function EntityManager(){
	
var E = json_parse(entities)
var oldKeys = variable_struct_get_names(oldE);

var keys = variable_struct_get_names(E);

//DELETE OLD ENTITIES
for(var i =0 ; i<array_length(oldKeys) ;i++){

	if(!array_contains(keys , oldKeys[i])){
		try{
			with(oOtherPlayersEntity){
				if(entityId == real(oldKeys[i])){
					instance_destroy(id)
				}
			}
		}
	}
}






for (var i = array_length(keys)-1; i >= 0; --i) {
    var thisEntityId = keys[i];
	//old versions

		//new versions
		var thisEntity = variable_struct_get(E , thisEntityId)
		var thisEntityProperties = thisEntity
		
	
	
	var found = false;
	with(oOtherPlayersEntity){
		if(entityId == real(thisEntityId)){
		//found entities belonging to this player
		found = true;
		//show_message(typeof(thisEntityProperties))
		show_debug_message("this e p is")
		show_debug_message(thisEntityProperties)
		entityProperties = thisEntityProperties
		
		}
	}
	
	
	if(!found){
		show_debug_message("creating a new entity")
		var new_entity = instance_create_layer(global.RNetSpawnPoints[1][0],global.RNetSpawnPoints[1][1],
		global.OtherPlayerEntityLayerName,oOtherPlayersEntity);
		new_entity.clientId = real(clientId);
		new_entity.entityId = real(thisEntityId)
		new_entity.entityProperties = thisEntityProperties
		
	}
	
}





oldE = E

}