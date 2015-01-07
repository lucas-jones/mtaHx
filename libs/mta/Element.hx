//https://code.google.com/p/mtasa-blue/source/browse/trunk/MTA10_Server/mods/deathmatch/logic/luadefs/CLuaElementDefs.cpp
//https://code.google.com/p/mtasa-blue/source/browse/trunk/MTA10_Server/mods/deathmatch/logic/lua/CLuaMain.cpp#336

package mta;

import mta.math.Matrix;
import mta.math.Vector3;

@:native("_G") @dotpath
extern class Element
{
	public var alpha:Int;//0-255
	public var colshape(default, never):ColShape;
	public var dimension:Int;
	public var health:Float;
	public var id:String;
	public var isElement(default, never):Bool;
	public var interior:Int;
	public var lowlod(default, never):Element;
	public var model:Int;
	public var parent:Element;
	public var rotation:Vector3; //x,y,z
	public var syncer:Element;
	public var type:String;
	public var velocity:Vector3; //x,y,z
	public var attachedTo:Element;
	public var attatchedElements(default, never):Array<Element>;
	public var doubleSided:Bool;
	public var frozen:Bool;
	public var inWater(default, never):Bool;
	public var matrix:Matrix;
	public var collisions:Bool;//Collisions enabled
	public var waitingForGroundToLoad:Bool;
	public var zoneName:String;
	public var callPropagationEnabled:Bool;

	public function areCollisionsEnabled():Bool;
	public function attach(otherElement:Element, ?position:Vector3, ?rotation:Vector3):Bool;
	public function clearVisibility():Bool;
	public function clone(?x:Float, ?y:Float, ?z:Float, ?cloneChildren:Bool):Element;
	public function destroy():Bool;
	public function detach(?otherAttatchedElement:Element):Bool;
	public static function getAllByType(type:String, ?startAt:Element, ?streamedIn:Bool):Array<Element>; //type must be a string e.g "Vehicle"
	public function getAllData():Map<String, Dynamic>; //??
	public function getAttachedOffsets():Array<Float>;
	public static function getByID(id:String, ?index:Int):Element;
	public static function getByIndex(type:String, index:Int):Element;
	public function getChild(index:Int):Element;
	public function getChildren(?type:String):Array<Element>;
	public function getChildrenCount():Int;
	public function getColShape():ColShape;
	public function getData(key:String, ?inherit:Bool):Dynamic; //??
	public function getZoneName(?citiesOnly:Bool = false):String;
	public function isCallPropagationEnabled():Bool;
	public function isLowLOD():Bool;
	public function isVisibleTo(element:Element):Bool;
	public function isWithinColShape(shape:ColShape):Bool;
	public function isWithinMarker(marker:Marker):Bool;
	public function removeData(key:String):Bool;
	public function setAttachedOffsets(?position:Vector3, ?rotation:Vector3):Bool;
	public function setData(key:String, value:Dynamic, ?syncronise:Bool = true):Bool;
}