<!---
  --- Auth
  --- ----
  ---
  --- author: Leonell
  --- date:   13/03/16
  --->
<cfcomponent name="Auth" ExtDirect="true">
	<cffunction name="Login" ExtDirect="true" ExtFormHandler="true">

		<cfset retStruct = StructNew() />
		<cfset retStruct["success"] = "true" />

		<cfset username = trim(form.username) />
		<cfset pwd = trim(form.password)/ >

		<cfset userobjonalias = EntityLoad("User", { USERALIAS = #username#, USERPASSWORD = #pwd#}, false) />

		<cfif ArrayLen(userobjonalias) gt 0>
			<cfset uo = userobjonalias />
		<cfelse>
			<cfset userobj = EntityLoad("User", { USEREMAIL = #username#, USERPASSWORD = #pwd#}, false) />
			<cfset uo = userobj />
		</cfif>

		<cfif ArrayLen(uo) gt 0 > <!--- Valid user account --->

			<cfset retStruct["message"] = "notauthenticated" />
			<cfset retStruct["detail"] = "User name or password is not found. Forgot password." />

			<cflogin>
				<cfloginuser name = "#form.username#" password = "#pwd#" roles = "user" />
				<cfset retStruct["message"] = "authenticated" />
				<cfset retStruct["detail"] = "" />
				<cfset session["uid"] = uo[1].getUSERUID() />
				<cfset session["pid"] = uo[1].getUSERUID() />
				<cfset session["userdefaultapp"] = "home" />
				<cfset session["usertype"] = uo[1].getUSERTYPE() />
				<cfset session["useremail"] = uo[1].getUSEREMAIL() />
				<cfset session["usersalutation"] = "Mr" />
				<cfset session["usersuffix"] = "Jr" />
				<cfset session["userfirstname"] = uo[1].getUSERFIRSTNAME() />
				<cfset session["userlastname"] = uo[1].getUSERLASTNAME() />
				<cfset session["usermiddlename"] = uo[1].getUSERLASTNAME() />
				<cfset session["usermessagestatus"] = "Hello everyone" />
				<cfset session["userimage"] = "sample image" />
				<cfset session["usercompanycode"] = "FBC" />
				<cfset session["usercompanyname"] = "Filinvest Baseline" />
				<cfset session["usersubcompanycode"] = "Filinvest Baseline Sub" />
				<cfset session["usercompanyemail"] = "leonelllagumbay@gmail.com" />
				<cfset session["usercompanyslogan"] = "We make your dreams" />
				<cfset session["accesskey"] = "" />
				<cfset session["applicationkey"] = "" />

			</cflogin>


			<cfset retStruct["duration"] = 5000 />
			<cfset retStruct["username"] = "username!" />
			<cfset retStruct["hash"] = "hash!" />
			<cfset retStruct["type"] = "type!" />

		<cfelse>

		    <cfset retStruct["message"] = "Wrong username or password" />
			<cfset retStruct["detail"] = "Wrong username or password" />
			<cfset retStruct["duration"] = 5000 />
			<cfset retStruct["username"] = "username!" />
			<cfset retStruct["hash"] = "hash!" />
			<cfset retStruct["type"] = "type!" />
		</cfif>

		<cfreturn retStruct />
	</cffunction>
</cfcomponent>