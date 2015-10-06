package graphics.sprite {
import board.PlayBoard;
import board.row.Row;

import flash.display.Sprite;
import flash.geom.Point;

import graphics.*;
import graphics.sprite.line.PlayLineSprite;

/**
 * ...
 * @author ...
 */
public class PlayBoardSprite extends Sprite {
    private var playboard:PlayBoard;

    public function PlayBoardSprite(playboard:PlayBoard) {
        super();
        this.playboard = playboard;
    }

    public function render():void {
        var spriteFactory:SpriteFactory = SpriteFactory.getInstance(TileFactory.getInstance(new Assets.SPRITESHEET_IMAGES(), new Assets.SPRITESHEET_JSON()));

        var j:int = 0;
        for each (var currentRow:Row in playboard.getListRow()) {
            var lineSprite:PlayLineSprite = new PlayLineSprite(currentRow, new Point(0.65 * stage.stageWidth, stage.stageHeight / 10));
            lineSprite.y = j * stage.stageHeight / 10;
            addChild(lineSprite);
            j++;
        }

    }
}
}