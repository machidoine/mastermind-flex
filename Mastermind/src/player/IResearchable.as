package player
{
		import board.PlayBoard;
		import board.row.Row;
		import player.IResearchable;
	/**
	 * ...
	 * @author mOveo Games
	 */
	public interface IResearchable extends IPlayerable
	{
		function search(playBoard:PlayBoard):Row;
	}
	
}
