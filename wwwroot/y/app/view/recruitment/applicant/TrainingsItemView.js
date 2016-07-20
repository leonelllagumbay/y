Ext.define("iBOSe.view.recruitment.applicant.TrainingsItemView",{
    extend: "Ext.container.Container",
    xtype: "trainingsitemview",
    requires: [],

    width: '100%',
	layout: {
		type: 'hbox',
		align: 'stretch'
	},
	defaults: {
		padding: '0 7 0 0'
	},
	items: [{
		xtype: 'textfield',
		name: 'SEMINARTOPIC',
		value: ' ',
		maxLength: 100,
		flex: 1
	},{
		
		xtype: 'monthfield',
		format: 'F Y',
		value: ' ',
		name: 'SEMINARDATE',
		flex: 1
		
	},{
		xtype: 'textfield',
		name: 'SEMINARORGANIZER',
		value: ' ',
		maxLength: 50,
		flex: 1
	}]
});
