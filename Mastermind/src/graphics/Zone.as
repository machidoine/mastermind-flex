package graphics
{
	
	/**
	 * ...
	 * @author ...
	 */
	public class Zone
	{
		private var _width:Number;
		private var _height:Number;
		
		public function Zone(width:Number, height:Number)
		{
			this.height = height;
			this.width = width;
		
		}
		
		public function get width():Number
		{
			return _width;
		}
		
		public function set width(value:Number):void
		{
			_width = value;
		}
		
		public function get height():Number
		{
			return _height;
		}
		
		public function set height(value:Number):void
		{
			_height = value;
		}
	}

}