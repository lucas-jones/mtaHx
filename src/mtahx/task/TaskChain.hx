package mtahx.task;

using Type;

class TaskChain extends AbstractTask<Void>
{
	var tasks:Array<ITask<Dynamic>>;
	var currentTaskIndex:Int;
	
	public function new(tasks:Array<ITask<Dynamic>>)
	{
		super();
		this.tasks = tasks;
	}

	override function runTask():Void
	{
		currentTaskIndex = 0;
		subExecute(currentTaskIndex);
	}
	
	function subExecute(taskIndex:Int):Void
	{
		if (taskIndex < tasks.length) {
			var currentTask:ITask<Dynamic> = tasks[taskIndex];
			
			currentTask.execute(handleSubTaskResult, handleSubTaskFault);
		} else {
			notifyResult();
		}
	}
	
	function handleSubTaskResult(data:Dynamic):Void
	{
		subExecute(++currentTaskIndex);
	}
	
	function handleSubTaskFault(data:Dynamic):Void
	{
		notifyFault(null, data);
	}

	override public function destroy():Void
	{
		super.destroy();
		for (task in tasks) task.destroy();
		tasks = null;
	}
}