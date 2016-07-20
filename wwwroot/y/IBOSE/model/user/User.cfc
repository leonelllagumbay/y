<!---
  --- User
  --- ----------
  ---
  --- author: Leonell
  --- date:   29/02/16
  --->
<cfcomponent output="false" persistent="true" name="User" table="user">

	<cfproperty name="USERCODE" fieldtype="id" generator="native" column="USERCODE" />
	<cfproperty name="USEREMAIL" column="USEREMAIL" ormType="text" notnull="true" />
	<cfproperty name="USERALIAS" column="USERALIAS"  length="255" ormType="string" notnull="false" />
	<cfproperty name="USERFIRSTNAME" column="USERFIRSTNAME"  length="255" ormType="string" notnull="true" />
	<cfproperty name="USERLASTNAME" column="USERLASTNAME" ormType="text" notnull="true" />
	<cfproperty name="USERTYPE" column="USERTYPE" ormType="text" notnull="true" />
	<cfproperty name="USERUID" column="USERUID" ormType="text" notnull="true" />
	<cfproperty name="USERPASSWORD" column="USERPASSWORD" ormType="text" notnull="true" />
	<cfproperty name="DATECREATED" ormtype="timestamp">
	<cfproperty name="DATEUPDATED" ormtype="timestamp">

</cfcomponent>