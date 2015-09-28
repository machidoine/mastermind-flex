package app
{
	import board.PlayBoard;
	import board.ScoreBoard;
	import player.IPlayerable;
	import player.Player;
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class MastermindApplication
	{
		private var _playerOne:Player;
		private var _playerTwo:Player;
		private var _stage:StageEngine;
		
		private var _playBoard:PlayBoard;
		private var _scoreBoard:ScoreBoard;
		
		
		public function MastermindApplication()
		{
			this.initialize();
		}
		
		// Lancement du niveau
		public function run():void
		{
			_stage = new StageEngine(_playerOne, _playerTwo, _playBoard, _scoreBoard);
			var winner:IPlayerable = _stage.run();
			
			displayWinner(winner);
		}
		
		// Initialisation des elements du jeu
		private function initialize():void
		{
			_playerOne = new Player("Player 1 (score)");
			_playerTwo = new Player("Player 2 (search)");
			
			_playBoard 	= new PlayBoard(2);
			_scoreBoard = new ScoreBoard(2);
			
		}
		
		private function displayWinner(winner:IPlayerable):void
		{
			trace("\r\n----------------------------------------");
			trace("Le vainqueur de cette manche est : " + winner.getName());
			trace("----------------------------------------");
		}
		
		
	}

}
