package lib
{
	public class Singleton
	{
		static private var _instance:Singleton;
		
		static public function get instance():Singleton
		{
			if (!_instance)
				_instance = new Singleton(new privateClass);
			return _instance;
		}
		
		public function Singleton(pc:privateClass)
		{
			if (!pc)
				throw new Error("invalid constructor");
		}
		
		public function testFunc():void
		{
			trace("tests");
		}
	}
}

class privateClass
{
	public function privateClass()
	{
	}
}