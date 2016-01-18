/**
 * Created by Benjamin on 12/1/2015.
 */
package event {
import flash.events.Event;

public class GameFinishedEvent extends Event {
    private var _winner:String;
    public function GameFinishedEvent(winner:String) {
        super(EventEnum.GAME_FINISHED);
        _winner = winner;
    }

    public function get winner():String {
        return _winner;
    }
}
}
