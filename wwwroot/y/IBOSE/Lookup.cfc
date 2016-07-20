<!---
  --- Lookup
  --- ------
  ---
  --- author: Leonell
  --- date:   16/04/16
  --->
<cfcomponent accessors="true" output="false" persistent="false" ExtDirect="true">

	<cffunction name="getGender" ExtDirect="true">
		<cfargument name="inputargs" >

		<cfset g = Entityload("Lkgender") />

		<cfset totalcnt = ArrayLen(g) />
	    <cfset ra = ArrayNew(1) />
	    <cfset rootstuct = StructNew() />
	    <cfset rootstuct['totalCount'] = totalcnt />
		<cfset rootstuct['success']    = "true" />

		<cfloop array="#g#" index="ii">
			<cfset rs = StructNew() />
			<cfset rs["gendercode"] = ii.getGENDERCODE() />
			<cfset rs["gendername"] = ii.getGENDERNAME() />
			<cfset ArrayAppend(ra, rs) />
		</cfloop>

		<cfset rootstuct['topics'] = ra />

		<cfreturn rootstuct />
	</cffunction>

	<cffunction name="getCivilStatus" ExtDirect="true">
		<cfargument name="inputargs" >

		<cfset cs = Entityload("Lkcivilstatus") />

		<cfset totalcnt = ArrayLen(cs) />
	    <cfset ra = ArrayNew(1) />
	    <cfset rootstuct = StructNew() />
	    <cfset rootstuct['totalCount'] = totalcnt />
		<cfset rootstuct['success']    = "true" />

		<cfloop array="#cs#" index="ii">
			<cfset rs = StructNew() />
			<cfset rs["civilstatuscode"] = ii.getCIVILSTATUSCODE() />
			<cfset rs["civilstatusname"] = ii.getCIVILSTATUSNAME() />
			<cfset ArrayAppend(ra, rs) />
		</cfloop>

		<cfset rootstuct['topics'] = ra />

		<cfreturn rootstuct />
	</cffunction>

	<cffunction name="getCompany" ExtDirect="true">
		<cfargument name="inputargs" >
		<cfset page = inputargs.page />
		<cfset limit= inputargs.limit />
		<cfset start= inputargs.start />
		<cfif isdefined("inputargs.query") >
			<cfset qr= inputargs.query />
		<cfelse>
			<cfset qr= "" />
		</cfif>

		<cfif qr neq "" >
			<cfset ormoptions = {maxresults = limit, offset = start} />
			<cfquery name="c" dbtype="hql" ormoptions="#ormoptions#">
				 FROM Lkcompany
				WHERE COMPANYNAME LIKE '%#qr#%'
			 ORDER BY COMPANYNAME ASC
			</cfquery>
			<cfquery name="d" dbtype="hql">
				 FROM Lkcompany
				WHERE COMPANYNAME LIKE '%#qr#%'
			</cfquery>
			<cfset totalcnt = ArrayLen(d) />
		<cfelse>
		    <cfset c = Entityload("Lkcompany", {}, "", {maxresults = limit, offset = start}) />
			<cfset totalcnt = ArrayLen(Entityload("Lkcompany")) />
		</cfif>


	    <cfset ra = ArrayNew(1) />
	    <cfset rootstuct = StructNew() />
	    <cfset rootstuct['totalCount'] = totalcnt />
		<cfset rootstuct['success']    = "true" />

		<cfloop array="#c#" index="ii">
			<cfset rs = StructNew() />
			<cfset rs["companycode"] = ii.getCOMPANYCODE() />
			<cfset rs["companyname"] = ii.getCOMPANYNAME() />
			<cfset ArrayAppend(ra, rs) />
		</cfloop>

		<cfset rootstuct['topics'] = ra />

		<cfreturn rootstuct />
	</cffunction>

	<cffunction name="getPosition" ExtDirect="true">
		<cfargument name="inputargs" >
		<cfset page = inputargs.page />
		<cfset limit= inputargs.limit />
		<cfset start= inputargs.start />
		<cfif isdefined("inputargs.query") >
			<cfset qr= inputargs.query />
		<cfelse>
			<cfset qr= "" />
		</cfif>

		<cfif qr neq "" >
			<cfset ormoptions = {maxresults = limit, offset = start} />
			<cfquery name="p" dbtype="hql" ormoptions="#ormoptions#">
				 FROM Lkposition
				WHERE POSITIONNAME LIKE '%#qr#%'
			 ORDER BY POSITIONNAME ASC
			</cfquery>
			<cfquery name="d" dbtype="hql">
				 FROM Lkposition
				WHERE POSITIONNAME LIKE '%#qr#%'
			</cfquery>
			<cfset totalcnt = ArrayLen(d) />
		<cfelse>
		    <cfset p = Entityload("Lkposition", {}, "", {maxresults = limit, offset = start}) />
			<cfset totalcnt = ArrayLen(Entityload("Lkposition")) />
		</cfif>

	    <cfset ra = ArrayNew(1) />
	    <cfset rootstuct = StructNew() />
	    <cfset rootstuct['totalCount'] = totalcnt />
		<cfset rootstuct['success']    = "true" />

		<cfloop array="#p#" index="ii">
			<cfset rs = StructNew() />
			<cfset rs["positioncode"] = ii.getPOSITIONCODE() />
			<cfset rs["positionname"] = ii.getPOSITIONNAME() />
			<cfset ArrayAppend(ra, rs) />
		</cfloop>

		<cfset rootstuct['topics'] = ra />

		<cfreturn rootstuct />
	</cffunction>

	<cffunction name="getCitizenship" ExtDirect="true">
	  <cftry>
		<cfquery name="qryLookup" datasource="#client.global_dsn#">
			SELECT CITIZENSHIP, DESCRIPTION
			  FROM GLKCITIZEN
		</cfquery>

		<cfset totalcnt = qryLookup.recordcount >
	    <cfset resultArr = ArrayNew(1) >
	    <cfset rootstuct = StructNew() >

	    <cfset rootstuct['totalCount'] = totalcnt >
		<cfset rootstuct['success']    = "true" >
		<cfset cnt = 1 >
		  <cfloop query = "qryLookup" >
		  	<cfset tmpresult = StructNew() >
			<cfset tmpresult['citizenshipcode']  = ' ' & CITIZENSHIP >
			<cfset tmpresult['citizenshipname']  = ' ' & DESCRIPTION >
			<cfset resultArr[cnt] = tmpresult    >
			<cfset cnt = cnt + 1 >
		  </cfloop>
		<cfset rootstuct['topics'] = resultArr >

		<cfreturn rootstuct />
	  <cfcatch>
	  	  <cfreturn cfcatch.Detail & ' ' & cfcatch.Message >
	  </cfcatch>
	  </cftry>
	</cffunction>

	<cffunction name="getReligion" ExtDirect="true">
	  <cftry>
		<cfquery name="qryLookup" datasource="#client.global_dsn#">
			SELECT RELIGIONCODE, DESCRIPTION
			  FROM GLKRELIGION
		</cfquery>

		<cfset totalcnt = qryLookup.recordcount >
	    <cfset resultArr = ArrayNew(1) >
	    <cfset rootstuct = StructNew() >

	    <cfset rootstuct['totalCount'] = totalcnt >
		<cfset rootstuct['success']    = "true" >
		<cfset cnt = 1 >
		  <cfloop query = "qryLookup" >
		  	<cfset tmpresult = StructNew() >
			<cfset tmpresult['religioncode']  = ' ' & RELIGIONCODE >
			<cfset tmpresult['religionname']  = ' ' & DESCRIPTION >
			<cfset resultArr[cnt] = tmpresult    >
			<cfset cnt = cnt + 1 >
		  </cfloop>
		<cfset rootstuct['topics'] = resultArr >

		<cfreturn rootstuct />
	  <cfcatch>
	  	  <cfreturn cfcatch.Detail & ' ' & cfcatch.Message >
	  </cfcatch>
	  </cftry>
	</cffunction>

	<cffunction name="getSchool" ExtDirect="true">
		<cfargument name="inputargs" >
		<cfset page = inputargs.page />
		<cfset limit= inputargs.limit />
		<cfset start= inputargs.start />
		<cfif isdefined("inputargs.query") >
			<cfset qr= inputargs.query />
		<cfelse>
			<cfset qr= "" />
		</cfif>

		<cfif qr neq "" >
			<cfset ormoptions = {maxresults = limit, offset = start} />
			<cfquery name="c" dbtype="hql" ormoptions="#ormoptions#">
				 FROM Lkschool
				WHERE SCHOOLNAME LIKE '%#qr#%'
			 ORDER BY SCHOOLNAME ASC
			</cfquery>
			<cfquery name="d" dbtype="hql">
				 FROM Lkschool
				WHERE SCHOOLNAME LIKE '%#qr#%'
			</cfquery>
			<cfset totalcnt = ArrayLen(d) />
		<cfelse>
		    <cfset c = Entityload("Lkschool", {}, "", {maxresults = limit, offset = start}) />
			<cfset totalcnt = ArrayLen(Entityload("Lkschool")) />
		</cfif>

	    <cfset ra = ArrayNew(1) />
	    <cfset rootstuct = StructNew() />
	    <cfset rootstuct['totalCount'] = totalcnt />
		<cfset rootstuct['success']    = "true" />

		<cfloop array="#c#" index="ii">
			<cfset rs = StructNew() />
			<cfset rs["schoolcode"] = ii.getSCHOOLCODE() />
			<cfset rs["schoolname"] = ii.getSCHOOLNAME() />
			<cfset ArrayAppend(ra, rs) />
		</cfloop>

		<cfset rootstuct['topics'] = ra />

		<cfreturn rootstuct />
	</cffunction>


	<cffunction name="getField" ExtDirect="true">
		<cfargument name="inputargs" >

		<cftry>
			<cfset page = inputargs.page />
			<cfset limit= inputargs.limit />
			<cfset start= inputargs.start />
			<cfif isdefined("inputargs.query") >
				<cfset query= inputargs.query />
			<cfelse>
				<cfset query= "" />
			</cfif>

				<cfset totalcnt = 10>
			    <cfset resultArr = ArrayNew(1) >
			    <cfset rootstuct = StructNew() >

			    <cfset rootstuct['totalCount'] = totalcnt >
				<cfset rootstuct['success']    = "true" >

			    <cfloop from="1" to="10" index="a">
			  		<cfset tmpresult = StructNew() >
					<cfset tmpresult['schoolcode']  = 'Field ' & a >
					<cfset tmpresult['schoolname']  = 'Field name ' & a >
					<cfset ArrayAppend(resultArr, tmpresult) />
			    </cfloop>

				<cfset rootstuct['topics'] = resultArr >

				<cfreturn rootstuct />

			  	<cfcatch>
			  	  	<cfreturn cfcatch.Detail & ' ' & cfcatch.Message >
			  	</cfcatch>
		  </cftry>
	</cffunction>

	<cffunction name="getSchoolCourse" ExtDirect="true">
		<cfargument name="inputargs" >
		<cfset page = inputargs.page />
		<cfset limit= inputargs.limit />
		<cfset start= inputargs.start />
		<cfif isdefined("inputargs.query") >
			<cfset qr= inputargs.query />
		<cfelse>
			<cfset qr= "" />
		</cfif>

		<cfif qr neq "" >
			<cfset ormoptions = {maxresults = limit, offset = start} />
			<cfquery name="c" dbtype="hql" ormoptions="#ormoptions#">
				 FROM Lkschoolcourse
				WHERE SCHOOLCOURSENAME LIKE '%#qr#%'
			 ORDER BY SCHOOLCOURSENAME ASC
			</cfquery>
			<cfquery name="d" dbtype="hql">
				 FROM Lkschoolcourse
				WHERE SCHOOLCOURSENAME LIKE '%#qr#%'
			</cfquery>
			<cfset totalcnt = ArrayLen(d) />
		<cfelse>
		    <cfset c = Entityload("Lkschoolcourse", {}, "", {maxresults = limit, offset = start}) />
			<cfset totalcnt = ArrayLen(Entityload("Lkschoolcourse")) />
		</cfif>

	    <cfset ra = ArrayNew(1) />
	    <cfset rootstuct = StructNew() />
	    <cfset rootstuct['totalCount'] = totalcnt />
		<cfset rootstuct['success']    = "true" />

		<cfloop array="#c#" index="ii">
			<cfset rs = StructNew() />
			<cfset rs["schoolcoursecode"] = ii.getSCHOOLCOURSECODE() />
			<cfset rs["schoolcoursename"] = ii.getSCHOOLCOURSENAME() />
			<cfset ArrayAppend(ra, rs) />
		</cfloop>

		<cfset rootstuct['topics'] = ra />

		<cfreturn rootstuct />
	</cffunction>

	<cffunction name="getLevelOfExpertise" ExtDirect="true">
		<cfargument name="inputargs" >
		<cfset page = inputargs.page />
		<cfset limit= inputargs.limit />
		<cfset start= inputargs.start />
		<cfif isdefined("inputargs.query") >
			<cfset qr= inputargs.query />
		<cfelse>
			<cfset qr= "" />
		</cfif>

		<cfif qr neq "" >
			<cfset ormoptions = {maxresults = limit, offset = start} />
			<cfquery name="c" dbtype="hql" ormoptions="#ormoptions#">
				 FROM Lklevelofexpertise
				WHERE LEVELOFEXPERTISENAME LIKE '%#qr#%'
			 ORDER BY LEVELOFEXPERTISENAME ASC
			</cfquery>
			<cfquery name="d" dbtype="hql">
				 FROM Lklevelofexpertise
				WHERE LEVELOFEXPERTISENAME LIKE '%#qr#%'
			</cfquery>
			<cfset totalcnt = ArrayLen(d) />
		<cfelse>
		    <cfset c = Entityload("Lklevelofexpertise", {}, "", {maxresults = limit, offset = start}) />
			<cfset totalcnt = ArrayLen(Entityload("Lklevelofexpertise")) />
		</cfif>

	    <cfset ra = ArrayNew(1) />
	    <cfset rootstuct = StructNew() />
	    <cfset rootstuct['totalCount'] = totalcnt />
		<cfset rootstuct['success']    = "true" />

		<cfloop array="#c#" index="ii">
			<cfset rs = StructNew() />
			<cfset rs["levelofexpertisecode"] = ii.getLEVELOFEXPERTISECODE() />
			<cfset rs["levelofexpertisename"] = ii.getLEVELOFEXPERTISENAME() />
			<cfset ArrayAppend(ra, rs) />
		</cfloop>

		<cfset rootstuct['topics'] = ra />

		<cfreturn rootstuct />
	</cffunction>


	<cffunction name="getExam" ExtDirect="true">
		<cfargument name="inputargs" >
		<cfset page = inputargs.page />
		<cfset limit= inputargs.limit />
		<cfset start= inputargs.start />
		<cfif isdefined("inputargs.query") >
			<cfset qr= inputargs.query />
		<cfelse>
			<cfset qr= "" />
		</cfif>

		<cfif qr neq "" >
			<cfset ormoptions = {maxresults = limit, offset = start} />
			<cfquery name="c" dbtype="hql" ormoptions="#ormoptions#">
				 FROM Lkexam
				WHERE EXAMNAME LIKE '%#qr#%'
			 ORDER BY EXAMNAME ASC
			</cfquery>
			<cfquery name="d" dbtype="hql">
				 FROM Lkexam
				WHERE EXAMNAME LIKE '%#qr#%'
			</cfquery>
			<cfset totalcnt = ArrayLen(d) />
		<cfelse>
		    <cfset c = Entityload("Lkexam", {}, "", {maxresults = limit, offset = start}) />
			<cfset totalcnt = ArrayLen(Entityload("Lkexam")) />
		</cfif>

	    <cfset ra = ArrayNew(1) />
	    <cfset rootstuct = StructNew() />
	    <cfset rootstuct['totalCount'] = totalcnt />
		<cfset rootstuct['success']    = "true" />

		<cfloop array="#c#" index="ii">
			<cfset rs = StructNew() />
			<cfset rs["examcode"] = ii.getEXAMCODE() />
			<cfset rs["examname"] = ii.getEXAMNAME() />
			<cfset ArrayAppend(ra, rs) />
		</cfloop>

		<cfset rootstuct['topics'] = ra />

		<cfreturn rootstuct />
	</cffunction>


	<cffunction name="getCaptcha" ExtDirect="true">

		<cfset retStruct = StructNew()>
		<cfset stringLength = 6>
		<cfset stringList = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z">
	    <cfset rndString = "">
	    <cfloop from="1" to="#stringLength#" index="i">
	    	<cfset rndNum = RandRange(1, listlen(stringList))>
	    	<cfset rndString = rndString & listgetat(stringlist,rndNum)>
		</cfloop>
		<cfset retStruct['captchastring'] = rndString>
		<cfsavecontent variable="c">
			<cfimage
			    action = "captcha"
			    height = "100"
			    text = "#rndString#"
			    width = "300"
			    difficulty = "low"
			    fonts="Arial,Verdana"
			    overwrite = "yes"
			    fontSize = "20">
		</cfsavecontent>
		<cfset retStruct['captchalink'] = c  >
		<cfreturn retStruct>
	</cffunction>
</cfcomponent>