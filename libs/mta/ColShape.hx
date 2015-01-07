package mta;

import mta.Element;

@:native("_G") @dotpath
extern class ColShape
{
	public static function Circle():ColShape;
	public static function Cuboid():ColShape;
	public function getElementsWithin(?type:String):Array<Element>;
	public function isElementWithin(element:Element):Bool;
	public static function Polygon():ColShape;
	public static function Rectangle():ColShape;
	public static function Sphere():ColShape;
	public static function Tube():ColShape;
}