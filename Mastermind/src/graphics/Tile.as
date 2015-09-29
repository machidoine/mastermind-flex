package graphics
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Tile
	{
		private var _bitmap:BitmapData;
		private var _zone:Zone;
		private var _size:Point;
		
		public function Tile(bitmap:BitmapData, zone:Zone, size:Point)
		{
			this.size = size;
			this.zone = zone;
			this.bitmap = bitmap;
		
		}
		
		public function get bitmap():BitmapData
		{
			return _bitmap;
		}
		
		public function set bitmap(value:BitmapData):void
		{
			_bitmap = value;
		}
		
		public function get zone():Zone
		{
			return _zone;
		}
		
		public function set zone(value:Zone):void
		{
			_zone = value;
		}
		
		public function get size():Point 
		{
			return _size;
		}
		
		public function set size(value:Point):void 
		{
			_size = value;
		}
	
	}

}