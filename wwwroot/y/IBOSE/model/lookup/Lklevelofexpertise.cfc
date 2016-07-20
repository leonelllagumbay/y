<cfcomponent output="false" persistent="true" name="Lklevelofexpertise" table="lklevelofexpertise">

	<cfproperty name="LEVELOFEXPERTISECODE" column="LEVELOFEXPERTISECODE" fieldtype="id" generator="assigned" length="50" />
	<cfproperty name="LEVELOFEXPERTISENAME" column="LEVELOFEXPERTISENAME" ormType="string" notnull="true" length="255"/>

</cfcomponent>