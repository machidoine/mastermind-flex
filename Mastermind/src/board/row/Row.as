package board.row {
import board.pion.Pion;

/**
 * ...
 * @author mOveo Games
 */
public class Row {
    static public const SIZE:int = 3;

    public function Row() {
        _listPions = new Vector.<Pion>;
    }
    protected var _listPions:Vector.<Pion>;

    private var _y:int;

    // Renvoie la liste des pions

    public function get y():int {
        return _y;
    }

    // Ajoute un pion a la row si la row n'est pas complete

    public function set y(value:int):void {
        _y = value;
    }

    public function getPions():Vector.<Pion> {
        return _listPions;
    }

    public function addPion(pion:Pion):void {
        if (_listPions.length <= SIZE) {
            pion.x = _listPions.length;
            pion.y = y;
            _listPions.push(pion);
        }

        // TODO throw exception if > SIZE

    }

}

}
