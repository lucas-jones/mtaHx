package mtahx.task;

/**
 * Task chain which executes a list of tasks in parallel.  Only when all tasks have completed,
 * does the task chain complete.
 */
class ParallelTaskChain extends TaskChain
{
	var remainingTasks:Int;
	
	public function new(tasks:Array<ITask<Dynamic>>)
	{
		super(tasks);
	}
	
	override function runTask():Void
	{
		remainingTasks = tasks.length;
		
		for (i in 0...tasks.length) {
			subExecute(i);
		}
	}
	
	override function handleSubTaskResult(data:Dynamic):Void
	{
		remainingTasks--;
		
		if (remainingTasks == 0) {
			notifyResult();
		}
	}
}