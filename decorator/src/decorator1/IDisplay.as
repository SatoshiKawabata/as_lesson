package decorator1
{
	public interface IDisplay
	{
		function getColumns():int;
		function getRows():int;
		function getRowText(row:int):String;
		function show():void;
	}
}