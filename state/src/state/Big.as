package state
{
	public final class Big implements IState
	{
		public function Big()
		{
		}
		
		public function jump():void
		{
			trace("大ジャンプ");
		}
	}
}