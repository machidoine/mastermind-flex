/**
 * Created by Benjamin on 11/17/2015.
 */
package board.row {
import org.flexunit.assertThat;
import org.hamcrest.object.equalTo;

public class RowTest {

    private var row:Row = null;

    public function RowTest() {
        row = new Row();
    }

    [Test]
    public function testEmptyRow():void {
        assertThat(row.emptyRow, equalTo(true));
    }
}
}
