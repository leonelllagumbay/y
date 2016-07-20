Ext.define('iBOSe.view.recruitment.applicant.PersonnalInfoViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-personnalinfoview',
    
    onPresentOtherChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		presentaddressselected: !newValue
    	});
    },
    
    onProbationaryOtherChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		probationaryaddresssel: !newValue
    	});
    },
    
    onDateOfBirthChange: function(field,value) {
		var d1=new Date(value);
		var d2=new Date();
		var milli=d2-d1;
		var milliPerYear=1000*60*60*24*365.26;
		var yearsApart=milli/milliPerYear;
		yearsApart = Math.floor(yearsApart);
		Ext.ComponentQuery.query('numberfield[name=AGE]')[0].setValue(yearsApart);
	},
	
	onCivilStatusChange: function(field, value) {
        var rex = /single|s(?![a-zA-Z])/i;
        res = rex.exec(value);
	  	if(Array.isArray(res)) {
			var spousepanel = Ext.getCmp('spouseididone');
			Ext.apply(spousepanel, {allowBlank: true}, {});
			var spousepanel = Ext.getCmp('spouseididtwo');
			Ext.apply(spousepanel, {allowBlank: true}, {});
			var spousepanel = Ext.getCmp('spouseididthree');
			Ext.apply(spousepanel, {allowBlank: true}, {});
			var spousepanel = Ext.getCmp('spouseididfour');
			Ext.apply(spousepanel, {allowBlank: true}, {});
		} else {
			var spousepanel = Ext.getCmp('spouseididone');
			Ext.apply(spousepanel, {allowBlank: false}, {});
			var spousepanel = Ext.getCmp('spouseididtwo');
			Ext.apply(spousepanel, {allowBlank: false}, {});
			var spousepanel = Ext.getCmp('spouseididthree');
			Ext.apply(spousepanel, {allowBlank: false}, {});
			var spousepanel = Ext.getCmp('spouseididfour');
			Ext.apply(spousepanel, {allowBlank: false}, {});
		}
	}

    
});
