package
{
	import flash.display.Sprite;
	
	import singleton.Singleton;
	
	public class singleton_test extends Sprite
	{
		public function singleton_test()
		{
			Singleton.instance.sayHello();
		}
	}
}