function scrAnimatronicManager(){

switch (identity) {
    case anima.blank:
        debugColor=c_white
		name="blank"
        break;
    case anima.birne:
        debugColor=c_lime
		name="birne"
		scrBirneAI();
        break;
    case anima.zitrone:
        debugColor=c_yellow
		name="zitrone"
		scrZitroneAI();
        break;
    case anima.kirsche:
        debugColor=c_purple
		name="kirsche"
		scrKirscheAI();
        break;
    case anima.coco:
        debugColor=c_maroon
		name="coco"
		scrCocoAI();
        break;
    default:
        show_message("Error setting the identity to a oAnimatronic object")
        break;
}

}

function scrMoveAnimatronic(who, where){
	
	who.x=where.x + where.image_xscale/2
	who.y=where.y + where.image_yscale/2
	
}

function scrHourCalculator(){
if progress<eachHour*1
{
currentHour=1
}

if progress>eachHour*1 and progress<eachHour*2
{
currentHour=2
}

if progress>eachHour*2 and progress<eachHour*3
{
currentHour=3
}

if progress>eachHour*3 and progress<eachHour*4
{
currentHour=4
}

if progress>eachHour*4 and progress<eachHour*5
{
currentHour=5
}

if progress>eachHour*5 and progress<eachHour*6
{
currentHour=6
}	
}