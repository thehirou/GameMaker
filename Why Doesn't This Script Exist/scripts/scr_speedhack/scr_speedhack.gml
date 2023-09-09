/*

Script must be on step event or similar.

While you're pressing the key assigned in the key argument your room speed
will be whatever you put in the velocity argument, this will make your game go faster.
This is useful for playtesting.

!HIGH VELOCITY VALUES MIGHT MESS UP WITH THE GAME WHEN SPEEDHACKING!
A good value range is between 10 and 6000

Usually anything below 60 is slowmo.

The blue ball moving at the bottom is to check the room speed.

*/


function scr_speedhack(key,velocity){

if keyboard_check(key)
{
room_speed=velocity	
}else{room_speed=60} //CHANGE THIS TO WHATEVER YOUR NORMAL ROOM SPEED IS

}