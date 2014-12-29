package
{
	import flash.display.Sprite;
	
	import lib.Singleton;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			Singleton.instance.testFunc();
		}
	}
}