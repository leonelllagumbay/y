<!---
  --- PlayMate
  --- --------
  ---
  --- author: Leonell
  --- date:   19/03/16
  --->
<cfcomponent accessors="true" output="false" access="remote" persistent="false" ExtDirect="true" extends="IBOSE">

	<cffunction name="getPlayMateProfile" returntype="struct" ExtDirect="true">
		<cfset rs = StructNew() />

		<cfif isuserloggedin() >
			<cfset rs["fullname"] = session["userfirstname"] & " " & session["userlastname"] />
			<cfset rs["profileimage"] = "<img src='./IBOSE/filespublic/profile/Lagumbay_Leonell_197x245 RGB.jpg' width='37px' height='37px' style='border-radius: 20px;'>" />
			<cfset rs["companyname"] = session["usercompanyname"] />
		<cfelse>
			<cfset rs["fullname"] = "Anonymous User" />
			<cfset rs["profileimage"] = "<img src='./IBOSE/filespublic/profile/anonymous.png' width='37px' height='37px' style='border-radius: 20px;'>" />
		</cfif>

		<cfreturn rs />
	</cffunction>

	<cffunction name="RegisterUser" returntype="struct" ExtDirect="true" ExtFormHandler="true">

		<cfset rs = StructNew() />
		<cftry>
			<cfset dmailaddress = trim(form.registeruseremail) />

			<cfset ru = EntityNew("Registeruser") />
			<cfset ru.setREGISTERUSEREMAIL(dmailaddress) />
			<cfset ru.setISREGISTERED("false") />
			<cfset ru.setVALIDATIONCODE(Hash(dmailaddress, "SHA-512")) />
			<cfset ru.setDATECREATED(Createodbcdatetime(now())) />
			<cfset EntitySave(ru) />

			<cfset rs["message"] = dmailaddress />
			<cfset rs["success"] = "true" />
		<cfcatch type="Any">
			<cfset rs["success"] = "false" />
			<cfset rs["message"] = cfcatch.message & " - " & cfcatch.detail />
		</cfcatch>
		</cftry>

		<cfreturn rs />
	</cffunction>

	<cffunction name="VerifyUser" returntype="struct" ExtDirect="true" ExtFormHandler="true">

		<cfset rs = StructNew() />
		<cftry>

			<cfset fn = trim(form.registerfirstname) />
			<cfset ln = trim(form.registerlastname) />
			<cfset ty = trim(form.registerusertype) />
			<cfset pw = trim(form.password) />

			<cfset reserveduser = EntityLoad("Registeruser", { VALIDATIONCODE = #trim(form.vc)# }, false) />
			<cfif ArrayLen(reserveduser) gt 0>
				<cfif reserveduser[1].getISREGISTERED() eq "true"> <!--- Check if validation code is used before --->
					<cfset rs["message"] = "This transaction is not valid. " />
					<cfset rs["success"] = "false" />
					<cfreturn rs />
				</cfif>

				<cfset em = reserveduser[1].getREGISTERUSEREMAIL() />
				<cfset userobj = EntityLoad("User", { USEREMAIL = #em# }, false) >
				<cfif ArrayLen(userobj) gt 0 > <!--- Check email existence --->
					<cfset rs["message"] = "Email already exist. " />
					<cfset rs["success"] = "false" />
					<cfreturn rs />
				</cfif>

				<cfset ru = EntityNew("User") />
				<cfset ru.setUSEREMAIL(em) />
				<cfset ru.setUSERFIRSTNAME(fn) />
				<cfset ru.setUSERLASTNAME(ln) />
				<cfset ru.setUSERTYPE(ty) />
				<cfset ru.setUSERUID(em) />
				<cfset ru.setUSERPASSWORD(Hash(pw, "SHA-512")) />
				<cfset ru.setDATECREATED(Createodbcdatetime(now())) />
				<cfset EntitySave(ru) />

				<cfset reserveuserupdate = EntityLoad("Registeruser", reserveduser[1].getREGISTERUSERCODE(), true) />
				<cfset reserveuserupdate.setISREGISTERED("true") />
				<cfset reserveuserupdate.setDATEUPDATED(Createodbcdatetime(now())) />
				<cfset EntitySave(reserveuserupdate) />

				<cfset rs["message"] = em />
				<cfset rs["success"] = "true" />
			<cfelse>
				<cfset rs["message"] = "Invalid validation code. " />
				<cfset rs["success"] = "false" />
			</cfif>
		<cfcatch type="Any">
			<cfset rs["success"] = "false" />
			<cfset rs["message"] = cfcatch.message & " - " & cfcatch.detail />
		</cfcatch>
		</cftry>

		<cfreturn rs />
	</cffunction>

</cfcomponent>