package board {
import board.row.Row;

/**
 * ...
 * @author mOveo Games
 */
public class Board {

    public function Board(lineNumber:int) {
        _listRows = new Vector.<Row>();
        _maxSize = lineNumber;
    }

    private var _listRows:Vector.<Row>;
    private var    _maxSize:int;

    // Ajoute une row au tableau de row

    public function addRow(row:Row):void {
        trace(_listRows);
        row.y = _listRows.length;
        _listRows.push(row);
    }

    // Retourne la row en fonction de l'index passé en paramètre
    public function getRow(index:int):Row {
        return _listRows[index];
    }


    // Retourne la liste des rows
    public function getListRow():Vector.<Row> {
        return _listRows;
    }

    // Retourne la row courante
    public function currentRow():Row {
        return _listRows[_listRows.length - 1];
    }

    // Vide le tableau de row
    public function clear():void {
        _listRows = new Vector.<Row>();
    }

    // Retourn true si le tableau de row est plein
    public function isFull():Boolean {
        return _listRows.length >= _maxSize;
    }

    public function getMaxSize():int {
        return _maxSize;
    }

    public function initialize(lineSize:int):void {
        clear();
        for (var i:int = 0; i< _maxSize; i++) {
            addRow(Row.generateEmptyRow(lineSize));
        }
    }

    public function set maxSize(value:int):void {
        _maxSize = value;
    }
}

}
