<!---
  --- Registeruser
  --- ----------
  ---
  --- author: Leonell
  --- date:   29/02/16
  --->
<cfcomponent output="false" persistent="true" name="Registeruser" table="registeruser">

	<cfproperty name="REGISTERUSERCODE" fieldtype="id" generator="native" column="REGISTERUSERCODE" />
	<cfproperty name="REGISTERUSEREMAIL" column="REGISTERUSEREMAIL"  length="255" ormType="string" notnull="true" />
	<cfproperty name="VALIDATIONCODE" column="VALIDATIONCODE" ormType="text" notnull="false" />
	<cfproperty name="ISREGISTERED" column="ISREGISTERED"  length="5" ormType="string" />
	<cfproperty name="DATECREATED" ormtype="timestamp">
	<cfproperty name="DATEUPDATED" ormtype="timestamp">

</cfcomponent>