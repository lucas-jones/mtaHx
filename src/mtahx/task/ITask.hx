package mtahx.task;

interface ITask<T>
{
	function execute(?resultCallback:T -> Void, ?faultCallback:Dynamic -> Void):Void;
	function executeVoid(?resultCallback:Void -> Void, ?faultCallback:Dynamic -> Void):Void;
	function destroy():Void;
}
