package Game
{
	import flash.display.BitmapData;
	
	public class Screenshot
	{
		public static function create():BitmapData
		{
			var b:BitmapData = new BitmapData(600, 400);
			b.draw(Main.MAIN);
			
			return b;			
		}
	}
}