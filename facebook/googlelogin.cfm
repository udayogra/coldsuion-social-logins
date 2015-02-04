 <cfoauth type="google" clientid='107700035446-gkl8d5ve473redbsmjseavrca2mfmdgb.apps.googleusercontent.com'  
 secretkey="yoursecretkey" state="google" result="r" redirecturi="http://localhost:8500/social/facebook/googlelogin.cfm">
 
 
<cfset Session.googleinfo = #r#>
<cflocation url = "oauth.cfm">