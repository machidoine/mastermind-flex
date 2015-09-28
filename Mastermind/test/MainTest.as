package
{
	import asunit.textui.TestRunner;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author mOveo Games
	 */
	public class MainTest extends Sprite
	{
		
		public function MainTest()
		{
			var unittests:TestRunner = new TestRunner();
			stage.addChild(unittests);
			unittests.start(AllTest, null, TestRunner.SHOW_TRACE);
		}
	
	}

}
