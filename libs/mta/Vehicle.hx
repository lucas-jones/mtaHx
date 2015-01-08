package mta;

import mta.math.Vector3;

@:native("Vehicle") @dotpath
extern class Vehicle extends Element
{
	public var damageProof:Bool;
	public var locked:Bool;
	public var derailable:Bool; //train only
	public var derailed:Bool; //train only
	public var blown:Bool;
	public var direction:Bool; //train only
	public var speed:Float; //train only 
	public var taxiLightOn:Bool;
	public var fuelTankExplodable:Bool;
	public var plateText:String;
	public var sirensOn:Bool;
	public var sirenParams(default, never):Dynamic;
	public var controller(default, never):Player;
	public var engineState:Bool; //true = started
	public var paintJob:Int;
	public var occupants(default, never):Map<Int,Player>; //seat number to player
	public var compatibleUpgrades(default, never):Array<Int>;
	public var doorsUndamageable(never, default):Bool;
	public var towingVehicle(default, never):Vehicle;
	public var towedByVehicle(default, never):Vehicle;
	public var landingGearDown:Bool;
	public var maxPassengers(default, never):Int;
	public var upgrades(default, never):Array<Int>;

	public var name(default, never):String;
	public var vehicleType(default, never):String;

	public function setColor(r1:Int, g1:Int, b1:Int, ?r2:Int, ?g2:Int, ?b2:Int, ?r3:Int, ?g3:Int, ?b3:Int, ?r4:Int, ?g4:Int, ?b4:Int):Bool;
	public function setHeadLightColor(r:Int, g:Int, b:Int):Bool;

	public static inline function create(modelId:Int, position:Vector3, ?rotation:Vector3, ?numberPlate:String, direction:Bool = false, ?varient1:Int, ?varient2:Int):Vehicle
	{
		if(rotation == null) rotation = Vector3.create();
		return untyped __call__("Vehicle", modelId, position, rotation, numberPlate, direction, varient1, varient2);
	}
}