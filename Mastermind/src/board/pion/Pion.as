package board.pion {
/**
 * ...
 * @author mOveo Games
 */
public class Pion {
    public function Pion(color:int) {
        _color = color;
    }

    private var _color:int;

    public function get color():int {
        return _color;
    }

    private var _x:int;

    public function get x():int {
        return _x;
    }

    public function set x(value:int):void {
        _x = value;
    }

    private var _y:int;

    public function get y():int {
        return _y;
    }

    public function set y(value:int):void {
        _y = value;
    }

    public function toString():String {
        return "" + _color;
    }

}

}
