package graphics.framework {
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.geom.Point;
import flash.geom.Rectangle;

public class TileFactory extends Sprite {
    static private var _instance:TileFactory;

    static public function getInstance(tileSheetBitmap:Bitmap, tileSheetFile:String):TileFactory {
        if (_instance == null)
            _instance = new TileFactory(tileSheetBitmap, tileSheetFile);
        return _instance;
    }

    public function TileFactory(tileSheetBitmap:Bitmap, tileSheetFile:String) {
        if (_instance)
            throw new Error("You can't instanciate this class because it is a singleton. Please use getInstance method.");


        _tileSheetBitmapData = tileSheetBitmap.bitmapData;
        _tileSheetFile = (JSON.parse(tileSheetFile) as Object);

        _tilePoint = new Point(0, 0);

        addEventListener(Event.REMOVED_FROM_STAGE, remove);
    }
    private var _tileSheetBitmapData:BitmapData;
    private var _canvasBitmapData:BitmapData;
    private var _tileSheetFile:Object;
    private var _tilePoint:Point;

    public function getTile(tileNumber:int):Tile {
        var tilerectangle:Rectangle = new Rectangle(_tileSheetFile.frames[tileNumber].frame.x, _tileSheetFile.frames[tileNumber].frame.y, _tileSheetFile.frames[tileNumber].frame.w, _tileSheetFile.frames[tileNumber].frame.h);

        _canvasBitmapData = new BitmapData(_tileSheetFile.frames[tileNumber].frame.w, _tileSheetFile.frames[tileNumber].frame.h, true);

        _canvasBitmapData.copyPixels(_tileSheetBitmapData, tilerectangle, _tilePoint);

        return new Tile(_canvasBitmapData.clone(), new Zone(_tileSheetFile.frames[tileNumber].frame.w, _tileSheetFile.frames[tileNumber].frame.h), tilerectangle.size);
    }

    public function remove(e:Event):void {
        _tileSheetBitmapData.dispose();
        _canvasBitmapData.dispose();
    }
}
}
