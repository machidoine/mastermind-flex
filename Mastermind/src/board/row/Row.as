package board.row {
import board.pion.Pion;
import board.pion.PionColor;

/**
 * ...
 * @author mOveo Games
 */
public class Row {
    static public const SIZE:int = 6;

    public static function generateEmptyRow(size:int):Row {
        var        row:Row = new Row();

        for (var i:int = 0; i < size; i++) {
            row.addPion(new Pion(PionColor.EMPTY));
        }

        return row;
    }

    public function Row() {
        _listPions = new Vector.<Pion>;
    }
    private var _listPions:Vector.<Pion>;


    private var _y:int;


    public function get y():int {
        return _y;
    }

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

    public function getPionNumber():uint {
        return _listPions.length;
    }

    public function toString():String {
        return "Row "+ y + ": "  + getPions();
    }
    
    public function get emptyRow():Boolean {
        return _listPions.every(function(element:Pion, index:int, array:Array):Boolean {
            return element.color === PionColor.EMPTY;
        });
    }
}

}
