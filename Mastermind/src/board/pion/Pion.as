package board.pion
{
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class Pion
	{
		private var _color:int;
		
		private var _x:int;
		private var _y:int;
		
		public function Pion(color:int)
		{
			_color = color;
		}
		
		public function get color():int
		{
			return _color;
		}
		
		public function get y():int
		{
			return _y;
		}
		
		public function set y(value:int):void
		{
			_y = value;
		}
		
		public function get x():int
		{
			return _x;
		}
		
		public function set x(value:int):void
		{
			_x = value;
		}
		
		public function toString():String
		{
			return "" + _color;
		}
		
	}

}
