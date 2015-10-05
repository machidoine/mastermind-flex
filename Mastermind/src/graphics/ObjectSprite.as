package graphics {
import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.Event;
import flash.geom.Point;

/**
 * ...
 * @author mOveo Games
 */
public class ObjectSprite extends Sprite implements IDisplayable {
    public function ObjectSprite(location:Point, bitmap:Bitmap) {
        super();

        _bitmap = bitmap;
        _location = location;

        addEventListener(Event.ADDED_TO_STAGE, addedOnStage);

    }
    var _bitmap:Bitmap;
    var _location:Point;

    public function draw():void {

    }

    public function erase():void {

    }

    private function addedOnStage(e:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, addedOnStage);

        addChild(_bitmap);
        x = _location.x;
        y = _location.y;

    }

}

}
