/**
 * Created by Benjamin on 10/6/2015.
 */
package graphics.sprite.line {
import board.row.Row;

import flash.display.Sprite;
import flash.events.Event;
import flash.geom.Point;

import graphics.framework.Assets;
import graphics.framework.SpriteFactory;
import graphics.framework.TileFactory;

public class PlayLineSprite extends LineSprite {
    public function PlayLineSprite(row:Row, zone:Point) {
        super();
        this.row = row;
        this.zone = zone;
        drawEmptyBackground();
        addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
    }

    private var zone:Point;
    private var toto:Number;
    private var row:Row;

    private function drawEmptyBackground():void {
        var backSprite:Sprite = new Sprite();
        backSprite.graphics.beginFill(0, 0);
        backSprite.graphics.drawRect(0, 0, zone.x, zone.y);
        backSprite.graphics.endFill();
        addChild(backSprite);
    }

    public function onAddedToStage(e:Event):void {
        trace("PlayLineSprite addedToStage event called");
        //removeEventListener(Event.ADDED_TO_STAGE, render);
        render();
    }

    public function render():void {

        var spriteFactory:SpriteFactory = SpriteFactory.getInstance(TileFactory.getInstance(new Assets.SPRITESHEET_IMAGES(), new Assets.SPRITESHEET_JSON()));

        for (var i:int = 0; i < row.getPionNumber(); i++) {
            //var slotDisplay:Sprite = new PionSprite(new Point(135 + j * 50, 155 + i * 72), new Bitmap(spritesheetGame.getTile(22).bitmap));
            var pionSprite:Sprite = spriteFactory.createSlotPion();
            addChild(pionSprite);

            pionSprite.x = width / (row.getPionNumber() + 1) * (i + 1) - pionSprite.width / 2;
            pionSprite.y = height / 2 - pionSprite.height / 2;


        }
    }
}
}
