if image_index>=image_number-1
{
	oBattleManager.timer[5]=9999; //this is very poorly done but hey, it works, this just accelerates the timer so if the animation ended before the timer did, skip it
	instance_destroy(self);
}