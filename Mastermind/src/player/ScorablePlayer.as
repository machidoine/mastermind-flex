package player {
import board.pion.Pion;
import board.row.EvaluateRow;
import board.row.Row;

import event.EventEnum;
import event.RowEvaluatedEvent;
import event.RowToEvaluateEvent;

import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

/**
 * ...
 * @author mOveo Games
 */
public class ScorablePlayer extends EventDispatcher implements IScorable {

    public function ScorablePlayer(name:String) {
        _name = name;
    }
    
    private var _name:String;

    // Genere la row à rechercher
    private var _solutionRow:Row;

    public function generateHideRow():Row {
        _solutionRow = new Row();
        
        for (var i:int = 0; i <= Row.SIZE; i++) {
            _solutionRow.addPion(new Pion(Math.random() * (Row.SIZE - 1)));

        }

        return _solutionRow;
    }

    // Retourne le nom du player
    public function getName():String {
        return _name;
    }

    public function initEvent(stageEngine:IEventDispatcher):void {
        
        stageEngine.addEventListener(EventEnum.ROW_TO_EVALUATE, stageEngine_rowToEvaluateHandler);
    }

    private function stageEngine_rowToEvaluateHandler(rowToEvaluateEvent:RowToEvaluateEvent):void {
        trace("in ScorablePlayer : stageEngine_rowToEvaluateHandler");
        var evaluateRow:EvaluateRow = ScoreEvaluator.evaluate(rowToEvaluateEvent.rowToEvaluate, _solutionRow);
        trace("evaluatedRow : " + evaluateRow);
        dispatchEvent(new RowEvaluatedEvent(evaluateRow));
    }

}

}
