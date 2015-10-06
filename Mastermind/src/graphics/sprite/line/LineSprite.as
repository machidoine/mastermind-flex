package graphics.sprite.line {
import flash.display.Sprite;

/**
 * ...
 * @author ...
 */
public class LineSprite extends Sprite {

    public function LineSprite() {
        super();
        _currentColumnPosition = 0;
    }

    private var _currentColumnPosition:int;

    protected function get currentColumnPosition():int {
        return _currentColumnPosition;
    }

    protected function set currentColumnPosition(value:int):void {
        _currentColumnPosition = value;
    }

    public function addColumn(spriteColumn:Sprite):void {
        throw new Error("You must implement it");
    }
}

}