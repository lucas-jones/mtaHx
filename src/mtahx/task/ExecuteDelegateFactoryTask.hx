package mtahx.task;

/**
 * Task which allows another task to be instanciated, via a function callback, at a later time and then executed.
 * This is useful for task chains where constructor arguments for a task might not be available until an earlier
 * task in the chain has been executed.
 */
class ExecuteDelegateFactoryTask<T> extends AbstractTask<T>
{
	public var factoryFunction(default, null):Void -> ITask<T>;

	var task:ITask<T>;

	public function new(factoryFunction:Void -> ITask<T>)
	{
		super();

		this.factoryFunction = factoryFunction;
	}

	override function runTask():Void
	{
		try {
			task = factoryFunction();
			task.execute(onResult, notifyFault.bind(null, _));
		} catch (e:Dynamic) {
			notifyFault(null, e);
			throw e;
		}
	}

	function onResult(data:T):Void
	{
		notifyResult(null, data);
	}

	override public function destroy():Void
	{
		super.destroy();
		factoryFunction = null;
		if (task != null) task.destroy();
		task = null;
	}
}