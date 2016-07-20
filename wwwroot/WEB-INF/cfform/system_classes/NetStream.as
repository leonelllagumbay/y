//****************************************************************************
// ActionScript Standard Library
// NetStream object
//****************************************************************************

intrinsic class NetStream
{
	function NetStream(connection:NetConnection);
	function onResult(streamId:Number);
	function onStatus(info:Object):Void;
	function publish(name:Object, type:String):Void;
	function play(name:Object, start:Number, len:Number, reset:Object);
	function receiveAudio(flag:Boolean):Void;
	function receiveVideo(flag:Object):Void;
	function pause(flag:Boolean):Void;
	function seek(offset:Number):Void;
	function close():Void;
	function attachAudio(theMicrophone:Microphone):Void;
	function attachVideo(theCamera:Camera,snapshotMilliseconds:Number):Void;
	function send(handlerName:String):Void;
	function setBufferTime(bufferTime:Number);
	
	var time:Number;
	var currentFps:Number;
	var bufferTime:Number;
	var bufferLength:Number;
	var liveDelay:Number;
	var bytesLoaded:Number;
	var bytesTotal:Number;
}


