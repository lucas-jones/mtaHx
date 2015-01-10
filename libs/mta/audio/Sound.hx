package mta.audio;

@:native("Sound") @dotpath
extern class Sound 
{
	public static function create(soundPath:String, looped:Bool = false):Sound;

	public var volume:Float;
	public var speed:Float;
	public function getBPM():Int;
}