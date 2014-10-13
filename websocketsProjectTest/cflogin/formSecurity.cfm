

 
<cflogin idletimeout="1000">
	
	
	<cfif NOT (isDefined('form.userName') && isDefined('form.password'))>
		<cfinclude template="loginForm.cfm">
		<cfabort>
	
	<cfelse>
		<cfset service = new service()>
		<cfset userObjResponse =  service.getUser(form.userName,form.password)>
		
	 	<cfif userObjResponse.getSuccess()>
			<cfset userRecord = userObjResponse.getQryData()>
			
			<cfif userRecord.recordCount gt 0 >
				<cfloginuser name="#userRecord.userName#" password="#userRecord.userPassword#" roles="" >
				
 			<cfelse>
				invalid userName or password
				<cfinclude template="loginForm.cfm">
				<cfabort>
			</cfif>
			
		
		<cfelse>
		<cfset userErrors = userObjResponse.getErrors()>
			<cfloop array="#userErrors#" index="error">
				<cfoutput>#error#</cfoutput>
			</cfloop>
			<cfinclude template="loginForm.cfm"><cfabort>
			
		</cfif>
	
	</cfif>
	
</cflogin>

	