package
{
	import flash.display.Sprite;
	
	import rps.Config;
	import rps.Player;
	
	import strategy.HistoryStrategy;
	import strategy.PaperOnlyStrategy;
	import strategy.RandomStrategy;
	import strategy.WinningStrategy;
	
	public class main extends Sprite
	{
		public function main()
		{
			const p1:Player = new Player("A", new HistoryStrategy);
			const p2:Player = new Player("B", new PaperOnlyStrategy);
			for (var i:int = 0; i < 10000; i++)
				fight(p1, p2);
			p1.result();
			p2.result();
		}
		
		private function fight(p1:Player, p2:Player):void
		{
			const h1:int = p1.nextHand();
			const h2:int = p2.nextHand();
			const result:String = Config.judge(h1, h2);
			switch(result)
			{
				case Config.WIN:
					p1.win();
					p2.lose();
					break;
				case Config.LOSE:
					p1.lose();
					p2.win();
					break;
				case Config.EVEN:
					p1.even();
					p2.even();
					break;
				default:
					break;
			}
		}
	}
}