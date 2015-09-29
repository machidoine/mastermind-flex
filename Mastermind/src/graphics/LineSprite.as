package graphics 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author ...
	 */
	public class LineSprite extends Sprite
	{
		
		private var currentColumnPosition:int;
		
		public function LineSprite() 
		{
			super();
			currentColumnPosition = 0;
		}
		
		public function addColumn(spriteColumn:Sprite) {
			if (spriteColumn.width + currentColumnPosition > stage.stageWidth) {
				// TODO: exception if adding a column on LineSprite greather than stageWidth
			}
			
			spriteColumn.x = currentColumnPosition;
			spriteColumn.y = 0;
			
			currentColumnPosition += spriteColumn.width;
			
			addChild(spriteColumn);
		}
		
	}

}