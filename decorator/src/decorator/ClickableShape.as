package decorator
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public final class ClickableShape implements IComponent
	{
		private var _component:IComponent;
		private var _handler:Function;
		private var _params:Array;
		public function ClickableShape(cmp:IComponent, handler:Function, ...params)
		{
			_component = cmp;
			_component.getDisplay().addEventListener(MouseEvent.CLICK, onClick);
			_handler = handler;
			_params = params;
		}
		
		protected function onClick(event:MouseEvent):void
		{
			_handler.apply(null, _params);
		}
		
		public function getDisplay():Sprite
		{
			return _component.getDisplay();
		}
	}
}