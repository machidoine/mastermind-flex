package board {
import board.row.Row;

/**
 * ...
 * @author mOveo Games
 */
public class Board {
    public function Board(sizeOfBoard:int) {
        listRows = new Vector.<Row>();
        maxSize = sizeOfBoard;
    }
    protected var listRows:Vector.<Row>;
    protected var maxSize:int;

    // Ajoute une row au tableau de row

    public function addRow(row:Row):void {
        trace(listRows);
        row.y = listRows.length;
        listRows.push(row);
    }

    // Retourne la row en fonction de l'index passé en paramètre
    public function getRow(index:int):Row {
        return listRows[index];
    }


    // Retourne la liste des rows
    public function getListRow():Vector.<Row> {
        return listRows;
    }

    // Retourne la row courante
    public function currentRow():Row {
        return listRows[listRows.length - 1];
    }

    // Vide le tableau de row
    public function clear():void {
        listRows = new Vector.<Row>();
    }

    // Retourn true si le tableau de row est plein
    public function isFull():Boolean {
        return listRows.length >= maxSize;
    }

    public function getMaxSize():int {
        return maxSize;
    }

}

}
