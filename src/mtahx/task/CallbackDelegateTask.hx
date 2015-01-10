package mtahx.task;

class CallbackDelegateTask<T> extends AbstractTask<T>
{
	var task:ITask<T>;

	var onResultCallback:T -> Void;
	var onFaultCallback:Dynamic -> Void;

	public function new(task:ITask<T>, onResultCallback:T -> Void, ?onFaultCallback:Dynamic -> Void)
	{
		super();
		this.task = task;
		this.onResultCallback = onResultCallback;
		this.onFaultCallback = onFaultCallback;
	}

	override function runTask():Void
	{
		task.execute(resultHandler, faultHandler);
	}

	function resultHandler(data:T):Void
	{
		onResultCallback(data);
		notifyResult(null, data);
	}

	function faultHandler(data:T):Void
	{
		onFaultCallback(data);
		notifyFault(null, data);
	}

	@:generic
	public static function createVoid<T>(task:ITask<T>, onResult:Void -> Void, onFault:Dynamic -> Void):CallbackDelegateTask<T>
	{
		return new CallbackDelegateTask<T>(
			task,
			function(data:T):Void {onResult(); onResult = null;},
			onFault
		);
	}

	override public function destroy():Void
	{
		super.destroy();
		task.destroy();
		task = null;
	}
}
