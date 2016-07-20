<cfcomponent output="false" persistent="true" name="Lkschool" table="lkschool">

	<cfproperty name="SCHOOLCODE" column="SCHOOLCODE" fieldtype="id" generator="assigned"  />
	<cfproperty name="SCHOOLNAME" column="SCHOOLNAME" ormType="string" notnull="true" length="255"/>

</cfcomponent>