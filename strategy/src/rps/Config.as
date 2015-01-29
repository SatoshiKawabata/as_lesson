package rps
{
	public final class Config
	{
		static public const WIN:String = "win";
		static public const LOSE:String = "lose";
		static public const EVEN:String = "even";
		
		static public const ROCK:int = 0;
		static public const PAPER:int = 1;
		static public const SCISSORS:int = 2;
		static public const HAND_NUM:int = 3;
		
		static public function getRandomHand():int
		{
			const random:int = int(Math.random() * Config.HAND_NUM);
			return random;
		}
		
		static public function getWinHand(hand:int):int
		{
			return (hand + 1) % HAND_NUM;
		}
		
		static public function judge(hand1:int, hand2:int):String
		{
			if (hand1 == hand2)
				return EVEN;
			else if (getWinHand(hand1) == hand2)
				return WIN;
			else
				return LOSE;
		}
		
		public function Config()
		{
		}
	}
}