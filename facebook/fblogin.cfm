 <cfoauth type="facebook" clientid='183686488362891'  
 secretkey="YOURSECRETKEY" state="fb" result="r" scope="read_stream,user_location,user_work_history,publish_stream,email" redirecturi="http://localhost:8500/social/facebook/fblogin.cfm">
 
 
<cfset Session.fbinfo = #r#>
<cflocation url = "oauth.cfm">
