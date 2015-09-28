package
{
	import app.MastermindApplication;
	import asunit.framework.Assert;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import graphics.Assets;
	import graphics.BoardContainer;
	import graphics.PionSprite;
	import graphics.BitmapSheet;
	
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class Main extends Sprite
	{
		private var _mastermindApplication:MastermindApplication;
		
		public function Main():void
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		// Initialisation apres ajout au Stage
		private function init(e:Event = null):void
		{
			//TODO : Remove
			var boardContainer:BoardContainer = new BoardContainer();
			addChild(boardContainer);
			boardContainer.draw();
			
			removeEventListener(Event.ADDED_TO_STAGE, init);
			_mastermindApplication = new MastermindApplication();
			_mastermindApplication.run();
		}
		
	}
	
}
