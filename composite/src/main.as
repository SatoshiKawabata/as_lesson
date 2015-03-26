package
{
	import composite.IFile;
	import composite.Parser;
	
	import flash.display.Sprite;
	
	public class main extends Sprite
	{
		
		public function main()
		{
			var data:Object = {
				list : [
					"A",
					"B",
					"C",
					"D",
					[
						"AA",
						"BB",
						"CC",
						[
							"AAA",
							"BBB",
							"CCC",
							[
								"AAAA",
								"BBBB"
							],
							"DDD"
						],
						"DD",
						"EE"
					],
					"E"
				]
			};
			
			var file:IFile = Parser.parse(data);
			file.log();
			return;
		}
	}
}
