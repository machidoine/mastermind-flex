package board {
import board.row.EvaluateRow;

/**
 * ...
 * @author mOveo Games
 */
public class ScoreBoard extends Board {

    public function ScoreBoard(sizeOfBoard:int) {
        super(sizeOfBoard);
    }

    public function get currentEvaluatedRow():EvaluateRow {
        return EvaluateRow(currentRow());
    }

}

}
