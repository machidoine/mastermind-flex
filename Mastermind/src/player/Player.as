package player {
import board.PlayBoard;
import board.pion.Pion;
import board.row.EvaluateRow;
import board.row.Row;

import flash.events.EventDispatcher;

/**
 * ...
 * @author mOveo Games
 */
public class Player extends EventDispatcher implements IScorable, IResearchable {
    public function Player(name:String) {
        _name = name;
    }
    private var _name:String;

    // Renvoie une row d'evaluation en fonction de la row en parametre

    public function score(suggestionRow:Row, solutionRow:Row):EvaluateRow {
        return ScoreEvaluator.evaluate(suggestionRow, solutionRow);
    }

    // Ajoute une row au board de jeu
    public function search(playBoard:PlayBoard):Row {
        var row:Row = new Row();

        for (var i:int = 0; i <= Row.SIZE; i++) {
            row.addPion(new Pion(Math.random() * 100 % 13));
        }

        return row;
    }

    // Genere la row à rechercher
    public function generateHideRow():Row {
        var row:Row = new Row();

        for (var i:int = 0; i <= Row.SIZE; i++) {
            row.addPion(new Pion(Math.random() * (Row.SIZE - 1)));

        }

        return row;
    }

    // Retourne le nom du player
    public function getName():String {
        return _name;
    }

}

}
