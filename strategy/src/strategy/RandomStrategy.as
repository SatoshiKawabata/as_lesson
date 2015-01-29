package strategy
{
	import rps.Config;
	
	/**
	 * ランダムに手を出します
	 * @author kawabatasatoshi
	 * 
	 */	
	public final class RandomStrategy implements IStrategy
	{
		public function RandomStrategy()
		{
		}
		
		public function nextHand():int
		{
			return Config.getRandomHand();
		}
		
		public function study(result:String):void
		{
			// 何も学習しない
		}
	}
}