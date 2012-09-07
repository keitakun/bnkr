package com.unit9.bnkr.version
{
	import com.unit9.bnkr.ns.CUSTOM;

	import flash.display.InteractiveObject;
	import flash.ui.ContextMenu;
	import flash.ui.ContextMenuItem;
	/**
	 * @author @silviopaganini | s2paganini.com
	 * unit9 2012 
	 * All rights reserved.
	 */
	
	
	public function addSignature(stage : InteractiveObject) : void
	{
		var cx : ContextMenu = new ContextMenu();
		cx.hideBuiltInItems();

		try
		{
			cx.customItems = [new ContextMenuItem("unit9.com :: Version " + CUSTOM::VERSION + " :: All rights reserved" + new Date().getFullYear().toString(), true, false)];

		} catch (e : *) {
			
			cx.customItems = [new ContextMenuItem("unit9.com :: All rights reserved " + new Date().getFullYear().toString(), true, false)];
		}
			
		stage.contextMenu = cx;
	}
}
