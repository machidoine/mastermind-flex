/**
 * Created by Benjamin on 1/11/2016.
 */
package graphics {
import app.Game;

import event.EventEnum;
import event.IMastermindViewEventHandler;
import event.RowCreatedEvent;

import flash.display.Sprite;
import flash.events.KeyboardEvent;

public class DummyView extends Sprite implements IMastermindView {
    private var _game:Game;

    public function DummyView(container:Sprite, game:Game) {
        _game = game;
        container.addChild(this);
        container.stage.addEventListener(KeyboardEvent.KEY_UP, container_keyUpHandler);
    }

    public function refresh():void {
        draw();
    }

    private function draw():void {
        trace("\r\n--------------- MOVE : " + _game.nbHits + " --------------");
         trace("\r\n\r\n---------------- BOARD -----------------");
         for (var i:int = 0; i <= _game.playBoard.listRows.length - 1; i++)
         {
         trace( _game.playBoard.getRow(i) + _game.scoreBoard.getRow(i));
         trace("----------------------------------------");
         }
         trace("----------------------------------------");
            }

    private function container_keyUpHandler(event:KeyboardEvent):void {
        trace("in container_keyUpHandler");
        dispatchEvent(new RowCreatedEvent());
    }

    public function displayWinner(winner:String):void {
        trace("winner is : " + winner);

    }

    public function initEventHandler(mastermindEventHandler:IMastermindViewEventHandler) {
        addEventListener(EventEnum.ROW_CREATED, mastermindEventHandler.rowCreated);
    }
}
}
