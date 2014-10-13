component
{
  
   
   
   
   	this.sessionManagement= true;
	this.sessionTimeout = createtimespan(0,0,45,0);
	this.name = "myChat"; 
	this.wschannels = [{name="Testchannel"}]; 
	
	
	public boolean function onRequestStart( string page )
	
	
	 
	{
		if(isDefined('form.userName')){
			session.user = form.userName;
			return true;
		}	else if(!isDefined("Session.User"))
		{
			include "loginForm.cfm";
			return false;
		}
		else
		{
			if(isdefined("form.logout"))
			{
				structclear(session);
				include "loginForm.cfm";
				return false;
			}
				
			return true;
		}
		return true;
		
	}
 
	
   
   
}