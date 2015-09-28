package board.row
{
	import board.pion.Pion;
	
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class Row
	{
		static public const SIZE:int = 3;
		
		private var _y:int;
		
		protected var _listPions:Vector.<Pion>;
		
		public function Row()
		{
			_listPions = new Vector.<Pion>;
		}
		
		// Renvoie la liste des pions
		public function getPions():Vector.<Pion>
		{
			return _listPions;
		}
		
		// Ajoute un pion a la row si la row n'est pas complete
		public function addPion(pion:Pion):void
		{
			if (_listPions.length <= SIZE)
			{
				pion.x = _listPions.length;
				pion.y = y;
				_listPions.push(pion);
			}
			
			// TODO throw exception if > SIZE
			
		}
		
		public function get y():int
		{
			return _y;
		}
		
		public function set y(value:int):void
		{
			_y = value;
		}
	
	}

}
