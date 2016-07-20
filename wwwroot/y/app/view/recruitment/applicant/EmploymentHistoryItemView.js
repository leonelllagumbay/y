Ext.define("iBOSe.view.recruitment.applicant.EmploymentHistoryItemView",{
    extend: "Ext.panel.Panel",
    xtype: "employmenthistoryitemview",
    requires: [],
    
    width: '100%',
    border: true,
	layout: {
		type: 'hbox',
		align: 'left'
	},
	title: 'Employment 1',
	closable: true,
	defaults: {
		padding: 7
	},
	items: [{
		xtype: 'container',
		flex: 1,
		layout: {
			type: 'vbox',
			align: 'stretch'
		},
		defaults: {
			padding: '0 17 0 0'
		},
		items: [{
			xtype: 'textfield',
			fieldLabel: 'Company Name',
			maxLength: 50,
			name: 'EMPHISTORYNAME'
		},{
			xtype: 'textfield',
			width: 400,
			fieldLabel: 'Company Address',
			maxLength: 100,
			name: 'EMPHISTORYADDRESS'
		},{
			xtype: 'textfield',
			width: 400,
			fieldLabel: 'Contact Information',
			maxLength: 200,
			name: 'EMPHISTORYCONTACTINFO'
		},{  
			xtype: 'textfield',
			width: 400,
			fieldLabel: 'Last Position Held',
			maxLength: 50,
			name: 'EMPHISTORYLASTPOS'
		},{
			xtype: 'textareafield',
			width: 400,
			fieldLabel: 'Major Accomplishments',
			maxLength: 200,
			name: 'EMPHISTORYACCOMPLISHMENT'
		},{
			xtype: 'textareafield',
			width: 400,
			fieldLabel: 'Reason/s for leaving',
			maxLength: 255,
			name: 'EMPHISTORYLEAVEREASONS'
		}]  
	},{
		xtype: 'container',
		flex: 1,
		layout: {
			type: 'vbox',
			align: 'stretch'
		},
		defaults: {
			padding: '0 17 0 0'
		},
		items: [{
			xtype: 'monthfield',
		    format: 'F Y',
			fieldLabel: 'Date Employed',
			width: 400,
			name: 'EMPHISTORYDATEEMP'
		},{
			xtype: 'monthfield',
		    format: 'F Y',
			width: 400,
			fieldLabel: 'Date Separated',
			name: 'EMPHISTORYDATESEP'
			
		},{
			xtype: 'numberfield',
			width: 400,
			fieldLabel: 'Initial Salary',
			name: 'EMPHISTORYINISALARY',
			allowBlank: false,
			hidden: true,
			minValue: 0,
			maxValue: 1000000
		},{
			xtype: 'numberfield',
			width: 400,
			fieldLabel: 'Last Salary',
			name: 'EMPHISTORYLASTSALARY',
			allowBlank: false,
			minValue: 0,
			maxValue: 1000000
		},{
			xtype: 'textfield',
			width: 400,
			fieldLabel: 'Immediate Superior',
			maxLength: 30,
			name: 'EMPHISTORYSUPERIOR'
		},{
			xtype: 'textfield',
			width: 400,
			fieldLabel: 'Position',
			maxLength: 50,
			name: 'EMPHISTORYPOSITION'
		},{
			xtype: 'numberfield',
			width: 400,
			fieldLabel: 'Contact Number',
			maxLength: 15,
			name: 'EMPHISTORYCONTACTNO'
		}]
	}]
});
