package app
{
	import board.PlayBoard;
	import board.row.EvaluateRow;
	import board.row.Row;
	import board.ScoreBoard;
	import player.IPlayerable;
	import player.IResearchable;
	import player.IScorable;
	
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class StageEngine
	{
		private var _scorablePlayer:IScorable;
		private var _researchablePlayer:IResearchable;
		
		private var _playBoard:PlayBoard;
		private var _scoreBoard:ScoreBoard;
		
		public function StageEngine(scorablePlayer:IScorable, researchablePlayer:IResearchable, playBoard:PlayBoard, scoreBoard:ScoreBoard)
		{
			_scorablePlayer = scorablePlayer;
			_researchablePlayer = researchablePlayer;
			_playBoard = playBoard;
			_scoreBoard = scoreBoard;
		}
		
		// Lancement du niveau
		public function run():IPlayerable
		{
			clearAllBoard();
			
			var hideRow:Row = _scorablePlayer.generateHideRow();
			
			playStageLoop(hideRow);
			
			return findWinner();
		}
		
		private function findWinner():IPlayerable
		{
			if (_playBoard.isFull())
				return _scorablePlayer;
			else
				return _researchablePlayer;
		}
		
		private function clearAllBoard():void
		{
			_playBoard.clear();
			_scoreBoard.clear();
		}
		
		private function isStageContinue(evaluateRow:EvaluateRow):Boolean
		{
			return !evaluateRow.isWinnerRow() && !_playBoard.isFull()
		}
		
		private function playRound(hideRow:Row):EvaluateRow
		{
			var evaluateRow:EvaluateRow;
			var rowToEvaluate:Row;
			
			rowToEvaluate = _researchablePlayer.search(_playBoard);
			_playBoard.addRow(rowToEvaluate);
			
			evaluateRow = _scorablePlayer.score(rowToEvaluate, hideRow);
			_scoreBoard.addRow(evaluateRow);
			
			return evaluateRow;
		}
		
		private function playStageLoop(hideRow:Row):void
		{
			var evaluateRow:EvaluateRow;
			var nbHits:int = 0;
			
			do
			{
				evaluateRow = playRound(hideRow);
				displayStageInfo(hideRow, nbHits);
				nbHits++;
			} while (isStageContinue(evaluateRow));
		}
		
		private function displayStageInfo(hideRow:Row, nbHits:int):void
		{
			draw(hideRow.getPions(), _scoreBoard.currentRow().getPions(), _playBoard.currentRow().getPions(), nbHits);
		}
		
		// Ecrit dans la console de log
		private function draw(hideRow:Object, evaluateRow:Object, rowToEvaluate:Object, nbHits:int):void
		{
			trace("\r\n--------------- MOVE : " + nbHits + " --------------");
			trace("----------------------------------------");
			trace("Row cachée :");
			trace(hideRow);
			
			trace("----------------------------------------");
			trace("Proposition SearchablePlayer :");
			trace(rowToEvaluate);
			
			trace("----------------------------------------");
			trace("Notation du ScorePlayer :");
			trace(evaluateRow);
		
		/*
		   trace("\r\n\r\n---------------- BOARD -----------------");
		   for (var i:int = 0; i <= _playBoard.getListRow().length; i++)
		   {
		   trace(_playBoard.getRow(i) + _scoreBoard.getRow(i));
		   trace("----------------------------------------");
		   }
		   trace("----------------------------------------");
		 */
		}
	
	}

}
