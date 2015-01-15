package decorator1
{
	public final class SideBorder implements IDisplay
	{
		private var _display:IDisplay;
		private var _borderStr:String;
		
		public function SideBorder(display:IDisplay, str:String)
		{
			_display = display;
			_borderStr = str;
		}
		
		public function getColumns():int
		{
			return _borderStr.length + _display.getColumns() + _borderStr.length;
		}
		
		public function getRows():int
		{
			return _display.getRows();
		}
		
		public function getRowText(row:int):String
		{
			return _borderStr + _display.getRowText(row) + _borderStr;
		}
		
		public function show():void
		{
			DisplayUtil.show(this);
		}
	}
}