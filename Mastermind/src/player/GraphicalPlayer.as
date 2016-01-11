/**
 * Created by Benjamin on 1/11/2016.
 */
package player {
import board.PlayBoard;
import board.pion.PionColor;
import board.row.Row;

import event.EventEnum;
import event.GameFinishedEvent;
import event.RowCreatedEvent;
import event.RowEvaluatedEvent;
import event.RowToEvaluateEvent;

import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

public class GraphicalPlayer extends EventDispatcher implements IResearchable, IMastermindViewEventHandler {
    private var _view:IMastermindView;
    private var _name:String;
    public function GraphicalPlayer(name:String, view:IMastermindView) {
        _name = name;
        _view = view;

        _view.initEventHandler(this);
    }

    public function rowCreated(rowCreatedEvent:RowCreatedEvent):void {
        trace("in rowCreated");
        dispatchEvent(new RowToEvaluateEvent(Row.generateFullRow(8, PionColor.RED)));
    }

    public function getName():String {
        return _name;
    }


    public function initEvent(stageEngine:IEventDispatcher):void {
        trace("in GraphicalPlayer initEvent");
        stageEngine.addEventListener(EventEnum.ROW_EVALUATED, stageEngine_rowEvaluatedHandler);
        stageEngine.addEventListener(EventEnum.GAME_FINISHED, stageEngine_gameFinishedHandler);
    }

    private function stageEngine_rowEvaluatedHandler(rowEvaluatedEvent:RowEvaluatedEvent):void {
        trace("in stageEngine_rowEvaluatedHandler: call view refresh");
        _view.refresh();
    }

    public function search(playBoard:PlayBoard):Row {
        return null;
    }

    private function stageEngine_gameFinishedHandler(gameFinishedEvent:GameFinishedEvent):void {
        _view.displayWinner(gameFinishedEvent.winner);
    }
}
}
