Ext.define('iBOSe.view.user.RegisterUserController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.user-registeruser',
    
    onRegisterUserSend: function(dform,b) {
    	var dform = this.getView();
    	regform = dform.getForm();
    	
    	if(regform.isValid()) {
    		dform.getEl().mask("Sending...");
    		var demail = dform.down('textfield[name=registeruseremail]').getValue();
    		regform.submit({
    			params: {
    				registeruseremail: demail,
    				registerusersend: 'registerusersend'
    			},
    			timeout: 300000,
		  		reset: true,
		  		failure: function(form, action) {
		  			dform.getEl().unmask();	
		  			Ext.Msg.alert('Information', 'Cannot process the request. Please try again.');
		  		},
		  		success: function(form, action) {
		  			Ext.Msg.alert('Information', 'A verification was sent to your email. Please verify to continue the registration.');
		  			dform.getEl().unmask();	
		  		}
    		});
    	}
    }
});
