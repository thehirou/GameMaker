global.highScore=0
loadSaveOnce=true

answer="0"
drawTitle=false

onlyonce=true

audio_play_sound(Hirougana,999,true)

musicOnlyOnce=false

animAlpha=4
downAlpha=false

xQuestionNara=0
naraDown=false

change=0
alreadyUsed=false
selectText="SELECT MODE"

global.inLevel=false

timerShake=0
speedShake=2

question="A"

debug=false

prompt1=0
prompt2=0
prompt3=0

once=true
done=true

yAnimation=0

place1=0
place2=0
place3=0

yCamShakeCorrectPos=0
ignoreLast=false
stopThis=false

onceAgain=true


font = font_add(working_directory + "ARIALUNI.OTF", 200, false, false, 12288  , 12543);
font2 = font_add(working_directory + "ARIALUNI.OTF", 40, false, false, 12288  , 12543);
fontKey = font_add(working_directory + "ARIALUNI.OTF", 65, true, false, 12288  , 12543);




//CAMERA SHAKE
shake = false;
shakeCorrect = false;
shake_time = 0;
shake_magnitude = 0;
shake_fade = 0.25;