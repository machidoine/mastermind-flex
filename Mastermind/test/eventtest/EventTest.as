/**
 * Created by Benjamin on 12/1/2015.
 */
package eventtest {
import org.hamcrest.assertThat;
import org.hamcrest.object.equalTo;

public class EventTest {

    private var eventDispatcher:MyEventDispatcher;
    private var listener:MyListener;


    [Before]
    public function setUp():void {
        eventDispatcher = new MyEventDispatcher();
        listener = new MyListener(eventDispatcher);
    }

    [Test]
    public function testEventDispatcherWithoutEvent_shouldResultFalse() {
        assertThat(listener.result, equalTo(""));
    }

    [Test]
    public function testEventDispatcherWithoutEvent_shouldResultTrue() {
        eventDispatcher.sendMyEvent();
        assertThat(listener.result, equalTo("myEvent"));
    }


}
}
