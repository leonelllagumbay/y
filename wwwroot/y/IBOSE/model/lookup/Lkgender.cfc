<cfcomponent output="false" persistent="true" name="Lkgender" table="lkgender">

	<cfproperty name="GENDERCODE" fieldtype="id" generator="assigned" column="GENDERCODE" />
	<cfproperty name="GENDERNAME" column="GENDERNAME" ormType="string" notnull="true" />

</cfcomponent>