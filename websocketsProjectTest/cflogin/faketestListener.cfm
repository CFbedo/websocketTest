<cfset str ={}>
<cfset str.age = 20>

<cfset testListner = new testListener()>
<cfset result = testListner.allowSubscribe(str)><cfdump var="#result#">
