function callback_ReadSimpleData(readId,data){
	
	//if data is -1, the read failed, The Document was not found!
	//check the location(collection + document name) onceagain
	if(data == -1){
		if debug_mode{show_message("failed read")}
		
		//First creation
		with(oPlayer)
		{
			var playerData=
			{
			type					:		"Player Database",
			_blacklisted			:		blacklisted,
			_latestLogin			:		latestLogin,
			_playerIp				:		myIp,
			latestName				:		thisUsername,
			}
			SetSimpleData("pdatabase",string(myIp),playerData)	
		}
	}
	
	//the document is a struct in the variable data
	if debug_mode
	{
	show_message("read id "+string(readId)+" : "+string(data))
	}
	
	if data.type="Player Database"
	{
		with(oPlayer)
		{	
			var playerData=
			{
			type					:		"Player Database",
			_blacklisted			:		blacklisted,
			_latestLogin			:		latestLogin,
			_playerIp				:		myIp,
			latestName				:		thisUsername,
			}
			SetSimpleData("pdatabase",string(myIp),playerData)	
		}
	}
	
	if data.type="Chat Log"
	{
	global.chat[00]=data.chatmsg00
	global.chat[01]=data.chatmsg01
	global.chat[02]=data.chatmsg02
	global.chat[03]=data.chatmsg03
	global.chat[04]=data.chatmsg04
	global.chat[05]=data.chatmsg05
	global.chat[06]=data.chatmsg06
	global.chat[07]=data.chatmsg07
	global.chat[08]=data.chatmsg08
	global.chat[09]=data.chatmsg09
	global.chat[10]=data.chatmsg10
	global.chat[11]=data.chatmsg11
	global.chat[12]=data.chatmsg12
	global.chat[13]=data.chatmsg13
	global.chat[14]=data.chatmsg14
	global.chat[15]=data.chatmsg15
	global.chat[16]=data.chatmsg16
	global.chat[17]=data.chatmsg17
	global.chat[18]=data.chatmsg18
	global.chat[19]=data.chatmsg19
	global.chat[20]=data.chatmsg20
	global.chat[21]=data.chatmsg21
	global.chat[22]=data.chatmsg22
	global.chat[23]=data.chatmsg23
	global.chat[24]=data.chatmsg24
	global.chat[25]=data.chatmsg25
	global.chat[26]=data.chatmsg26
	global.chat[27]=data.chatmsg27
	global.chat[28]=data.chatmsg28
	global.chat[29]=data.chatmsg29
	global.chat[30]=data.chatmsg30
	global.chat[31]=data.chatmsg31
	global.chat[32]=data.chatmsg32
	global.chat[33]=data.chatmsg33
	global.chat[34]=data.chatmsg34
	global.chat[35]=data.chatmsg35
	global.chat[36]=data.chatmsg36
	global.chat[37]=data.chatmsg37
	global.chat[38]=data.chatmsg38
	global.chat[39]=data.chatmsg39
	global.chat[40]=data.chatmsg40
	global.chat[41]=data.chatmsg41
	global.chat[42]=data.chatmsg42
	global.chat[43]=data.chatmsg43
	global.chat[44]=data.chatmsg44
	global.chat[45]=data.chatmsg45
	global.chat[46]=data.chatmsg46
	global.chat[47]=data.chatmsg47
	global.chat[48]=data.chatmsg48
	global.chat[49]=data.chatmsg49
	global.chat[50]=data.chatmsg50
	global.chat[51]=data.chatmsg51
	global.chat[52]=data.chatmsg52
	global.chat[53]=data.chatmsg53
	global.chat[54]=data.chatmsg54
	global.chat[55]=data.chatmsg55
	global.chat[56]=data.chatmsg56
	global.chat[57]=data.chatmsg57
	global.chat[58]=data.chatmsg58
	global.chat[59]=data.chatmsg59
	global.chat[60]=data.chatmsg60
	global.chat[61]=data.chatmsg61
	global.chat[62]=data.chatmsg62
	global.chat[63]=data.chatmsg63
	global.chat[64]=data.chatmsg64
	global.chat[65]=data.chatmsg65
	global.chat[66]=data.chatmsg66
	global.chat[67]=data.chatmsg67
	global.chat[68]=data.chatmsg68
	global.chat[69]=data.chatmsg69
	global.chat[70]=data.chatmsg70
	global.chat[71]=data.chatmsg71
	global.chat[72]=data.chatmsg72
	global.chat[73]=data.chatmsg73
	global.chat[74]=data.chatmsg74
	global.chat[75]=data.chatmsg75
	global.chat[76]=data.chatmsg76
	global.chat[77]=data.chatmsg77
	global.chat[78]=data.chatmsg78
	global.chat[79]=data.chatmsg79
	global.chat[80]=data.chatmsg80
	global.chat[81]=data.chatmsg81
	global.chat[82]=data.chatmsg82
	global.chat[83]=data.chatmsg83
	global.chat[84]=data.chatmsg84
	global.chat[85]=data.chatmsg85
	global.chat[86]=data.chatmsg86
	global.chat[87]=data.chatmsg87
	global.chat[88]=data.chatmsg88
	global.chat[89]=data.chatmsg89
	global.chat[90]=data.chatmsg90
	global.chat[91]=data.chatmsg91
	global.chat[92]=data.chatmsg92
	global.chat[93]=data.chatmsg93
	global.chat[94]=data.chatmsg94
	global.chat[95]=data.chatmsg95
	global.chat[96]=data.chatmsg96
	global.chat[97]=data.chatmsg97
	global.chat[98]=data.chatmsg98
	global.chat[99]=data.chatmsg99
	global.chat[100]=data.chatmsg100
	}


	//DATE, fix later, this shit gets confused when there are two different data structures at the same time
	//understandable tbh
	/*
	global.DATEchat[00]=data.DATEchatmsg00
	global.DATEchat[01]=data.DATEchatmsg01
	global.DATEchat[02]=data.DATEchatmsg02
	global.DATEchat[03]=data.DATEchatmsg03
	global.DATEchat[04]=data.DATEchatmsg04
	global.DATEchat[05]=data.DATEchatmsg05
	global.DATEchat[06]=data.DATEchatmsg06
	global.DATEchat[07]=data.DATEchatmsg07
	global.DATEchat[08]=data.DATEchatmsg08
	global.DATEchat[09]=data.DATEchatmsg09
	global.DATEchat[10]=data.DATEchatmsg10
	global.DATEchat[11]=data.DATEchatmsg11
	global.DATEchat[12]=data.DATEchatmsg12
	global.DATEchat[13]=data.DATEchatmsg13
	global.DATEchat[14]=data.DATEchatmsg14
	global.DATEchat[15]=data.DATEchatmsg15
	global.DATEchat[16]=data.DATEchatmsg16
	global.DATEchat[17]=data.DATEchatmsg17
	global.DATEchat[18]=data.DATEchatmsg18
	global.DATEchat[19]=data.DATEchatmsg19
	global.DATEchat[20]=data.DATEchatmsg20
	global.DATEchat[21]=data.DATEchatmsg21
	global.DATEchat[22]=data.DATEchatmsg22
	global.DATEchat[23]=data.DATEchatmsg23
	global.DATEchat[24]=data.DATEchatmsg24
	global.DATEchat[25]=data.DATEchatmsg25
	global.DATEchat[26]=data.DATEchatmsg26
	global.DATEchat[27]=data.DATEchatmsg27
	global.DATEchat[28]=data.DATEchatmsg28
	global.DATEchat[29]=data.DATEchatmsg29
	global.DATEchat[30]=data.DATEchatmsg30
	global.DATEchat[31]=data.DATEchatmsg31
	global.DATEchat[32]=data.DATEchatmsg32
	global.DATEchat[33]=data.DATEchatmsg33
	global.DATEchat[34]=data.DATEchatmsg34
	global.DATEchat[35]=data.DATEchatmsg35
	global.DATEchat[36]=data.DATEchatmsg36
	global.DATEchat[37]=data.DATEchatmsg37
	global.DATEchat[38]=data.DATEchatmsg38
	global.DATEchat[39]=data.DATEchatmsg39
	global.DATEchat[40]=data.DATEchatmsg40
	global.DATEchat[41]=data.DATEchatmsg41
	global.DATEchat[42]=data.DATEchatmsg42
	global.DATEchat[43]=data.DATEchatmsg43
	global.DATEchat[44]=data.DATEchatmsg44
	global.DATEchat[45]=data.DATEchatmsg45
	global.DATEchat[46]=data.DATEchatmsg46
	global.DATEchat[47]=data.DATEchatmsg47
	global.DATEchat[48]=data.DATEchatmsg48
	global.DATEchat[49]=data.DATEchatmsg49
	global.DATEchat[50]=data.DATEchatmsg50
	global.DATEchat[51]=data.DATEchatmsg51
	global.DATEchat[52]=data.DATEchatmsg52
	global.DATEchat[53]=data.DATEchatmsg53
	global.DATEchat[54]=data.DATEchatmsg54
	global.DATEchat[55]=data.DATEchatmsg55
	global.DATEchat[56]=data.DATEchatmsg56
	global.DATEchat[57]=data.DATEchatmsg57
	global.DATEchat[58]=data.DATEchatmsg58
	global.DATEchat[59]=data.DATEchatmsg59
	global.DATEchat[60]=data.DATEchatmsg60
	global.DATEchat[61]=data.DATEchatmsg61
	global.DATEchat[62]=data.DATEchatmsg62
	global.DATEchat[63]=data.DATEchatmsg63
	global.DATEchat[64]=data.DATEchatmsg64
	global.DATEchat[65]=data.DATEchatmsg65
	global.DATEchat[66]=data.DATEchatmsg66
	global.DATEchat[67]=data.DATEchatmsg67
	global.DATEchat[68]=data.DATEchatmsg68
	global.DATEchat[69]=data.DATEchatmsg69
	global.DATEchat[70]=data.DATEchatmsg70
	global.DATEchat[71]=data.DATEchatmsg71
	global.DATEchat[72]=data.DATEchatmsg72
	global.DATEchat[73]=data.DATEchatmsg73
	global.DATEchat[74]=data.DATEchatmsg74
	global.DATEchat[75]=data.DATEchatmsg75
	global.DATEchat[76]=data.DATEchatmsg76
	global.DATEchat[77]=data.DATEchatmsg77
	global.DATEchat[78]=data.DATEchatmsg78
	global.DATEchat[79]=data.DATEchatmsg79
	global.DATEchat[80]=data.DATEchatmsg80
	global.DATEchat[81]=data.DATEchatmsg81
	global.DATEchat[82]=data.DATEchatmsg82
	global.DATEchat[83]=data.DATEchatmsg83
	global.DATEchat[84]=data.DATEchatmsg84
	global.DATEchat[85]=data.DATEchatmsg85
	global.DATEchat[86]=data.DATEchatmsg86
	global.DATEchat[87]=data.DATEchatmsg87
	global.DATEchat[88]=data.DATEchatmsg88
	global.DATEchat[89]=data.DATEchatmsg89
	global.DATEchat[90]=data.DATEchatmsg90
	global.DATEchat[91]=data.DATEchatmsg91
	global.DATEchat[92]=data.DATEchatmsg92
	global.DATEchat[93]=data.DATEchatmsg93
	global.DATEchat[94]=data.DATEchatmsg94
	global.DATEchat[95]=data.DATEchatmsg95
	global.DATEchat[96]=data.DATEchatmsg96
	global.DATEchat[97]=data.DATEchatmsg97
	global.DATEchat[98]=data.DATEchatmsg98
	global.DATEchat[99]=data.DATEchatmsg99
	global.DATEchat[100]=data.DATEchatmsg100
	*/
}