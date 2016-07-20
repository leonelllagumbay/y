<cfcomponent output="false" persistent="true" name="Lkposition" table="lkposition">

	<cfproperty name="POSITIONCODE" column="POSITIONCODE" fieldtype="id" generator="assigned"  />
	<cfproperty name="POSITIONNAME" column="POSITIONNAME" ormType="string" notnull="true" length="255"/>

</cfcomponent>