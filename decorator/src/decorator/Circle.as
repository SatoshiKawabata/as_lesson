package decorator
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	
	public final class Circle implements IComponent
	{
		private var _container:Sprite;
		public function Circle(r:int, c:uint)
		{
			_container = new Sprite;
			var g:Graphics = _container.graphics;
			g.beginFill(c);
			g.drawCircle(r, r, r);
			g.endFill();
		}
		
		public function getDisplay():Sprite
		{
			return _container;
		}
	}
}