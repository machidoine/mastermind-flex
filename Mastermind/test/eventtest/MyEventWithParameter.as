/**
 * Created by Benjamin on 12/1/2015.
 */
package eventtest {
import flash.events.Event;

public class MyEventWithParameter extends Event {
    private var _param:String;

    public function MyEventWithParameter(param:String) {
        super("myEvent");
        _param = param;
    }

    public function get param():String {
        return _param;
    }

    public function set param(value:String):void {
        _param = value;
    }
}
}
