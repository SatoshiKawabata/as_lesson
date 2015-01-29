package state
{
	public final class Fire implements IState
	{
		public function Fire()
		{
		}
		
		public function jump():void
		{
			trace("ファイア大ジャンプ");
		}
	}
}