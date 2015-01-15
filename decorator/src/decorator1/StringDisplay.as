package decorator1
{
	public final class StringDisplay implements IDisplay
	{
		private var _str:String;
		public function StringDisplay(str:String)
		{
			_str = str;
		}
		
		public function getColumns():int
		{
			return _str.length;
		}
		
		public function getRows():int
		{
			return 1;
		}
		
		public function getRowText(row:int):String
		{
			if (row == 0) 
				return _str;
			else
				return null;
		}
		
		public function show():void
		{
			DisplayUtil.show(this);
		}
	}
}