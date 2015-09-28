package graphics
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	public class BitmapSheet extends Sprite
	{
		private var _tileSheetBitmapData:BitmapData;
		private var _canvasBitmapData:BitmapData;
		private var _tileSheetFile:Object;
		
		private var _tilePoint:Point;
		
		public function BitmapSheet(tileSheetBitmap:Bitmap, tileSheetFile:String)
		{
			_tileSheetBitmapData = tileSheetBitmap.bitmapData;
			_tileSheetFile = (JSON.parse(tileSheetFile) as Object);
			
			_tilePoint = new Point(0, 0);
			
			addEventListener(Event.REMOVED_FROM_STAGE, remove);
		}
		
		public function getTile(tileNumber:int):Tile
		{
			var tilerectangle:Rectangle = new Rectangle(_tileSheetFile.frames[tileNumber].frame.x, _tileSheetFile.frames[tileNumber].frame.y, _tileSheetFile.frames[tileNumber].frame.w, _tileSheetFile.frames[tileNumber].frame.h);
			
			_canvasBitmapData = new BitmapData(_tileSheetFile.frames[tileNumber].frame.w, _tileSheetFile.frames[tileNumber].frame.h, true);
			
			_canvasBitmapData.copyPixels(_tileSheetBitmapData, tilerectangle, _tilePoint);
			
			return new Tile(_canvasBitmapData.clone(), new Zone(_tileSheetFile.frames[tileNumber].frame.w, _tileSheetFile.frames[tileNumber].frame.h));
		}

		public function remove(e:Event):void
		{
			_tileSheetBitmapData.dispose();
			_canvasBitmapData.dispose();
		}
	}
}
