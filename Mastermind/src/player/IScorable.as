package player {
import board.row.Row;

/**
 * ...
 * @author mOveo Games
 */
public interface IScorable extends IPlayerable {
    function generateHideRow():Row;
}

}
