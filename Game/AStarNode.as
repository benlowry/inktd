package Game
{
	public final class AStarNode
	{
		public var X:int;
		public var Y:int;
		public var G:Number = 0;
		public var H:Number = 0;
		public var F:Number = 0;
		public var Parent:AStarNode = null;
		public var Walkable:Boolean = false;
		public var TravelCost:int;
		
		public function AStarNode(x:int, y:int, walkable:Boolean = true)
		{
			X = x;
			Y = y;
			Walkable = walkable;
		}
	}
}
