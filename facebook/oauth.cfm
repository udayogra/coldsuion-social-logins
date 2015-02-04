<link rel="stylesheet" type="text/css" href="buttons.css"/>
<link rel="stylesheet" type="text/css" href="demo.css"/>
<body style='width:1000px'>
<h1>Multiple Social Logins and Plugins </h1>
<table><tr><td>
<!---Google --->
<cfif (not isdefined('Session.googleinfo'))>
<div class="commentbox" style="height:80">

<input type="button" value="Login with Google"
					onclick="window.top.location='googlelogin.cfm'" style="cursor: pointer;" class="button green morph">
<cfelse>
<div class="commentbox">
<cfif isdefined('Session.googleinfo')>
<cfset rr = Session.googleinfo>
 <cfoutput>
 <b>Google Login - Welcome, here is your basic info</b></br>
   <img width="100" class="imageswrapper" height="100" src = "#rr.other.picture#"/></br>
  <span class="label"> Name</span> : <b>#rr.name#</b></br>
   <span class="label">Gender </span>: <b>#rr.gender#</b></br>
   <span class="label">Locale </span>: <b>#rr.locale#</b></br>
   <span class="label">Google Id </span>: <b>#rr.id#</b></br>
   <span class="label">Access Token </span>: <b>#Left(rr.access_token,15)#</b>
</cfoutput>
</cfif>

</cfif>
</div>
</td>

<td>

<!---Facebook --->

<cfif (not isdefined('Session.fbinfo'))>
<div class="commentbox" style="height:80">

<input type="button" value="Login with Facebook"
					onclick="window.top.location='fblogin.cfm'" style="cursor: pointer;" class="button blue morph">
<cfelse>
<div class="commentbox">

<cfif isdefined('Session.fbinfo')>
<cfset rr = Session.fbinfo>
 <cfoutput>
 <b>Facebook Login - Welcome, here is your basic info</b></br>
 <img class="imageswrapper" width="100" height="100" src = "http://graph.facebook.com/#rr.id#/picture?type=large"/></br>
  <span class="label">Name</span> : <b>#rr.name#</b></br>
    <span class="label">Gender</span> : <b>#rr.gender#</b></br>
   <span class="label">Locale </span>: <b>#rr.locale#</b></br>
   <span class="label">Facebook Id </span> : <b>#rr.id#</b></br>
   <cfif isdefined('rr.other.email')>
   <span class="label">Email </span> : <b>#rr.other.email#</b></br>
     <span class="label">Home town</span> : <b>#rr.other.location.name#</b></br>
   <span class="label">Work</span> : <b>#rr.other.work[1].employer.name#</b></br>
   </cfif>
  <span class="label">Access Token </span>: <b>#Left(rr.access_token,15)#</b>
</cfoutput>
</cfif>

</cfif>
</div>
</td></tr></table>
</br>
</br></br>

<cfif isdefined('Session.fbinfo')>
<div class="commentbox" style="height:100;margin-left:300">
<cfif isdefined('session.posted')>
  <span style="color:green">Posted successfully</span></br>
</cfif>
  Post Status update : <input type="text" id = "status"/> 
<input type="button" value="Post"
					onclick="window.top.location='post.cfm?status=' + document.getElementById('status').value" style="cursor: pointer;" class="button orange morph"> 
</div>
</cfif>

<cfif isdefined('session.fbinfo') or isdefined('session.googleinfo')>

<div class="commentbox" style="height:80;width:170;margin-left:380;margin-top:40">
 <input type="button" value="Logout"
					onclick="window.open('clearsession.cfm')" style="cursor: pointer;" class="button gray morph"> 
</div>
</cfif>


<div style="margin-top:50">
<h1><span >Social Plugins </span></h1>
</div>
 <div class="commentbox" style="height:630;margin-left:300px;">
<span class="plugin">Follow plugin:</span></br>
    <cf_socialplugin type="follow" username="udayogra" showusername="false" showcount="true" ></br>
<span class="plugin">Tweet plugin:</span></br>

<cf_socialplugin type="tweet" tweettext="hello ji" hashtag="ipl" recommend="udayogra" via="udayogras" language="es"></br>



 <span class="plugin" style='margin-top:20px'>Commentbox plugin:</span></br>

 <cf_socialplugin type="commentbox" url="http://www.facebook.com/AdobeColdFusion" width="300" ></br>
 
 <span class="plugin" style='margin-top:20px'>Likebox plugin:</span></br>

 <cf_socialplugin  type="likebox" url="https://www.facebook.com/AdobeColdFusion" height="200" ><br>
 
<span class="plugin" style='margin-top:20px'>Like plugin:</span></br>

 <cf_socialplugin style='margin-left:130px;' type="like"  url="http://www.facebook.com/AdobeColdFusion" showfaces="false" layout="button_count" width="170" /></br>

 <span class="plugin" style='margin-top:20px'>Plusone plugin:</span></br>

 <cf_socialplugin type="plusone"  url="https://facebook.com/tendulkarogra" /></br>


</div>

</body>