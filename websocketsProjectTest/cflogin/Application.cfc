component{
	
	
	this.sessionManagement= true;
	this.sessionTimeout = createtimespan(0,0,45,0);
	this.name = "customoptionexample"; 
	this.wschannels = [{name="Testchannel", cfclistener="TestListener"}]; 
	
	
	public boolean function onRequestStart(string targetPage){
		
		
		include 'formSecurity.cfm';
		return true;
	}
	
	


}