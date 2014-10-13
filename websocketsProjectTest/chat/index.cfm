<cfoutput>
	
		<link href="style.css" rel="stylesheet" ></link>
	<cfwebsocket name="mycfwebsocketobject" onopen="openHandler" onmessage="mymessagehandler"  subscribeto="Testchannel"  >
	#session.user#
	
		<div id="msgBox">
			<div id="boxHeader">
				
			</div>
			<div id="myDiv">
				<div id="time">
						
				</div>
				<div id="isTyping"> 	</div>
			</div>
				
				<div id="msgFeild">
				
					<form action="#CGI.Script_Name#" method="POST"  >
						
						<input type="hidden"  id="userSessionName" value="#session.user#" >
							
						<textarea rows="3" cols="40" name="msgArea" id="msgArea"></textarea>
						
						<input type="button"  onclick="sendMsg();"  value="SEND" id="sendbtn"  >
						<div id="time">
						
						</div>
							
					 </form>
				</div>	
		</div>
		
	<form method="post" id=form1>
		<input type="submit" name="logout" value="logout">
		
	</form>
	
	 
	
	
	
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<script src="javascript.js" ></script>
	
	
</cfoutput>