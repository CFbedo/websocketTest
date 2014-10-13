<h1>
	page one 
</h1>
<p>
	<a href="secondPafe.cfm">second page</a>
</p>
<script src="javascript.js" type="text/javascript" ></script>

<cfoutput>
	
	#getAuthUser()#
	 
	
</cfoutput>


	<cfwebsocket name="TestSocket" onMessage="mymessagehandler" subscribeto="Testchannel" onopen="openHandler" usecfauth="true" /> 
	<br> 
		Age <input id="age" name="age" type="text"> 
	<br> 



	<div id="myDiv"></div>
		
		<form method="post"  >
			
				<input type="submit" name="logout" value="logout">
			
		</form>

<cfif isDefined('form.logout') >
	<cflogout >
	<cflocation url="index.cfm" >
</cfif>

