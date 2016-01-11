/**
 * Created by Benjamin on 12/1/2015.
 */
package eventtest {
import flash.events.EventDispatcher;

public class MyEventDispatcher extends EventDispatcher {
    public function MyEventDispatcher() {
    }

    public function sendMyEvent():void {
        dispatchEvent(new MyEventWithParameter("myEvent"));
    }

}
}
