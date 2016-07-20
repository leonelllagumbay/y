Ext.define('iBOSe.view.user.VerifyUserRegistrationController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.user-verifyuserregistration',
	
    onRegisterUserVerify: function(dform,b) {
    	var dform = this.getView();
    	regform = dform.getForm();
    	
    	if(regform.isValid()) {
    		dform.getEl().mask("Sending...");
    		
    		var fn = dform.down('textfield[name=registerfirstname]').getValue();
    		var ln = dform.down('textfield[name=registerlastname]').getValue();
    		var ty = dform.down('textfield[name=registerusertype]').getValue();
    		var pw = dform.down('textfield[name=confirmuserpassword]').getValue();
    		
    		regform.submit({
    			params: {
    				registerfirstname: fn,
    				registerlastname: ln,
    				registerusertype: ty,
    				vc: window.location.search.substr(4),
    				registeruserverify: 'registeruserverify',
    				password: pw
    			},
    			timeout: 300000,
		  		reset: true,
		  		failure: function(form, action) {
		  			dform.getEl().unmask();	
		  			var msg = "";
		  			if(typeof action.result.message !== undefined) msg = action.result.message;
		  			Ext.Msg.alert('Information', msg + 'Cannot process the request. Please try again.');
		  		},
		  		success: function(form, action) {
		  			Ext.Msg.alert('Information', 'A new user has been added to iBOS/e system. Please sign in to verify.');
		  			dform.getEl().unmask();
		  		}
    		});
    	}
    }
});
