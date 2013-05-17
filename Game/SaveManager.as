package Game
{
	import flash.net.SharedObject;

	public final class SaveManager
	{	
		public static function soundEnabled():Boolean
		{
			var cookie:SharedObject = SharedObject.getLocal("settings");		
			
			if(cookie.data["sound"] == undefined)
				return true;
			else
				return cookie.data["sound"] == "0";
		}
		
		public static function musicEnabled():Boolean
		{
			var cookie:SharedObject = SharedObject.getLocal("settings");		
			
			if(cookie.data["music"] == undefined)
				return true;
			else
				return cookie.data["music"] == "0";
		}

		public static function saveSettings():void
		{
			var cookie:SharedObject = SharedObject.getLocal("settings");
			cookie.data["sound"] = SoundManager.SoundOn ? "0" : "1";
			cookie.data["music"] = SoundManager.MusicOn ? "0" : "1";
			cookie.flush();
		}
	}
}