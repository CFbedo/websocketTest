<cfcomponent>
	
	<cffunction name="getUsers" >
		<cfargument name="arg_userName" required="true" type="string" >
		<cfargument name="arg_password" required="true" type="string" >
 
		<cfset var qry_getUser = "">
		<cfquery name="qry_getUser" datasource="insurance" >
			select * from users
		
		where userName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.arg_userName#">
		
		and userPassword = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.arg_password#">
		
		</cfquery>
		 
		<cfreturn qry_getUser>
		
	</cffunction>

</cfcomponent>