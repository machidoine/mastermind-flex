package graphics.framework {
import flash.display.BitmapData;
import flash.geom.Point;

/**
 * ...
 * @author ...
 */
public class Tile {
    public function Tile(bitmap:BitmapData, zone:Zone, size:Point) {
        this.size = size;
        this.zone = zone;
        this.bitmap = bitmap;

    }

    private var _bitmap:BitmapData;

    public function get bitmap():BitmapData {
        return _bitmap;
    }

    public function set bitmap(value:BitmapData):void {
        _bitmap = value;
    }

    private var _zone:Zone;

    public function get zone():Zone {
        return _zone;
    }

    public function set zone(value:Zone):void {
        _zone = value;
    }

    private var _size:Point;

    public function get size():Point {
        return _size;
    }

    public function set size(value:Point):void {
        _size = value;
    }

}

}