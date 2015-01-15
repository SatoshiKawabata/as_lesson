package decorator1
{
	public final class DisplayUtil
	{
		public function DisplayUtil(){}
		
		static public function show(display:IDisplay):void
		{
			for (var i:int = 0, len:int = display.getRows(); i < len; i++)
				trace(display.getRowText(i));
		}
	}
}