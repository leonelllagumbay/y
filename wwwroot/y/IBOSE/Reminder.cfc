<cfcomponent name="Reminder" ExtDirect="true">

	<cffunction name="eventRead" ExtDirect="true">
	<cfargument name="eventdata" >

	<cftry>
		<cfset jsonrepresent = StructNew() >
		<cfif IsDefined("eventdata.end") AND IsDefined("eventdata.start") >
			<cfset calendardata = ORMExecuteQuery("FROM GINCALENDAR
			                                            WHERE STARTDATE >= '#dateFormat(eventdata.start, "YYYY-MM-DD")#'
			                                                  AND ENDDATE <= '#dateFormat(eventdata.end, "YYYY-MM-DD")#'
			                                                  AND OWNER ='#session.pid#'") >

			<cfset dataArr = arraynew(1) >

			<cfloop array="#calendardata#" index="calIndex" >
				<cfset middlejson = structnew() >
				<cfset middlejson['EventId']    	= calIndex.getEVENTID() >
				<cfset middlejson['id']    	= calIndex.getEVENTID() >
				<cfset middlejson['CalendarId'] 	= calIndex.getCALENDARID() >
				<cfset middlejson['cid'] 	= calIndex.getCALENDARID() >
				<cfset middlejson['Title']  = calIndex.getTITLE() >
				<cfset middlejson['title']  = calIndex.getTITLE() >
				<cfset middlejson['StartDate']  = dateformat(calIndex.getSTARTDATE(), 'YYYY-MM-DD') & ' ' & timeformat(calIndex.getSTARTDATE(), 'HH:MM:SS') >
				<cfset middlejson['start']  = dateformat(calIndex.getSTARTDATE(), 'YYYY-MM-DD') & ' ' & timeformat(calIndex.getSTARTDATE(), 'HH:MM:SS') >
				<cfset middlejson['EndDate'] 	= dateformat(calIndex.getENDDATE(), 'YYYY-MM-DD') & ' ' & timeformat(calIndex.getENDDATE(), 'HH:MM:SS') >
				<cfset middlejson['end'] 	= dateformat(calIndex.getENDDATE(), 'YYYY-MM-DD') & ' ' & timeformat(calIndex.getENDDATE(), 'HH:MM:SS') >
				<cfset middlejson['Location'] 	= calIndex.getLOCATION() >
				<cfset middlejson['loc'] 	= calIndex.getLOCATION() >
				<cfset middlejson['Notes'] 	= calIndex.getNOTES() >
				<cfset middlejson['notes'] 	= calIndex.getNOTES() >
				<cfset middlejson['Url'] 	= calIndex.getURL() >
				<cfset middlejson['url'] 	= calIndex.getURL() >
				<cfset middlejson['IsAllDay'] 	= calIndex.getISALLDAY() >
				<cfset middlejson['ad'] 	= calIndex.getISALLDAY() >
				<cfset middlejson['Reminder'] 	= calIndex.getREMINDER() >
				<cfset middlejson['rem'] 	= calIndex.getREMINDER() >
				<cfset middlejson['dquery'] 	= calIndex.getTHEQUERY() >
				<cfset middlejson['IsNew']  = "" />
				<cfset middlejson['n']  = "" />
				<cfset ArrayAppend(dataArr,middlejson) >
			</cfloop>

			<cfset jsonrepresent['data'] = dataArr >
			<cfreturn jsonrepresent />
		<cfelse>
		    <cfset jsonrepresent['data'] = ArrayNew(1) >
			<cfreturn jsonrepresent />
		</cfif>
		<cfsetting showdebugoutput="false" >
		<cfcatch type="any">
			<cfreturn cfcatch.detail & " 	" & cfcatch.message >
		</cfcatch>
	</cftry>
	</cffunction>

	<!--- Create a reminder --->
	<cffunction name="eventCreate" ExtDirect="true">
		<cfargument name="eventdata" >
		<cfif isArray(eventdata) >
			<cfset eventdata = eventdata[1] >
		</cfif>

		<cfset eventid = CreateUuid() >
		<cfset eventdata.id = eventid >

		<cfif IsDefined("eventdata.IsAllDay")>
			<cfset ad = eventdata.IsAllDay />
		<cfelse>
			<cfset ad = "false" />
		</cfif>


		<cfif IsDefined("eventdata.CalendarId")>
			<cfset cid = eventdata.CalendarId >
		<cfelse>
			<cfset cid = 2 />
		</cfif>

		<cfif Ucase(eventdata.EndDate) eq "TODAY" >
			<cfset l_end = Dateformat(now(),"YYYY-MM-DD") & " " & Timeformat(now(),"HH:MM:SS")>
		<cfelse>
			<cfset l_end = left(eventdata.EndDate, 19) >
		</cfif>

		<cfset endDatepart = left(l_end, 10) >
		<cfset endTimepart = right(l_end, 8) >
		<cfset end = endDatepart & ' ' & endTimepart >

		<cfif IsDefined("eventdata.Location")>
			<cfset loc = eventdata.Location />
		<cfelse>
			<cfset loc = "" />
		</cfif>

		<cfif IsDefined("eventdata.Notes")>
			<cfset notes = eventdata.Notes />
		<cfelse>
			<cfset notes = "" />
		</cfif>

		<cfif IsDefined("eventdata.Reminder")>
			<cfset rem = eventdata.Reminder >
		<cfelse>
			<cfset rem = "" />
		</cfif>

		<!---<cfset rrule = eventdata.rrule >--->
		<cfif Ucase(eventdata.StartDate) eq "TODAY" >
			<cfset l_start = Dateformat(now(),"YYYY-MM-DD") & " " & Timeformat(now(),"HH:MM:SS")>
		<cfelse>
			<cfset l_start = left(eventdata.StartDate, 19) >
		</cfif>

		<cfset l_start = left(eventdata.StartDate, 19) >
		<cfset startDatepart = left(l_start, 10) >
		<cfset startTimepart = right(l_start, 8) >
		<cfset start = startDatepart & ' ' & startTimepart >

		<cfif IsDefined("eventdata.Title")>
			<cfset title = eventdata.Title >
		<cfelse>
			<cfset title = "no title" />
		</cfif>

		<cfif IsDefined("eventdata.Url")>
			<cfset urlstring = eventdata.Url >
		<cfelse>
			<cfset urlstring = "" />
		</cfif>

		<!---
		<cfif IsDefined("eventdata.dquery")>
			<cfset dquery = eventdata.dquery >
		<cfelse>
			<cfset dquery = "" />
		</cfif>
		--->
		<cfset dquery = "" >

		<cfif trim(dquery) neq "" >
			<cfinvoke component="Security" method="replaceSQLInjection" returnvariable="dquery" dString="#dquery#" >
		</cfif>

		<cfset calendartable = EntityNew("GINCALENDAR") >
		<cfset calendartable.setEVENTID("#eventid#") >
		<cfset calendartable.setCALENDARID("#cid#") >
		<cfset calendartable.setTITLE("#title#") >
		<cfset calendartable.setSTARTDATE("#start#") >
		<cfset calendartable.setENDDATE("#end#") >
		<!---<cfset calendartable.setRECURRULE("#rrule#") >--->
		<cfset calendartable.setLOCATION("#loc#") >
		<cfset calendartable.setNOTES("#notes#") >
		<cfset calendartable.setURL("#urlstring#") >
		<cfset calendartable.setISALLDAY("#ad#") >
		<cfset calendartable.setREMINDER("#rem#") >
		<cfset calendartable.setTHEQUERY("#dquery#") >
		<cfset calendartable.setOWNER("#session.pid#") >
		<cfset calendartable.setDATELASTUPDATE("#dateformat(now(), 'YYYY-MM-DD')# #timeformat(now(), 'HH:MM:SS')#") >

		<cfset EntitySave(calendartable) >
		<cfset ormflush()>

		<cfinvoke method="newschedule" argumentcollection="#eventdata#" >

		<cfset jsonrepresent = StructNew() >
		<cfset dataArr = arraynew(1) >

		<cfset middlejson = structnew() >
		<!---<cfset middlejson['id'] = id >--->
		<cfset middlejson['CalendarId'] = cid >
		<cfset middlejson['Title'] = title >
		<cfset middlejson['StartDate'] = start >
		<cfset middlejson['EndDate'] = end >
		<cfset middlejson['Location'] = loc >
		<cfset middlejson['Notes'] = notes >
		<cfset middlejson['Url'] = urlstring >
		<cfset middlejson['IsAllDay'] = ad >
		<cfset middlejson['Reminder'] = rem >
		<cfset dataArr[1] = middlejson >


		<cfset jsonrepresent['data'] = dataArr >
		<cfreturn jsonrepresent />

		<cfsetting showdebugoutput="false" >
	</cffunction>


	<cffunction name="eventUpdate" ExtDirect="true">
		<cfargument name="eventdata" >
		<cfif isArray(eventdata) >
			<cfset eventdata = eventdata[1] >
		</cfif>

		<!--- Ignore the commit message --->
		<cfset res = StructNew() >
		<cfif IsDefined("eventdata.s")>
			<cfset res['data'] = "success" >
			<cfset res['message'] = "A commit message is neglicted for now.">
			<cfreturn res />
		</cfif>

		<cfif IsDefined("eventdata.EventId")>
			<cfset id = eventdata.EventId >
		<cfelse>
			<cfset id = eventdata.id />
		</cfif>


		<cfset dquery = "" >


		<cfset eventdata.id = id >

		<cfset calendartable = EntityLoad("GINCALENDAR", id, true ) >

		<cfif IsDefined("eventdata.IsAllDay")>
			<cfset ad = eventdata.IsAllDay >
		    <cfset calendartable.setISALLDAY("#ad#") >
			<cfset eventdata.ad = ad >
		<cfelse>
			<cfset eventdata.ad = calendartable.getISALLDAY() >
		</cfif>

		<cfif IsDefined("eventdata.CalendarId")>
			<cfset cid = eventdata.CalendarId >
			<cfset calendartable.setCALENDARID("#cid#") >
			<cfset eventdata.cid = cid />
		<cfelse>
			<cfset eventdata.cid = calendartable.getCALENDARID() />
		</cfif>

		<cfif IsDefined("eventdata.EndDate")>
			<cfset l_end = left(eventdata.EndDate, 19) >
			<cfset endDatepart = left(l_end, 10) >
			<cfset endTimepart = right(l_end, 8) >
			<cfset end = endDatepart & ' ' & endTimepart >

			<cfset calendartable.setENDDATE("#end#") >
			<cfset l_end = left(end, 19) >
			<cfset endDatepart = left(l_end, 10) >
			<cfset endTimepart = right(l_end, 8) >
			<cfset eventdata.end = endDatepart & ' ' & endTimepart >
		<cfelse>
			<cfset eventdata.end = calendartable.getENDDATE() />
		</cfif>

		<cfif IsDefined("eventdata.Location")>
			<cfset loc = eventdata.Location >
			<cfset calendartable.setLOCATION("#loc#") >
			<cfset eventdata.loc = loc >
		<cfelse>
			<cfset eventdata.loc = calendartable.getLOCATION() >
		</cfif>

		<cfif IsDefined("eventdata.Notes")>
			<cfset notes = eventdata.Notes >
			<cfset calendartable.setNOTES("#notes#") >
			<cfset eventdata.notes = notes >
		<cfelse>
			<cfset eventdata.notes = calendartable.getNOTES() >
		</cfif>

		<cfif IsDefined("eventdata.Reminder")>
			<cfset rem = eventdata.Reminder >
			<cfset calendartable.setREMINDER("#rem#") >
			<cfset eventdata.rem = rem >
		<cfelse>
			<cfset eventdata.rem = calendartable.getREMINDER() >
		</cfif>


		<cfif IsDefined("eventdata.StartDate")>
			<cfset l_start = left(eventdata.StartDate, 19) >
			<cfset startDatepart = left(l_start, 10) >
			<cfset startTimepart = right(l_start, 8) >
			<cfset start = startDatepart & ' ' & startTimepart >

		    <cfset calendartable.setSTARTDATE("#start#") >
			<cfset l_start = left(start, 19) >
			<cfset startDatepart = left(l_start, 10) >
			<cfset startTimepart = right(l_start, 8) >

			<cfset eventdata.start = startDatepart & ' ' & startTimepart >
		<cfelse>
			<cfset eventdata.start = calendartable.getSTARTDATE() >
		</cfif>


		<cfif IsDefined("eventdata.Title")>
			<cfset title = eventdata.Title >
			<cfset calendartable.setTITLE("#title#") >
			<cfset eventdata.title = title >
		<cfelse>
			<cfset eventdata.title = calendartable.getTITLE() >
		</cfif>

		<cfif IsDefined("eventdata.Url")>
			<cfset urlstring = eventdata.Url >
			<cfset calendartable.setURL("#urlstring#") >
			<cfset eventdata.urlstring = urlstring >
		<cfelse>
			<cfset eventdata.urlstring = calendartable.getURL() >
		</cfif>

		<cfif IsDefined("eventdata.TheQuery")>
			<cfset dquery = eventdata.TheQuery >
			<cfset calendartable.setTHEQUERY("#dquery#") >
			<cfset eventdata.dquery = dquery >
		<cfelse>
			<cfset eventdata.dquery = calendartable.getTHEQUERY() >
		</cfif>

		<cfif trim(dquery) neq "" >
			<cfinvoke component="Security" method="replaceSQLInjection" returnvariable="dquery" dString="#dquery#" >
		</cfif>


		<cfset calendartable.setOWNER("#session.pid#") >
		<cfset calendartable.setDATELASTUPDATE("#dateformat(now(), 'YYYY-MM-DD')# #timeformat(now(), 'HH:MM:SS')#") >

		<cfset EntitySave(calendartable) >
		<cfset ormflush()>

	    <cfinvoke method="newschedule" argumentcollection="#eventdata#" >

		<cfset res['data'] = "success" >
		<cfreturn res />

		<cfsetting showdebugoutput="false" >
	</cffunction>


	<cffunction name="eventDestroy" ExtDirect="true">
		<cfargument name="eventdata" >
		<cfif isArray(eventdata) >
			<cfset eventdata = eventdata[1] >
		</cfif>

		<cfset id = trim(eventdata.id) />

		<cfset calendartable = EntityLoad("GINCALENDAR", id, true ) >
		<cfset EntityDelete(calendartable) >
		<cfset ormflush()>

		<cfset rslt = StructNew() >
		<cfset rslt["success"] = "true" />


		<cftry>
		<cfschedule
		    action = "delete"
		    group  = "EREMINDER"
		    task = "reminder#id#">
			<cfcatch>
				<cfset rslt["success"] = "false" />
				<cfset rslt["message"] = "Unable to delete the schedule" />
			</cfcatch>
		</cftry>
		<cfreturn rslt />
		<cfsetting showdebugoutput="false" >
	</cffunction>


	<cffunction name="newschedule" returntype="void" >
		<cfargument name="ad" >
		<cfargument name="cid" >
		<cfargument name="end" >
		<cfargument name="loc" >
		<cfargument name="notes" >
		<cfargument name="rem" >
		<cfargument name="dquery" >
		<cfargument name="start" >
		<cfargument name="title" >
		<cfargument name="urlstring" >
		<cfargument name="id" >



		<cfif rem NEQ "" > <!--- The reminder is set to None. None means no reminder. The event saved is treated as a note. --->
			<cfset l_end = left(end, 19) >
			<cfset endDatepart = left(l_end, 10) >
			<cfset endTimepart = right(l_end, 8) >
			<cfset end = endDatepart & ' ' & endTimepart >

			<cfset l_start = left(start, 19) >
			<cfset startDatepart = left(l_start, 10) >
			<cfset startTimepart = right(l_start, 8) >
			<cfset startA = startDatepart & ' ' & startTimepart >
			<cfset startN = dateadd("n", rem * -1, startA) > <!---no. of minutes to notify before the set date--->
			<cfset startDatepart = dateformat(startN, 'YYYY-MM-DD') >
			<cfset startTimepart = timeformat(startN, 'HH:MM:SS' ) >

			<!--- <cfquery name="getProfileName" maxrows="1">
				SELECT PROFILENAME
				  FROM EGRGUSERMASTER
				 WHERE USERID = '#session.userid#';
			</cfquery> --->

				<cfschedule
				    action 			= "update"
				    task 			= "reminder#id#"
				    requestTimeOut 	= "100"
				    resolveURL 		= "yes"
				    startDate 		= "#startDatepart#"
				    startTime 		= "#startTimepart#"
				    url 			= "#CGI.HTTP_HOST#myapps/reminder/schedule/notify.cfm?ad=#urlencodedformat(ad)#&id=#urlencodedformat(id)#&cid=#urlencodedformat(cid)#&end=#urlencodedformat(end)#&loc=#urlencodedformat(loc)#&notes=#urlencodedformat(notes)#&rem=#urlencodedformat(rem)#&start=#urlencodedformat(startA)#&title=#urlencodedformat(title)#&urlstring=#urlencodedformat(urlstring)#&recipient=#urlencodedformat(session.useremail)#&pid=#urlencodedformat(session.pid)#&dquery=#urlencodedformat(dquery)#&global_dsn=IBOSE&company_dsn=#urlencodedformat(usercompanycode)#&ms=#URLEncodedFormat(session.pid)#&mu=#URLEncodedFormat(session.pid)#&mp=#URLEncodedFormat(session.pid)#&mt=#session.pid#&mpt=#session.pid#&mtls=#session.pid#&mssl=#session.pid#"
					interval		="once"
					operation		="HTTPRequest"
					group           ="EREMINDER"

				>
		</cfif>

	</cffunction>

</cfcomponent>