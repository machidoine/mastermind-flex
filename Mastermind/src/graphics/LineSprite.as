package graphics {
import flash.display.Sprite;

/**
 * ...
 * @author ...
 */
public class LineSprite extends Sprite {

    public function LineSprite() {
        super();
        currentColumnPosition = 0;
    }
    private var currentColumnPosition:int;

    public function addColumn(spriteColumn:Sprite) {
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