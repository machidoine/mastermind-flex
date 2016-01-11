/**
 * Created by Benjamin on 12/1/2015.
 */
package event {
import flash.events.Event;

public class GameFinishedEvent extends Event {
    public function GameFinishedEvent(winner:String) {
        super(EventEnum.GAME_FINISHED);
    }
}
}
