
function callback_ReceivedMessage(theMessage , senderClientId){
	//show_message("You got a message : "+theMessage+" from "+string(senderClientId))
array_insert(global.chat,0,theMessage)
oManager.arrayChanged=true
}