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
	public class BoardContainer extends Sprite
	{
		private var spriteFactory:SpriteFactory;
		
		public function BoardContainer()
		{
			super();
			
			spriteFactory = new SpriteFactory(new BitmapSheet(new Assets.SPRITESHEET_IMAGES(), new Assets.SPRITESHEET_JSON()));
			
			addEventListener(Event.ADDED_TO_STAGE, addOnStage);
		}
		
		private function addOnStage(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, addOnStage);
		}
		
		public function draw():void
		{
			var spritesheetGame:BitmapSheet = new BitmapSheet(new Assets.SPRITESHEET_IMAGES(), new Assets.SPRITESHEET_JSON());
			addChild(spriteFactory.createBackgroundBlack(600, 139));
			
			for (var i:int = 0; i < 10; i++)
			{
				if (i % 2 == 0)
				{
					
					var spriteBG_GrayBlack:Sprite = spriteFactory.createBackgroundGrayBlack(90, 72);
					spriteBG_GrayBlack.x = 0;
					spriteBG_GrayBlack.y = 139 + i * 72;
					addChild(spriteBG_GrayBlack);
					
					var spriteBG_Gray:Sprite = spriteFactory.createBackgroundGray(386, 72);
					spriteBG_Gray.x = 90;
					spriteBG_Gray.y = 139 + i * 72;
					addChild(spriteBG_Gray);
					
					var spriteBG_GrayBlack2:Sprite = spriteFactory.createBackgroundGrayBlack(124, 72);
					spriteBG_GrayBlack2.x = 386 + 90;
					spriteBG_GrayBlack2.y = 139 + i * 72;
					addChild(spriteBG_GrayBlack2);
					
				}
				else
				{
					
					var spriteBG_Gray2:Sprite = spriteFactory.createBackgroundGray(90, 72);
					spriteBG_Gray2.x = 0;
					spriteBG_Gray2.y = 139 + i * 72;
					addChild(spriteBG_Gray2);
					
					var spriteBG_White:Sprite = spriteFactory.createBackgroundWhite(386, 72);
					spriteBG_White.x = 90;
					spriteBG_White.y = 139 + i * 72;
					addChild(spriteBG_White);
					
					var spriteBG_Gray3:Sprite = spriteFactory.createBackgroundGray(124, 72);
					spriteBG_Gray3.x = 386 + 90;
					spriteBG_Gray3.y = 139 + i * 72;
					addChild(spriteBG_Gray3);
				}
				
				for (var j:int = 0; j < 6; j++)
				{
					var slotDisplay:PionSprite = new PionSprite(new Point(135 + j * 50, 155 + i * 72), new Bitmap(spritesheetGame.getTile(22).bitmap));
					addChild(slotDisplay);
				}
			}
		}
	
	}

}
