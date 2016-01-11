/**
 * Created by Benjamin on 12/1/2015.
 */
package eventtest {
public class MyListener {
    private var _eventDispatcher:MyEventDispatcher;
    private var _result:String = "";

    public function MyListener(eventDispatcher:MyEventDispatcher) {
        _eventDispatcher = eventDispatcher;
        _eventDispatcher.addEventListener("myEvent", handleMyEvent);
    }

    private function handleMyEvent(event:MyEventWithParameter):void {
        _result = event.param;
    }

    public function get result():String {
        return _result;
    }

}
}
