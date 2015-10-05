package board.row {
import board.pion.Pion;
import board.pion.ScorePion;

/**
 * ...
 * @author mOveo Games
 */
public class EvaluateRow extends Row {

    public function EvaluateRow() {
        super();
    }

    public function isWinnerRow():Boolean {
        return _listPions.every(checkIsScorePionGOOD);
    }

    private function checkIsScorePionGOOD(current:Object, index:int, arr:Vector.<Pion>):Boolean {
        return current == ScorePion.GOOD;
    }

}

}
