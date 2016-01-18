/**
 * Created by Benjamin on 1/11/2016.
 */
package event {
import flash.events.Event;

public class RowCreatedEvent extends Event {

    public function RowCreatedEvent() {
        super(EventEnum.ROW_CREATED);
    }
}
}
