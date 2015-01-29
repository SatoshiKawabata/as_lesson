package strategy
{
	public interface IStrategy
	{
		function nextHand():int;
		function study(result:String):void;
	}
}