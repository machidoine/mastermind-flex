/**
 * Created by Benjamin on 1/11/2016.
 */
package player {
import flash.events.IEventDispatcher;

public interface IMastermindView extends IEventDispatcher {
    function refresh():void;

    function displayWinner(winner:String):void;

    function initEventHandler(mastermindEventHandler:IMastermindViewEventHandler);
}
}
