component 
{
	
	public Response function getUser(string name, string  password){
		
		var userName = arguments.name;
		var upassword = arguments.password;
		var Response = new Response(); 
		var userDAL = new userDAL();
		var Error = [];
		
		if(trim(password) == ''){
			Error[1] = 'User Name cant be empty <br>';
			Response.setSuccess(false);
		}
		if (trim(password) == ''){
			Error[2] = 'Password cant be empty <br>';
			Response.setSuccess(false);
		}
		
		if(arrayLen(Error) gt 0){
			Response.setErrors(Error);
		}
		
		else{
			Response.setSuccess(true);
			userResult = userDAL.getUsers(userName,upassword);
			Response.setQryData(userResult);
		}
		
		
		return Response; 
		
	}
	
}