Ext.define('iBOSe.view.recruitment.applicant.FooterViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-footerview',
    
    onAgreementChange: function(thiss, newval) {
    	  if(newval == true) {
		  		Ext.ComponentQuery.query('button[name=submitonlineapp]')[0].setDisabled(false);
		  }	else {
		  		Ext.ComponentQuery.query('button[name=submitonlineapp]')[0].setDisabled(true);
		  }
    }
});
