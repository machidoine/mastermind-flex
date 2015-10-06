/**
 * Created by Benjamin on 10/6/2015.
 */
package graphics.sprite.line {
import flash.display.Sprite;

public class BackgroundLineSprite extends LineSprite {
    public function BackgroundLineSprite() {
        super();
    }

    public override function addColumn(spriteColumn:Sprite):void {
        if (spriteColumn.width + currentColumnPosition > stage.stageWidth) {
            // TODO: exception if adding a column on LineSprite greather than stageWidth
        }

        spriteColumn.x = currentColumnPosition;
        spriteColumn.y = 0;

        currentColumnPosition += spriteColumn.width;

        addChild(spriteColumn);
    }


}
}
