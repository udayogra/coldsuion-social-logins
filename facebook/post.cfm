<cfhttp  url="https://graph.facebook.com/#SESSION.fbinfo.id#/feed?access_token=#SESSION.fbinfo.access_token#" method="post" >
   <cfhttpparam type="formfield" name="message" value="#URL.status#">
</cfhttp>

<cfset session.posted = 'true'>
<cflocation url="oauth.cfm">