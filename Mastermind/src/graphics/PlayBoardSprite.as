package graphics 
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author ...
	 */
	public class PlayBoardSprite extends Sprite 
	{
		
		public function PlayBoardSprite() 
		{
			super();
		}
		
		public function render():void 
		{
			var spriteFactory:SpriteFactory = SpriteFactory.getInstance(TileFactory.getInstance(new Assets.SPRITESHEET_IMAGES(), new Assets.SPRITESHEET_JSON()));
			
			for (var j:int = 0; j < 10; j++)
			{
				var lineSprite:LineSprite = new LineSprite();
				lineSprite.y = j * stage.stageHeight / 10;
				addChild(lineSprite);
				
				for (var i:int = 0; i < 6; i++) {
					//var slotDisplay:Sprite = new PionSprite(new Point(135 + j * 50, 155 + i * 72), new Bitmap(spritesheetGame.getTile(22).bitmap));
					var slotDisplay:Sprite = spriteFactory.createSlotPion();
					lineSprite.addColumn(slotDisplay);
				}
				
			}
		}
		
	}

}