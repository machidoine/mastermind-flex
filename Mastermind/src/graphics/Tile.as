package graphics
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Tile
	{
		private var _bitmap:BitmapData;
		private var _zone:Zone;
		
		public function Tile(bitmap:BitmapData, zone:Zone)
		{
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
	
	}

}