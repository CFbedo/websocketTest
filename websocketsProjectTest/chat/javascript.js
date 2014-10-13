//bedo
	
//setup before functions
var typingTimer;                //timer identifier
var doneTypingInterval = 1000;  //time in ms, 5 second for example
//user name 
var userName = document.getElementById('userSessionName').value;

	//on keyup, start the countdown
			
	function sendMsg(){
		//alert(JSON.stringify(obj));
	
		
		$('#msgArea').keyup(function(){
				 	var ob = new Object();
		ob.userName = document.getElementById('userSessionName').value;
		ob.message = document.getElementById('msgArea').value;
				 $("#isTyping").html("<i><small>" + userName +  " is typing </small> </i>")
			    clearTimeout(typingTimer);
			    typingTimer = setTimeout(doneTyping, doneTypingInterval);
				
				
			});
		
				
			
			//on keydown, clear the countdown 
			$('#msgArea').keydown(function(){
			    clearTimeout(typingTimer);
			});
			
			//user is "finished typing," do something
			function doneTyping () {
			   $("#isTyping").html("");
			}
			
			
		//publish data to websocket
		if($("#msgArea").val() != "" ){
		mycfwebsocketobject.publish("Testchannel", ob);
				$("#msgArea").val("");
		        $("#msgArea").focus();
		       
		 }
	         
	}
	 
	
	function mymessagehandler(messagearg){
		var messageobj = messagearg;
		console.log(messageobj)
		
	    if(messageobj.type == 'data'){
	    
	    userData = messageobj.data;
	    userName = userData.userName ;
	    userMsg = userData.message;
		   // var message = userData.userName + userData.message;
		    var txt=document.getElementById("myDiv");
	        var t = new Date().toLocaleString();
	        $("#time").append('<small>' + t + " </small> <br>");
			txt.innerHTML += "<strong>" +  userName + "</strong>" + ": " + " " +  userMsg + "<br>";
			
		
	          
	    }
	          //kepping the scroll bar to the buttom
	          var element = document.getElementById("myDiv");
	   		  element.scrollTop = element.scrollHeight;
		
	 }


	
	function openHandler(){
		
		$("#boxHeader").html('Connected')
	}
	



