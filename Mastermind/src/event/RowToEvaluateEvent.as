/**
 * Created by Benjamin on 12/1/2015.
 */
package event {
import board.row.Row;

import flash.events.Event;

public class RowToEvaluateEvent extends Event {
    private var _rowToEvaluate:Row;

    public function RowToEvaluateEvent(rowToEvaluate:Row) {
        super(EventEnum.ROW_TO_EVALUATE);
        _rowToEvaluate = rowToEvaluate;
    }

    public function get rowToEvaluate():Row {
        return _rowToEvaluate;
    }
    
}
}
