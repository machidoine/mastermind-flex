package board.pion {
/**
 * ...
 * @author mOveo Games
 */
public class ScorePion extends Pion {
    public static const GOOD:ScorePion = new ScorePion(1);
    public static const COLOR_NOT_EXIST:ScorePion = new ScorePion(0);
    public static const BAD_POSITION:ScorePion = new ScorePion(2);

    public function ScorePion(color:int) {
        super(color);
    }

}

}
