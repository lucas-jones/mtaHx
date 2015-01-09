package mta;

import mta.Element;

@:native("ColShape") @dotpath
extern class ColShape
{
	public function getElementsWithin(?type:String):Array<Element>;
	public function isElementWithin(element:Element):Bool;

	public static function Circle(x:Float, y:Float, radius:Float):ColShape;
	public static function Rectangle(x:Float, y:Float, width:Float, height:Float):ColShape;
	public static function Cuboid(x:Float, y:Float, z:Float, width:Float, depth:Float, height:Float):ColShape;
	public static function Sphere(x:Float, y:Float, z:Float, radius:Float):ColShape;
	public static function Tube(x:Float, y:Float, z:Float, radius:Float, height:Float):ColShape;
	
	//TODO add this when rest arguments get supported by haxe in a non development build
	//See issue: https://github.com/HaxeFoundation/haxe/issues/3238
	//public static function Polygon(points:haxe.Rest<Float>):ColShape;
}