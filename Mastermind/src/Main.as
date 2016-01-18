package {
import app.Game;
import app.MastermindApplication;
import app.StageEngine;

import board.PlayBoard;
import board.ScoreBoard;

import event.InitEvent;

import flash.display.Sprite;
import flash.events.Event;

import graphics.DummyView;
import graphics.sprite.BackgroundSprite;
import graphics.sprite.PlayBoardSprite;

import player.GraphicalPlayer;
import player.ScorablePlayer;

/**
 * ...
 * @author mOveo Games
 */
[SWF(height=800, width=600)]

public class Main extends Sprite {
    public function Main():void {
        if (stage) init();
        else addEventListener(Event.ADDED_TO_STAGE, init);
    }
    private var _mastermindApplication:MastermindApplication;

    // Initialisation apres ajout au Stage

    private function init(e:Event = null):void {
        dummyInitialisation();
    }

    private function dummyInitialisation():void {
        var game:Game = new Game(new PlayBoard(3), new ScoreBoard(3));
        trace("game initialized");
        var scorablePlayer:ScorablePlayer = new ScorablePlayer("score");
        scorablePlayer.generateHideRow();
        var stageEngineWithEvent:StageEngine = new StageEngine(game, scorablePlayer, new GraphicalPlayer("Researchable", new DummyView(this, game)));
        trace("stageEngineWithEvent initialized");
        stageEngineWithEvent.initEvent(this);
        trace("initEvent initialized");
        dispatchEvent(new InitEvent());
        trace("initEvent dispatched");
    }

    private function oldInitialisation():void {
//TODO : Remove
        var boardContainer:BackgroundSprite = new BackgroundSprite(10);
        var playBoard:PlayBoard = new PlayBoard(10);
        playBoard.initialize(6);
        var playBoardSprite:PlayBoardSprite = new PlayBoardSprite(playBoard);
        addChild(boardContainer);
        addChild(playBoardSprite);
        boardContainer.render();
        playBoardSprite.render();
        playBoardSprite.x = 0.15 * stage.stageWidth;

        //dispatchEvent()

        removeEventListener(Event.ADDED_TO_STAGE, init);
        _mastermindApplication = new MastermindApplication();
        _mastermindApplication.run();
    }

}

}
