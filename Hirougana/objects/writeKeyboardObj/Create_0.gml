stringDraw=""
keyboardMode=false
init=false
init2=true
deleteString=false
timer=0
warning=false

/// Create Event
minimum = -0.25
maximum = 0.5
period = 0.3; // one second period

midpoint = mean(minimum, maximum); // get midway point between the min and max
amplitude = maximum - midpoint; // get a peak height to find amplitude
wave = -0.5; // start this as whatever