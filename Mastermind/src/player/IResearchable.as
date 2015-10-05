package player {
import board.PlayBoard;
import board.row.Row;

/**
 * ...
 * @author mOveo Games
 */
public interface IResearchable extends IPlayerable {
    function search(playBoard:PlayBoard):Row;
}

}
