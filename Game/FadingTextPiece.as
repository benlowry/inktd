package Game
{
	import flash.geom.Point;
	
	public final class FadingTextPiece
	{
		private static var Pool:Vector.<FadingTextPiece> = new Vector.<FadingTextPiece>();
	
		public var message:String;
		public var opacity:int;
		public var countDown:int;
		public var position:Point = new Point();
		public var color:uint;
		
		public static function create(message:String, x:int, y:int, color:uint):FadingTextPiece
		{
			var textblock:FadingTextPiece = Pool.length > 0 ? Pool.pop() : new FadingTextPiece();
			textblock.message = message;
			textblock.position.x = x + 10;
			textblock.position.y = y + 10;
			textblock.opacity = 100;
			textblock.countDown = 50;
			textblock.color = color;
			return textblock;
		}
		
		public static function dispose(piece:FadingTextPiece):void
		{
			Pool.push(piece);
		}
	}
}