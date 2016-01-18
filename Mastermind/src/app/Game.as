package app {
import board.PlayBoard;
import board.ScoreBoard;
import board.row.EvaluateRow;
import board.row.Row;

/**
 * ...
 * @author mOveo Games
 */
public class Game {
    public function Game(playBoard:PlayBoard, scoreBoard:ScoreBoard) {
        _playBoard = playBoard;
        _scoreBoard = scoreBoard;
        _nbHits = 0;
    }

    private var _playBoard:PlayBoard;
    private var _scoreBoard:ScoreBoard;
    private var _nbHits:int;

    private function clearAllBoard():void {
        _playBoard.clear();
        _scoreBoard.clear();
    }

    public function playRowToEvaluate(playRow:Row):void {
        // TODO check que l'on peut jouer
        _playBoard.updateCurrentRow(playRow);
    }

    public function playScore(scoreRow:EvaluateRow) {
        _scoreBoard.updateCurrentRow(scoreRow);
        _nbHits++;
    }

    public function get nbHits():int {
        return _nbHits;
    }

    public function initialize():void {
        _playBoard.initialize(10);
        _scoreBoard.initialize(10);
        _nbHits = 0;
    }

    public function isFinished():Boolean {
        return _playBoard.isFull() || _scoreBoard.currentEvaluatedRow.isWinnerRow();
    }

    public function isScoreboardWinner():Boolean {
        return _playBoard.isFull() && !_scoreBoard.currentEvaluatedRow.isWinnerRow();
    }

    public function get playBoard():PlayBoard {
        return _playBoard;
    }

    public function get scoreBoard():ScoreBoard {
        return _scoreBoard;
    }
}

}
