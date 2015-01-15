package decorator1
{
	public final class FullBorder implements IDisplay
	{
		private var _display:IDisplay;
		
		public function FullBorder(display:IDisplay)
		{
			_display = display;
		}
		
		public function getColumns():int
		{
			return 1 + _display.getColumns() + 1;
		}
		
		public function getRows():int
		{
			return 1 + _display.getRows() + 1;
		}
		
		public function getRowText(row:int):String
		{
			if (row == 0 || row == _display.getRows() + 1)
				return "+" + makeLine("-", _display.getColumns()) + "+";
			else
				return "|" + _display.getRowText(row-1) + "|";
		}
		
		public function show():void
		{
			DisplayUtil.show(this);
		}
		
		private function makeLine(str:String, cnt:int):String
		{
			var buf:String = "";
			for (var i:int = 0; i < cnt; i++)
			{
				buf += str;
			}
			return buf;
		}
	}
}