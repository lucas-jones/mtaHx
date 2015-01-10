package mtahx.task;

/**
 * Task which simply calls a given function.  The result signal will contain the return value of the function.
 */
class InstantFunctionCallTask<T> extends AbstractTask<T>
{
	public var targetFunction(default, null):Void -> T;
	public var taskName(default, null):String;
	
	/**
	 * Instanicates a new FunctionCallTask
	 * 
	 * @param	targetFunction Function to call when the task is executed
	 * @param	?taskName Optional task name which will be used in the debug log
	 */
	public function new(targetFunction:Void -> T, ?taskName:String)
	{
		super();
		
		this.targetFunction = targetFunction;
		this.taskName = taskName;
	}
	
	override function runTask():Void 
	{
		var returnData = targetFunction();
		
		notifyResult(taskName, returnData);
	}

	override public function destroy():Void
	{
		super.destroy();
		targetFunction = null;
		taskName = null;
	}
}