<cfcomponent output="false" persistent="true" name="Lkcompany" table="lkcompany">

	<cfproperty name="COMPANYCODE" column="COMPANYCODE" fieldtype="id" generator="assigned"  />
	<cfproperty name="COMPANYNAME" column="COMPANYNAME" ormType="string" notnull="true" length="255"/>

</cfcomponent>