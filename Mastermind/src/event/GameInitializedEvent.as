/**
 * Created by Benjamin on 12/1/2015.
 */
package event {
import flash.events.Event;

public class GameInitializedEvent extends Event {
    public function GameInitializedEvent() {
        super(EventEnum.GAME_INITIALIZED);
    }
}
}
