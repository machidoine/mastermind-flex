package
{
	import asunit.framework.TestSuite;
	import board.PlayBoardTest;
	
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class AllTest extends TestSuite
	{
		
		public function AllTest()
		{
			super();
			addTest(new PlayBoardTest("isFullWithEmptyBoardShouldReturnFalse"));
			addTest(new PlayBoardTest("isFullWithFullBoardShouldReturnTrue"));
			
		}
	
	}

}
