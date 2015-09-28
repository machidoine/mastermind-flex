package player
{
	import board.pion.Pion;
	import board.pion.ScorePion;
	import board.PlayBoard;
	import board.row.EvaluateRow;
	import board.row.Row;
	import player.IResearchable;
	import player.IScorable;
	
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class Player implements IScorable, IResearchable
	{
		private var _name:String;
		
		public function Player(name:String)
		{
			_name = name;
		}
		
		// Renvoie une row d'evaluation en fonction de la row en parametre
		public function score(suggestionRow:Row, solutionRow:Row):EvaluateRow
		{
			return ScoreEvaluator.evaluate(suggestionRow, solutionRow);
		}
		
		// Ajoute une row au board de jeu
		public function search(playBoard:PlayBoard):Row
		{
			var row:Row = new Row();
			
			for (var i:int = 0; i <= Row.SIZE; i++)
			{
				row.addPion(new Pion(Math.random() * 100 % 13));
			}
			
			return row;
		}
		
		// Genere la row à rechercher
		public function generateHideRow():Row
		{
			var row:Row = new Row();
			
			for (var i:int = 0; i <= Row.SIZE; i++)
			{
				row.addPion(new Pion(Math.random() * (Row.SIZE - 1)));
				
			}
			
			return row;
		}
		
		// Retourne le nom du player
		public function getName():String
		{
			return _name;
		}
	
	}

}
