package player {
import board.pion.Pion;
import board.pion.ScorePion;
import board.row.EvaluateRow;
import board.row.Row;

/**
 * ...
 * @author mOveo Games
 */
public class ScoreEvaluator {

    public static function evaluate(suggestionRow:Row, solutionRow:Row):EvaluateRow {
        var evaluateRow:EvaluateRow = new EvaluateRow();

        for each (var suggestionPion:Pion in suggestionRow.getPions()) {
            evaluateRow.addPion(computeEvaluatePion(suggestionPion, solutionRow.getPions()));
        }

        return evaluateRow;
    }

    static private function computeEvaluatePion(suggestionPion:Pion, solutionRow:Vector.<Pion>):ScorePion {
        var sameColorPions:Vector.<Pion> = solutionRow.filter(checkSameColorWith(suggestionPion.color));
        if (sameColorPions.length == 0) {
            return ScorePion.COLOR_NOT_EXIST;
        }

        var samePositionPion:Vector.<Pion> = sameColorPions.filter(checkSamePositionWith(suggestionPion.x));
        if (samePositionPion.length == 0) {
            return ScorePion.BAD_POSITION;
        }

        return ScorePion.GOOD;
    }

    static private function checkSameColorWith(colorExpected:int):Function {
        return function (current:Pion, index:int, arr:Vector.<Pion>):Boolean {
            return current.color == colorExpected;
        }
    }

    static private function checkSamePositionWith(position:int):Function {
        return function (current:Pion, index:int, arr:Vector.<Pion>):Boolean {
            return current.x == position;
        }
    }

}

}
