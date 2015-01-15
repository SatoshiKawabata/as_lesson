package
{
	import decorator.ClickableShape;
	import decorator.IComponent;
	import decorator.Rect;
	import decorator.TextShape;
	
	import decorator1.FullBorder;
	import decorator1.IDisplay;
	import decorator1.SideBorder;
	import decorator1.StringDisplay;
	
	import flash.display.Sprite;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			var display:IDisplay = new SideBorder(new FullBorder(new SideBorder(new StringDisplay("abcd"), "**")), "//");
			display.show();
			
			var cmp:IComponent = new Rect(100, 20, 0xff0000);
			cmp = new ClickableShape(cmp, onClick, "click!");
			cmp = new TextShape(cmp, "らべる");
			cmp.getDisplay().x = 100;
			cmp.getDisplay().y = 100;
			this.addChild(cmp.getDisplay());
		}
		
		private function onClick(msg:String):void
		{
			trace(msg);
		}
	}
}