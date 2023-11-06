function scrAnimatronicManager(){

switch (identity) {
    case anima.blank:
        image_blend=c_white
		name="blank"
        break;
    case anima.birne:
        image_blend=c_lime
		name="birne"
        break;
    case anima.zitrone:
        image_blend=c_yellow
		name="zitrone"
        break;
    case anima.kirsche:
        image_blend=c_purple
		name="kirsche"
        break;
    case anima.coco:
        image_blend=c_maroon
		name="coco"
        break;
    default:
        show_message("Error setting the identity to a oAnimatronic object")
        break;
}

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