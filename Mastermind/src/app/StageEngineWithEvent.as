package app {
import event.EventEnum;
import event.GameFinishedEvent;
import event.GameInitializedEvent;
import event.InitEvent;
import event.RowEvaluatedEvent;
import event.RowToEvaluateEvent;

import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import player.IResearchable;
import player.IScorable;
import player.WinnerEnum;

/**
 * ...
 * @author mOveo Games
 */
public class StageEngineWithEvent extends EventDispatcher {
    private var _game:Game;
    private var _scorablePlayer:IScorable;
    private var _researchablePlayer:IResearchable;
    
    public function StageEngineWithEvent(game:Game, scorablePlayer:IScorable, researchablePlayer:IResearchable) {
        _game = game;
        _scorablePlayer = scorablePlayer;
        _researchablePlayer = researchablePlayer;

        _researchablePlayer.addEventListener(EventEnum.ROW_TO_EVALUATE, researchablePlayer_rowToEvaluateHandler);
        _scorablePlayer.addEventListener(EventEnum.ROW_EVALUATED, scorablePlayer_rowEvaluatedHandler);
    }

    private function researchablePlayer_rowToEvaluateHandler(rowToEvaluateEvent:RowToEvaluateEvent):void {
        if (!_game.isFinished()) {
            _game.playRowToEvaluate(rowToEvaluateEvent.rowToEvaluate);
            dispatchEvent(rowToEvaluateEvent);
        }
    }

    private function scorablePlayer_rowEvaluatedHandler(rowEvaluatedEvent:RowEvaluatedEvent):void {
        _game.playScore(rowEvaluatedEvent.scoreRow);
        
        dispatchEvent(rowEvaluatedEvent);

        if(_game.isFinished()) {
            dispatchEvent(new GameFinishedEvent(findWinner()));
        }
    }

    private function findWinner():String {
        if(_game.isScoreboardWinner())
            return WinnerEnum.SCORE_PLAYER;
        else
            return WinnerEnum.RESEARCH_PLAYER;
    }

    public function initEvent(initialiser:IEventDispatcher):void {
        initialiser.addEventListener(EventEnum.INIT, initializer_initHandler);
    }

    private function initializer_initHandler(initEvent:InitEvent):void {
        _game.initialize();
        dispatchEvent(new GameInitializedEvent());
    }



}

}