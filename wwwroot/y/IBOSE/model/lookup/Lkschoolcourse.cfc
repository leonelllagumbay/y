<cfcomponent output="false" persistent="true" name="Lkschoolcourse" table="lkschoolcourse">

	<cfproperty name="SCHOOLCOURSECODE" column="SCHOOLCOURSECODE" fieldtype="id" generator="assigned"  />
	<cfproperty name="SCHOOLCOURSENAME" column="SCHOOLCOURSENAME" ormType="string" notnull="true" length="255"/>

</cfcomponent>