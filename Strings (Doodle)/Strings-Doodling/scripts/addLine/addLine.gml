function addLine(){
	
state++;
global.lineTrailX[state]=x
global.lineTrailY[state]=y

instance_create_depth(0,0,depth,oLineDraw)

}