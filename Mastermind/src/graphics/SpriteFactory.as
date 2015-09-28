package graphics
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author ...
	 */
	public class SpriteFactory
	{
		private var bitmapSheet:BitmapSheet;
		
		public function SpriteFactory(spriteSheet:BitmapSheet)
		{
			this.bitmapSheet = spriteSheet;
		}
		
		public function createEmptyCell():Sprite
		{
			return buildSprite(SpriteEnum.EMPTY_CELL);
		
		}
		
		public function createBackgroundBlack(width:Number, height:Number):Sprite
		{
			return buildSpriteWithZone(SpriteEnum.BACKGROUND_BLACK, width, height);
		
		}
		
		public function createBackgroundGrayBlack(width:Number, height:Number):Sprite
		{
			return buildSpriteWithZone(SpriteEnum.BACKGROUND_GRAY_BLACK, width, height);
		
		}
		
		public function createBackgroundGray(width:Number, height:Number):Sprite
		{
			return buildSpriteWithZone(SpriteEnum.BACKGROUND_GRAY, width, height);
		
		}
		
		public function createBackgroundWhite(width:Number, height:Number):Sprite
		{
			return buildSpriteWithZone(SpriteEnum.BACKGROUND_WHITE, width, height);
		
		}
		
		public function createSlotPion(width:Number, height:Number):PionSprite
		{
			//return new PionSprite(new Point(135 + j * 50, 155 + i * 72), new Bitmap(spritesheetGame.getTile(22).bitmap));
			//return buildSpriteWithZone(SpriteEnum.SLOT_PION, width, height);
			return null;
		
		}
		
		private function createSpriteFrom(bitmap:BitmapData, width:Number, height:Number):Sprite
		{
			var sprite:Sprite = new Sprite();
			
			sprite.graphics.beginBitmapFill(bitmap);
			sprite.graphics.drawRect(0, 0, width, height);
			sprite.graphics.endFill();
			
			return sprite;
		}
		
		private function buildSpriteWithZone(sprite:Number, width:Number, height:Number):Sprite
		{
			var tile:Tile = bitmapSheet.getTile(sprite);
			return createSpriteFrom(tile.bitmap, width, height);
		}
		
		private function buildSprite(sprite:Number):Sprite
		{
			var tile:Tile = bitmapSheet.getTile(sprite);
			return createSpriteFrom(tile.bitmap, tile.zone.width, tile.zone.height);
		}
	
	}
}