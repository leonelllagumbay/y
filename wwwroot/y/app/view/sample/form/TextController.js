Ext.define('iBOSe.view.sample.form.TextController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.sample-form-text',
    
    onSubmit: function(df) {
    	console.log('dform', df);
    },
    onItemClick: function(d) {
    	
    }
    
});
