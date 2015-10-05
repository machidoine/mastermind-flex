package {
import app.MastermindApplication;

import flash.display.Sprite;
import flash.events.Event;

import graphics.BackgroundSprite;
import graphics.PlayBoardSprite;

/**
 * ...
 * @author mOveo Games
 */
public class Main extends Sprite {
    public function Main():void {
        if (stage) init();
        else addEventListener(Event.ADDED_TO_STAGE, init);
    }
    private var _mastermindApplication:MastermindApplication;

    // Initialisation apres ajout au Stage

    private function init(e:Event = null):void {
        //TODO : Remove
        var boardContainer:BackgroundSprite = new BackgroundSprite(10);
        var playBoardSprite:PlayBoardSprite = new PlayBoardSprite();
        addChild(boardContainer);
        addChild(playBoardSprite);
        boardContainer.render();
        playBoardSprite.render();
        playBoardSprite.x = 0.15 * stage.stageWidth;

        removeEventListener(Event.ADDED_TO_STAGE, init);
        _mastermindApplication = new MastermindApplication();
        _mastermindApplication.run();
    }

}

}
