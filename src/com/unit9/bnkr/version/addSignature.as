package com.unit9.bnkr.version
{
	import flash.display.Stage;
	import flash.ui.ContextMenu;
	import flash.ui.ContextMenuItem;
	/**
	 * @author @silviopaganini | s2paganini.com
	 * unit9 2012 
	 * All rights reserved.
	 */
	public function addSignature(stage : Stage) : void
	{
		var cx : ContextMenu = new ContextMenu();
		cx.hideBuiltInItems();
		ContextMenuItem;
			
		/*FDT_IGNORE*/
		try
		{
			if(CONFIG::VERSION != undefined) cx.customItems = [new ContextMenuItem("unit9.com :: Version " + CONFIG::VERSION + " :: All rights reserved", true, false)];
			else cx.customItems = [new ContextMenuItem("unit9.com :: All rights reserved", true, false)];
			
		} catch (e : *) {
			
			cx.customItems = [new ContextMenuItem("unit9.com :: All rights reserved", true, false)];
			
		}
		/*FDT_IGNORE*/
			
		stage.contextMenu = cx;
	}
}
