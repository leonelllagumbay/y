
Ext.define("iBOSe.view.user.RegisterUser",{
    extend: "Ext.form.Panel",

    requires: [
        "iBOSe.view.user.RegisterUserController",
        "iBOSe.view.user.RegisterUserModel"
    ],
    xtype: "iboseregisteruser",
    title: "eRegisterUser",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "user-registeruser",
    viewModel: {
        type: "user-registeruser"
    },
    
    defaults: {
    	padding: 7
    },

    items: [{
    	xtype: 'textfield',
    	fieldLabel: 'Email',
    	name: 'registeruseremail',
    	vtype: 'email',
    	allowBlank: false
    }],
    
    buttons: [{
    	text: 'Send',
    	handler: 'onRegisterUserSend',
    	name: 'registerusersend'
    }],
    
    buttonAlign: 'left',
    
    api: {
		submit: 'Ext.administrator.PlayMate.RegisterUser'
	},
	paramOrder: ['registeruseremail', 'registerusersend']
});
