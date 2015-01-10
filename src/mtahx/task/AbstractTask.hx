package mtahx.task;

import com.dubitlimited.engine.error.AbstractFunctionError;

using Type;

class AbstractTask<T> implements ITask<T>
{
	var destroyed:Bool;

	// Timestamp when task started execution
	var timeStarted:Float;

	var resultCallback:T -> Void;
	var faultCallback:Dynamic -> Void;

	private function new()
	{
		destroyed = false;
	}
	
	/**
	 * Executes the task.
	 * Passing listener functions allows much cleaner usage of a task API:  new Task().execute(resultHandler, faultHandler)
	 *
	 * @param	?resultCallback Function to call when the task has executed
	 * @param	?faultCallback Function to call if the task errors during execution
	 */
	public function execute(?resultCallback:T->Void, ?faultCallback:Dynamic->Void):Void
	{
		if (destroyed) throw "Trying to execute destroyed task";

		this.resultCallback = resultCallback;
		this.faultCallback = faultCallback;

		timeStarted = Date.now().getTime();
		
		try {
			runTask();
		} catch (error:Dynamic) {
			notifyFault(error, "Task execution failed: " + error);
			throw error;
		}
	}
	
	/**
	 * Utility function which acts the same as "execute" but which allows the "resultCallback" function to take no
	 * arguments
	 *
	 * @param	?resultCallback
	 * @param	?faultCallback
	 */
	public function executeVoid(?resultCallback:Void->Void, ?faultCallback:Dynamic->Void):Void
	{
		execute(function(data:T):Void
		{
			if(resultCallback != null) resultCallback();
			resultCallback = null;
		}, faultCallback);
	}
	
	function runTask():Void
	{
		throw new AbstractFunctionError("runTask", AbstractTask);
	}
	
	function notifyResult(?message:String, ?data:T):Void
	{
		Console.debug(formatLogMessage(message));
		if (resultCallback != null) resultCallback(data);
		resultCallback = null;
		faultCallback = null;
	}
	
	function notifyFault(?message:String, ?data:Dynamic):Void
	{
		Console.warn(formatLogMessage(message));
		if (faultCallback != null) faultCallback(data);
		resultCallback = null;
		faultCallback = null;
	}
	
	function formatLogMessage(?message:String):String
	{
		var now = Date.now().getTime();
		var logMessage = getClass().getClassName() + ' [${now - timeStarted}ms]';
		
		if (message != null) {
			logMessage += " - " + message;
		}
		
		return logMessage;
	}

	public function destroy():Void
	{
		if (destroyed) throw "Trying to destroy task second time";
		destroyed = true;
		resultCallback = null;
		faultCallback = null;
	}
}