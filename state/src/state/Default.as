package state
{
	public final class Default implements IState
	{
		public function Default()
		{
		}
		
		public function jump():void
		{
			trace("通常のジャンプ");
		}
	}
}