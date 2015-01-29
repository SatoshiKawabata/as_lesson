package strategy
{
	import rps.Config;
	
	/**
	 * 勝ったら次も同じ手を出します
	 * @author kawabatasatoshi
	 * 
	 */	
	public final class WinningStrategy implements IStrategy
	{
		private var _isWin:Boolean;
		private var _currentHand:int;
		public function WinningStrategy()
		{
			_isWin = false;
		}
		
		public function nextHand():int
		{
			if (_isWin == false)
				_currentHand = Config.getRandomHand();
			return _currentHand;
		}
		
		public function study(result:String):void
		{
			_isWin = result == Config.WIN;
		}
	}
}