/**
 * Created by Benjamin on 11/4/2015.
 */
package board {
import board.row.Row;

import org.hamcrest.assertThat;
import org.hamcrest.collection.arrayWithSize;
import org.hamcrest.collection.everyItem;
import org.hamcrest.object.equalTo;
import org.hamcrest.object.hasProperty;

public class PlayBoardTest {
    private var playBoard:PlayBoard = null;

    public function PlayBoardTest() {
    }

    [Before]
    public function setUp():void {
        playBoard = new PlayBoard(0);
    }


    [Test]
    public function isFullWithEmptyPlayboard_shouldReturnFalse():void {
        playBoard.maxLineNumber = 2;

        var isFull:Boolean = playBoard.isFull();

        assertThat(isFull, equalTo(false));
    }


    [Test]
    public function isFullWithOneElement_shouldReturnFalse():void {
        playBoard.maxLineNumber = 2;
        playBoard.addRow(new Row());

        var isFull:Boolean = playBoard.isFull();

        assertThat(isFull, equalTo(false));
    }

    [Test]
    public function isFullWithFull_shouldReturnTrue():void {
        playBoard.maxLineNumber = 2;
        playBoard.addRow(new Row());
        playBoard.addRow(new Row());

        var isFull:Boolean = playBoard.isFull();

        assertThat(isFull, equalTo(true));
    }


    [Test]
    public function getListRowWithOneRow_ShouldReturnListWithOneElement():void {
        playBoard.maxLineNumber = 2;
        playBoard.addRow(new Row());

        assertThat(playBoard.listRows, arrayWithSize(1));

    }

    [Test]
    public function getListRowWithNoRow_ShouldReturnEmptyList():void {
        playBoard.maxLineNumber = 2;

        assertThat(playBoard.listRows, arrayWithSize(0));
    }

    [Test]
    public function initializeWithZero_shouldFillMaxSizeRow():void {
        playBoard.maxLineNumber = 2;

        playBoard.initialize(0);

        assertThat(playBoard.listRows, arrayWithSize(2));
    }

    [Test]
    public function initializeWithZero_shouldHaveRowWithoutPion():void {
        playBoard.maxLineNumber = 2;

        playBoard.initialize(0);

        assertThat(playBoard.getRow(0).getPions(), arrayWithSize(0));
    }

    [Test]
    public function initializeWithOne_shouldHaveRowOnePion():void {
        playBoard.maxLineNumber = 2;

        playBoard.initialize(1);

        assertThat(playBoard.getRow(0).getPions(), arrayWithSize(1));
    }

    [Test]
    public function initializeAfterAddedRow_shouldHaveMaxSizeRow():void {
        playBoard.maxLineNumber = 2;
        playBoard.addRow(new Row());

        playBoard.initialize(1);

        assertThat(playBoard.listRows, arrayWithSize(playBoard.getMaxSize()));
    }

    [Test]
    public function initializeWithNotEmptyRow_shouldHaveRowsWithEmptyPion():void {
        playBoard.maxLineNumber = 2;
        playBoard.addRow(new Row());

        playBoard.initialize(1);

        assertThat(playBoard.listRows, everyItem(hasProperty("emptyRow", equalTo(true))));
    }

}
}
