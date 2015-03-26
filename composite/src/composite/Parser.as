package composite
{
	import flash.utils.Dictionary;
	

	public final class Parser
	{
		public function Parser()
		{
		}
		
		static public function parse(data:*, level:int = 0):IFile
		{
			var file:IFile;
			
			if (data is String 
				|| data is int
				|| data is uint
				|| data is Number
				|| data is Boolean)
			{
				file = new File(data, level);
			}
			else if (data is Array)
			{
				file = new Directory("dir", level);
				for (var i:int = 0, len:int = data.length; i < len; i++)
				{
					addFile(file, data[i], level);
				}
			}
			else if (data is Object)
			{
				file = new Directory("dir", level);
				for (var key:String in data)
				{
					addFile(file, data[key], level);
				}
			}
			else
				throw new Error("invalid type : " + data);
			return file;
		}
		
		static private function addFile(file:IFile, data:*, level:int):void
		{
			var child:IFile;
			if (data is String 
				|| data is int
				|| data is uint
				|| data is Number
				|| data is Boolean)
			{
				child = new File(data, level);
			}
			else if (data is Array 
				|| data is Object)
			{
				level++;
				child = parse(data, level);
			}
			else
				throw new Error("invalid type : " + data);
			(file as Directory).add(child);
		}
	}
}