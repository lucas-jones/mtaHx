package mta;

@:native("_G") @dotpath
extern class GUI
{
	public static function guiCreateWindow(x:Float, y:Float, width:Float, height:Float, title:String, relative:Bool):Void;
}