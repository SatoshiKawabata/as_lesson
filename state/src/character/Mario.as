package character
{
	import state.Big;
	import state.Default;
	import state.Fire;
	import state.IState;

	public final class Mario
	{
		private var _state:IState;
		
		public function Mario()
		{
			_state = new Default();
		}
		
		public function jump():void
		{
			_state.jump();
		}
		
		public function setItem(item:String):void
		{
			switch(item)
			{
				case "キノコ":
					_state = new Big();
					break;
				case "フラワー":
					_state = new Fire();
					break;
				default:
					break;
			}
		}
	}
}