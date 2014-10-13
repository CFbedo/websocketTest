/*	function  msgHandler(messageobj) {
		
		 var ouputdiv=document.getElementById("myDiv"); 
         var message = ColdFusion.JSON.encode(messageobj); 
         ouputdiv.innerHTML+=message +"<br >" +"<br>"; 
	}
       
        
	function subscribeMe(){
       	 
              var clientAge = document.getElementById("age").value; 
              
              TestSocket.subscribe("Testchannel", {age: clientAge}); 
                
	}*/
	
	function mymessagehandler(messageobj){
		//alert(JSON.stringify(messageobj))
	    	//Converting the JS object to a string and display  in "myDiv"
	         if(messageobj.data){
	         	  var message = messageobj.data;
	           var txt=document.getElementById("myDiv");
	           txt.innerHTML +=message  +"<br>";
	         }
	          //kepping the scroll bar to the buttom
	          var element = document.getElementById("myDiv");
	   		  element.scrollTop = element.scrollHeight;
	 }
    
var openHandler = function() 
    { 
        TestSocket.publish("Testchannel","hii"); 
    }