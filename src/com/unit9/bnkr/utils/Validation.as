package com.unit9.bnkr.utils
{
	/**
	 * @author silvio paganini | s2paganini.com
	 */
	public class Validation
	{
		public static function email(whichEmail : String) : Boolean 
		{
			var regExpLine : RegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]{2,64}(\.[a-z0-9-]{2,64}){0,1}\.[a-z]{2,4}$/;
			
			var result : Object = regExpLine.exec(whichEmail);
			return (!(result == null));
		}
		
		public static function date(whichDate : String) : Boolean
		{
			var regExpLine : RegExp = /^(?:(?:(?:0?[1-9]|1\d|2[0-8])\/(?:0?[1-9]|1[0-2]))\/(?:(?:1[6-9]|[2-9]\d)\d{2}))$|^(?:(?:(?:31\/0?[13578]|1[02])|(?:(?:29|30)\/(?:0?[1,3-9]|1[0-2])))\/(?:(?:1[6-9]|[2-9]\d)\d{2}))$|^(?:29\/0?2\/(?:(?:(?:1[6-9]|[2-9]\d)(?:0[48]|[2468][048]|[13579][26]))))$/;
			var result : Object = regExpLine.exec(whichDate);
			return (!(result == null));
		}
	}
}
