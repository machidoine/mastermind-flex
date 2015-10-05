package player {
import board.row.EvaluateRow;
import board.row.Row;

/**
 * ...
 * @author mOveo Games
 */
public interface IScorable extends IPlayerable {
    function score(rowToEvaluate:Row, hideRow:Row):EvaluateRow;

    function generateHideRow():Row;

}

}
