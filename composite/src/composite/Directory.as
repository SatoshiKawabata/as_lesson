package composite
{
	

	public class Directory implements IFile
	{
		private var _name:String;
		private var _level:int;
		private var _list:Vector.<IFile>;
		
		public function Directory(name:String, level:int)
		{
			_name = name;
			_level = level;
			_list = new Vector.<IFile>();
		}
		
		public function add(file:IFile):void
		{
			_list.push(file);
		}
		
		public function remove():void
		{
			if (_list)
			{
				_list.every(every);
				_list.length = 0;
			}
			trace(_name + " is removed");
		}
		
		public function log():void
		{
			if (_list)
			{
				for (var i:int = 0, len:int = _list.length; i < len; i++)
				{
					_list[i].log();
				}
			}
			var space:String = "";
			for (i = 0; i < _level; i++)
			{
				space += "  ";
			}
			trace(space + _name);
		}
		
		private function every(file:IFile, index:int, list:Vector.<IFile>):Boolean
		{
			file.remove();
			return true;
		}
	}
}