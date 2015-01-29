package strategy
{
	import rps.Config;
	
	public final class HistoryStrategy implements IStrategy
	{
		private var _history:Array;
		private var _prevHand:int;
		private var _currentHand:int;
		
		public function HistoryStrategy()
		{
			_currentHand = 0;
			_prevHand = 0;
			_history = [
				[0,0,0],
				[0,0,0],
				[0,0,0]
			];
		}
		
		public function nextHand():int
		{
			var hand:int = Config.getRandomHand();
			var max:int = -1;
			for (var i:int = 0, len:int = _history.length; i < len; i++)
			{
				for (var j:int = 0, len2:int = _history[i].length; j < len2; j++)
				{
					if (max < _history[i][j])
					{
						hand = j;
						max = _history[i][j];
					}
				}
			}
			_prevHand = _currentHand;
			_currentHand = hand;
			return _currentHand;
		}
		
		public function study(result:String):void
		{
			if (result == Config.WIN)
				_history[_prevHand][_currentHand]++;
			else if (result == Config.LOSE)
				_history[_prevHand][Config.getWinHand(_currentHand)]++;
			else if (result == Config.EVEN)
				_history[_prevHand][Config.getWinHand(_currentHand)]++;
		}
	}
}