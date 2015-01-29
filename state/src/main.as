package
{
	import character.Mario;
	
	import flash.display.Sprite;
	
	public class main extends Sprite
	{
		public function main()
		{
			var mario:Mario = new Mario();
			mario.jump();
			mario.setItem("キノコ");
			mario.jump();
			mario.setItem("フラワー");
			mario.jump();
		}
	}
}