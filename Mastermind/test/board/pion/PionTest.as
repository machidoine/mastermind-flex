/**
 * Created by Benjamin on 11/4/2015.
 */
package board.pion {
import org.flexunit.asserts.assertNotNull;
import org.hamcrest.assertThat;
import org.hamcrest.object.equalTo;

public class PionTest {

    private var pion:Pion = null;

    public function PionTest() {
    }
    
    [Before]
    public function setUp():void {
        pion = new Pion(0);
    }

    [Test]
    public function ctorWithColor_shouldInstance():void {
        assertNotNull(pion);
    }

    [Test]
    public function toStringWithZeroColor_shouldReturnStringColor():void {
        var result:String = pion.toString();

        assertThat(result, equalTo("0"));
    }
}
}
