package graphics.framework {

/**
 * ...
 * @author ...
 */
public class Zone {
    public function Zone(width:Number, height:Number) {
        this.height = height;
        this.width = width;

    }

    private var _width:Number;

    public function get width():Number {
        return _width;
    }

    public function set width(value:Number):void {
        _width = value;
    }

    private var _height:Number;

    public function get height():Number {
        return _height;
    }

    public function set height(value:Number):void {
        _height = value;
    }
}

}