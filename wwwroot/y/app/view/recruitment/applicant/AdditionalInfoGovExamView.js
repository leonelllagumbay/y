Ext.define("iBOSe.view.recruitment.applicant.AdditionalInfoGovExamView",{
    extend: "Ext.container.Container",
    xtype: "additionalinfogovexam",
    requires: [],

    width: '100%',
	layout: {
		type: 'hbox',
		align: 'stretch'
	},
	items: [{
		xtype: 'combobox',
		padding: '0 7 0 0',
		name: 'GOVEXAMPASSED',
		value: ' ',
		maxLength: 100,
		editable: false,
		store: {
	    	type: 'iboseexamstore'
	    },
		displayField: 'examname',
		valueField: 'examcode',
		flex: 1,
		queryMode: 'remote',
		pageSize: 30
	},{
		
		xtype: 'monthfield',
		format: 'F Y',
		padding: '0 7 0 0',
		value: ' ',
		name: 'GOVEXAMDATE',
		flex: 1
		
	},{
		xtype: 'textfield',
		padding: '0 7 0 0',
		name: 'GOVEXAMRATING',
		value: ' ',
		maxLength: 50,
		flex: 1
	}]
});
