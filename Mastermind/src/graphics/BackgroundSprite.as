package graphics
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class BackgroundSprite extends Sprite
	{
		private var spriteFactory:SpriteFactory;
		private var lineCount:Number;
		
		public function BackgroundSprite(lineCount:Number)
		{
			super();
			this.lineCount = lineCount;
			
			spriteFactory = SpriteFactory.getInstance(TileFactory.getInstance(new Assets.SPRITESHEET_IMAGES(), new Assets.SPRITESHEET_JSON()));
			
			addEventListener(Event.ADDED_TO_STAGE, addOnStage);
		}
		
		public function render():void
		{
			for (var i:int = 0; i < lineCount; i++)
			{
				addLines(i);
			}
		}
		
		private function addOnStage(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, addOnStage);
		}
		
		private function addLines(i:int):void 
		{
			var lineHeight:Number = stage.stageHeight / lineCount;
			var emptyFirstColumnSize:Number = 0.15 * stage.stageWidth;
			var playBoardColumnSize:Number = 0.65 * stage.stageWidth;
			var scoreBoarColumnSize:Number = 0.20 * stage.stageWidth;

			var line:LineSprite = new LineSprite();
			line.y = i * lineHeight;
			addChild(line);
			
			if (i % 2 == 0)
			{
				line.addColumn(spriteFactory.createBackgroundGrayBlack(emptyFirstColumnSize, lineHeight));
				line.addColumn(spriteFactory.createBackgroundGray(playBoardColumnSize, lineHeight));
				line.addColumn(spriteFactory.createBackgroundGrayBlack(scoreBoarColumnSize, lineHeight));				
			}
			else
			{
				line.addColumn(spriteFactory.createBackgroundGray(emptyFirstColumnSize, lineHeight));
				line.addColumn(spriteFactory.createBackgroundWhite(playBoardColumnSize, lineHeight));
				line.addColumn(spriteFactory.createBackgroundGray(scoreBoarColumnSize, lineHeight));
			}
		}
	}
}