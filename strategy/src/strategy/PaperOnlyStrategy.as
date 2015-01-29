package strategy
{
	import rps.Config;

	public final class PaperOnlyStrategy implements IStrategy
	{
		public function PaperOnlyStrategy()
		{
		}
		
		public function nextHand():int
		{
			return Config.PAPER;
		}
		
		public function study(result:String):void
		{
		}
	}
}