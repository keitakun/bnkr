package
{
	import flash.events.Event;
	import com.unit9.bnkr.version.addSignature;
	import flash.display.Sprite;

	/**
	 * @author @silviopaganini | s2paganini.com
	 * unit9 2012 
	 * All rights reserved.
	 */
	public class Testerz extends Sprite
	{
		public function Testerz()
		{
			if(stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			addSignature(this);
		}
	}
}
