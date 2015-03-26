package composite
{
	public class File implements IFile
	{
		private var _name:String;
		private var _level:int;
		
		public function File(name:String, level:int)
		{
			_name = name;
			_level = level;
		}
		
		public function remove():void
		{
			trace(_name + " is removed");
		}
		
		public function log():void
		{
			var space:String = "";
			for (var i:int = 0; i < _level; i++)
			{
				space += "  ";
			}
			trace(space + _name);
		}
	}
}