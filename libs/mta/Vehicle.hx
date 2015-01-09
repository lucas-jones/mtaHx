package mta;

import mta.math.Vector2;
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
	public var turretPosition:Vector2;
	public var turnVelocity:Vector3;
	public var overrideLights:Int; // 0 - default, 1 - always off, 2 - always on
	public var idleRespawnDelay(never, default):Int;
	public var respawnDelay(never, default):Int;
	public var respawnPosition(never, default):Vector3;
	public var onGround(default, never):Bool;
	public var name(default, never):String;
	public var vehicleType(default, never):String;
	public var sirens(default, never):Array<Dynamic>;
	public var handling(default, never):Map<String, Dynamic>;
	public var occupant(default, never):Player;

	public function setVehicleDoorState(door:Int, state:Int):Bool;
	public function fix():Bool;
	public function blow():Bool;
	public function respawn():Bool;
	public function toggleRespawn(value:Bool):Bool;
	public function spawn(position:Vector3, ?rotation:Vector3):Bool;

	public function setColor(r1:Int, g1:Int, b1:Int, ?r2:Int, ?g2:Int, ?b2:Int, ?r3:Int, ?g3:Int, ?b3:Int, ?r4:Int, ?g4:Int, ?b4:Int):Bool;
	public function setHeadLightColor(r:Int, g:Int, b:Int):Bool;

	public static function create(modelId:Int, position:Vector3, ?rotation:Vector3, ?numberPlate:String, direction:Bool = false, ?varient1:Int, ?varient2:Int):Vehicle;
}