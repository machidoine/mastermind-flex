package board
{
	import asunit.framework.TestCase;
	import flash.sampler.getSize;
	import flash.sampler.getSize;
	import flash.sampler.getSize;
	import flash.sampler.getSize;
	import flash.sampler.getSize;
	import flash.sampler.getSize;
	import flash.sampler.getSize;
	
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class PlayBoardTest extends TestCase
	{
		
		private var playBoard:PlayBoard;
		
		public function PlayBoardTest(testMethod:String)
		{
			super(testMethod);
		}
		
		override protected function setUp():void
		{
			playBoard = new PlayBoard(3);
			super.setUp();
		}
		
		public function isFullWithEmptyBoardShouldReturnFalse():void
		{
			var actual:Boolean = playBoard.isFull();
			
			assertEquals(actual, false);
		}
		
		public function isFullWithFullBoardShouldReturnTrue():void
		{
			initFullBoard();
			
			var actual:Boolean = playBoard.isFull();
			
			assertEquals(actual, true);
		}
		
		private function initFullBoard():void
		{
			var row:Row = createFullRow();
			
			for (var j:int = 0; j < playBoard.getMaxSize(); j++)
			{
				playBoard.addRow(row);
				
			}
		}
		
		private function createFullRow():Row
		{
			var row:Row = new Row();
			var pion:Pion = new Pion(2);
			for (var i:int = 0; i < Row.SIZE; i++)
			{
				row.addPion(pion);
			}
			
			return row;
		}
	}

}
