<cfcomponent output="false" persistent="true" name="Lkcivilstatus" table="lkcivilstatus">

	<cfproperty name="CIVILSTATUSCODE" fieldtype="id" generator="assigned" column="CIVILSTATUSCODE" />
	<cfproperty name="CIVILSTATUSNAME" column="CIVILSTATUSNAME" ormType="string" notnull="true" />

</cfcomponent>