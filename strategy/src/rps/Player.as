package rps
{
	import strategy.IStrategy;

	/**
	 * じゃんけんのプレイヤー
	 * @author kawabatasatoshi
	 * 
	 */
	public final class Player
	{
		private var _name:String;
		private var _winCount:int;
		private var _loseCount:int;
		private var _evenCount:int;
		
		private var _strategy:IStrategy;
		
		public function Player(name:String, stgy:IStrategy)
		{
			_name = name;
			_strategy = stgy;
		}
		
		public function nextHand():int
		{
			return _strategy.nextHand();
		}
		
		public function win():void
		{
			_strategy.study(Config.WIN);
			_winCount++;
		}
		
		public function lose():void
		{
			_strategy.study(Config.LOSE);
			_loseCount++;
		}
		
		public function even():void
		{
			_strategy.study(Config.EVEN);
			_evenCount++;
		}
		
		public function result():void
		{
			const gameNum:int = _winCount + _loseCount + _evenCount;
			trace(_name + "の戦績");
			trace(String(gameNum) + "試合中");
			trace("勝ち " + String(_winCount));
			trace("負け " + String(_loseCount));
			trace("引き分け " + String(_evenCount));
			trace("勝率 " + String(_winCount / gameNum))
		}
	}
}