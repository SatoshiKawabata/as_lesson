package abstractfactory
{
	import pot.IPot;
	import pot.IProtein;
	import pot.ISoup;
	import pot.IVegetable;

	public class HotPot
	{
		private var _pot:IPot;
		private var _soup:ISoup;
		private var _protein:IProtein;
		private var _vegetables:Vector.<IVegetable>;
		private var _otherIngredients:Vector.<IOtherIngredients>;
		
		public function HotPot(pot:IPot)
		{
			_pot = pot;
		}
		
		public function addSoup(soup:ISoup):void
		{
			_soup = soup;
		}
		
		public function addProtein(protein:IProtein):void
		{
			_protein = protein;
		}
		
		public function addVegetables(vegetables:Vector.<IVegetable>):void
		{
			_vegetables = vegetables;
		}
		
		public function addOtherIngredients(otherIngredintes:Vector.<IOtherIngredients>):void
		{
			_otherIngredients = otherIngredintes;
		}
	}
}