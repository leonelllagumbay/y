Ext.define('iBOSe.model.vtype.verifyregistration.ConfirmPassword', {
    override: 'Ext.form.field.VTypes',

    IPAddress:  function(value) {
    	var regform = Ext.ComponentQuery.query('iboseverifyuserregistration')[0];
    	if(regform) {
    		var pwd = regform.down('textfield[name=userpassword]').getValue();
    		if(pwd === value) {
    			return true;
    		} else {
    			return false;
    		}
    	} else {
    		return false;
    	}
    },
    IPAddressText: 'Password does not match'
});