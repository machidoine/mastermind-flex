/**
 * Created by Benjamin on 12/1/2015.
 */
package event {
import flash.events.Event;

public class InitEvent extends Event{

    public function InitEvent() {
        super(EventEnum.INIT);
    }
}
}
