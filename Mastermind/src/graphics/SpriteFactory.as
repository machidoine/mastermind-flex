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
		static private var _instance:SpriteFactory;
		private var tileFactory:TileFactory;
		
		public function SpriteFactory(spriteSheet:TileFactory)
		{
			if (_instance)
				throw new Error("You can't instanciate this class because it is a singleton. Please use getInstance method.");
			
			this.tileFactory = spriteSheet;
		}
		
		static public function getInstance(spriteSheet:TileFactory):SpriteFactory
		{
			if (_instance == null)
				_instance = new SpriteFactory(spriteSheet);
				
			return _instance;
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
		
		public function createSlotPion():Sprite
		{
			return buildSpriteSized(SpriteEnum.SLOT_PION);		
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
			var tile:Tile = tileFactory.getTile(sprite);
			return createSpriteFrom(tile.bitmap, width, height);
		}
		
		private function buildSprite(sprite:Number):Sprite
		{
			var tile:Tile = tileFactory.getTile(sprite);
			return createSpriteFrom(tile.bitmap, tile.zone.width, tile.zone.height);
		}
		
				
		private function buildSpriteSized(sprite:Number):Sprite
		{
			var tile:Tile = tileFactory.getTile(sprite);
			return createSpriteFrom(tile.bitmap, tile.size.x, tile.size.y);
		}
	
	}
}