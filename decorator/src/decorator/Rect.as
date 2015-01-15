package decorator
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	
	public final class Rect implements IComponent
	{
		private var _container:Sprite;
		public function Rect(w:int, h:int, c:int)
		{
			_container = new Sprite();
			var g:Graphics = _container.graphics;
			g.beginFill(c);
			g.drawRect(0, 0, w, h);
			g.endFill();
		}
		
		public function getDisplay():Sprite
		{
			return _container;
		}
	}
}