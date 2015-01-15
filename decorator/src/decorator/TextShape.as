package decorator
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public final class TextShape implements IComponent
	{
		private var _component:IComponent;
		public function TextShape(cmp:IComponent, text:String, textFormat:TextFormat = null)
		{
			var tf:TextField = new TextField();
			if (textFormat)
				tf.setTextFormat(textFormat);
			tf.text = text;
			_component = cmp;
			tf.x = int((_component.getDisplay().width - tf.textWidth) * .5);
			tf.y = int((_component.getDisplay().height - tf.textHeight) * .5);
			tf.selectable = false;
			_component.getDisplay().addChild(tf);
		}
		
		public function getDisplay():Sprite
		{
			return _component.getDisplay();
		}
	}
}