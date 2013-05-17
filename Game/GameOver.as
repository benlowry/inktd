package Game
{
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.filters.GlowFilter;
	import flash.net.navigateToURL;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	import SWFStats.*;
	
	public final class GameOver extends MovieClip
	{
		public function GameOver()
		{
			addEventListener(Event.ADDED_TO_STAGE, initialize, false, 0, true);
		}

		private function initialize(e:Event):void
		{
			closeButton.Label.text = CloseButton.Label2.text = "QUIT";
			closeButton.addEventListener(MouseEvent.CLICK, qQuit, false, 0, true);
			
			finalScore.text = Format(Main.PScore);
			
			var seconds:int = Main.PTime % 60;
			var minutes:int = Math.floor(Main.PTime / 60);
			var mstr:String = minutes < 10 ? "0" + minutes : minutes.toString();
			var sstr:String = seconds < 10 ? "0" + seconds : seconds.toString();

			finalTime.text = mstr + ":" + sstr;
			
			Main.commentBox.Set("&$(# just happened?? 1/5");
		}
		
		private function format(n:Number):String
		{
			var nstring = n.toString();

			if(nstring.length < 4)
				return nstring;
				
			var formatted:Array = new Array();
			var start:int;
			var end:int = nstring.length;
			
			while(end > 0) 
			{
				start = Math.max(end - 3, 0);
				formatted.unshift(nstring.slice(start, end));
				end = start;
			}
			
			return formatted.join(",");
		}

		private function quit(e:MouseEvent):void
		{
			parent.addChild(new Menu());			
			parent.removeChild(this);
			Main.PTime = 0;
			Main.PScore = 0;			
		}
	}
}
