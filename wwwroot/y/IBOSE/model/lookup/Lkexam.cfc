<cfcomponent output="false" persistent="true" name="Lkexam" table="lkexam">

	<cfproperty name="EXAMCODE" column="EXAMCODE" fieldtype="id" generator="assigned" length="50"/>
	<cfproperty name="EXAMNAME" column="EXAMNAME" ormType="string" notnull="true" length="255"/>

</cfcomponent>