package mta;

import mta.math.Vector3;

@:native("Ped") @dotpath
extern class Ped extends Element
{
	public var inVehicle(default, never):Bool;
	public var ducked(default, never):Bool;
	public var onGround(default, never):Bool;
	public var onFire:Bool;
	public var choking:Bool;
	public var doingGangDriveby:Bool;
	public var headless:Bool;
	public var armor:Float;
	public var fightingStyle:Int;
	public var gravity:Float;
	public var weaponSlot:Int;
	public var ammoInClipOfCurrentWeaponSlot(default, never):Bool;
	public var target(default, never):Element;
	public var occupiedVehicleSeat(default, never):Int;
	public var contactElement(default, never):Element;
	public var totalAmmoInWeaponOfCurrentWeaponSlot(default, never):Int;
	public var vehicle:Vehicle;
	public var dead:Bool;
	public var walkingStyle:Int;

	public function addClothes(clothesTexture:String, clothesModel:String, clothesType:Int):Bool;
	public function doesHaveJetpack():Bool;
	public function getAmmoInClip():Bool;
	public function getAnalogControlState():Float;
	public function getClothes(clothesType:Int):Array<String>;
	public function getStat(stat:Int):Float;
	public function getTotalAmmo(?weaponSlot:Int):Int;
	public function getValidModels():Array<Int>;
	public function getWeapon(?weaponSlot:Int):Int;
	public function getWeaponSlot():Int;
	public function giveJetPack():Bool;
	public function kill():Bool;
	public function reloadWeapon():Bool;
	public function removeClothes(clothesType:Int, ?clothesTexture:String, ?clothesModel:String):Bool;
	public function removeFromVehicle():Bool;
	public function removeJetPack():Bool;
	public function setAnalogControlState(control:String, state:Float):Bool;
	public function setAnimation(?block:String, ?anim:String, ?time:Int, ?loop:Bool, ?updatePosition:Bool, ?interruptable:Bool, ?freezeLastFrame:Bool):Bool;
	public function setAnimationProgress(anim:String, progress:Float):Bool;
	public function setStat(stat:Int, value:Float):Bool;
	public function warpIntoVehicle(vehicle:Vehicle, ?seat:Int):Bool;

	public static function create(modelId:Int, position:Vector3, rotation:Float = 0, synced:Bool = true):Ped;
}