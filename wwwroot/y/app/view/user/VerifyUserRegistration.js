
Ext.define("iBOSe.view.user.VerifyUserRegistration", {
    extend: "Ext.form.Panel",

    requires: [
        "iBOSe.view.user.VerifyUserRegistrationController",
        "iBOSe.view.user.VerifyUserRegistrationModel",
        "iBOSe.store.user.VerifyUserRegistrationStore",
        "iBOSe.model.vtype.verifyregistration.ConfirmPassword"
    ],
    xtype: "iboseverifyuserregistration",
    title: "eVerifyUserRegistration",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "user-verifyuserregistration",
    viewModel: {
        type: "user-verifyuserregistration"
    },
    
    defaults: {
    	padding: 7
    },

    items: [{
    	xtype: 'textfield',
    	fieldLabel: 'First Name',
    	name: 'registerfirstname',
    	allowBlank: false,
    	maxLength: 255		
    },{
    	xtype: 'textfield',
    	fieldLabel: 'Last Name',
    	allowBlank: false,
    	name: 'registerlastname',
    	maxLength: 255		
    },{
    	xtype: 'combobox',
    	fieldLabel: 'User type',
    	name: 'registerusertype',
    	allowBlank: false,
    	maxLength: 255,
    	store: Ext.create('iBOSe.store.user.VerifyUserRegistrationStore'),
    	queryMode: 'local',
    	displayField: 'utype',
        valueField: 'utypevalue',
        forceSelection: true,
        editable: false
    },{
    	xtype: 'textfield',
    	fieldLabel: 'Initial Password',
    	inputType: 'password',
    	allowBlank: false,
    	name: 'userpassword',
    	maxLength: 255		
    },{
    	xtype: 'textfield',
    	fieldLabel: 'Confirm Password',
    	inputType: 'password',
    	allowBlank: false,
    	name: 'confirmuserpassword',
    	maxLength: 255,
    	vtype: 'IPAddress'
    }],
    
    buttonAlign: 'left',
    buttons: [{
    	text: 'Send',
    	handler: 'onRegisterUserVerify',
    	name: 'registeruserverify'
    }],
    
    buttonAlign: 'left',
    
    api: {
		submit: 'Ext.administrator.PlayMate.VerifyUser'
	},
	paramOrder: ['registeruseremail', 'registerfirstname', 'registerlastname', 'registerusertype', 'registeruserverify']
});
