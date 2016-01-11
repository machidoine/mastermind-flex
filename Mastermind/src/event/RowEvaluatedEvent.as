/**
 * Created by Benjamin on 12/1/2015.
 */
package event {
import board.row.EvaluateRow;

import flash.events.Event;

public class RowEvaluatedEvent extends Event {
    private var _scoreRow:EvaluateRow;

    public function RowEvaluatedEvent(scoreRow:EvaluateRow) {
        super(EventEnum.ROW_EVALUATED);
        _scoreRow = scoreRow;
    }

    public function get scoreRow():EvaluateRow {
        return _scoreRow;
    }
}
}
