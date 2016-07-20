
Ext.define("iBOSe.view.recruitment.applicant.EmploymentInfoView",{
    extend: "Ext.panel.Panel",
    xtype: "employmentinfoview",
    requires: [
        "iBOSe.view.recruitment.applicant.EmploymentInfoViewController",
        "iBOSe.view.recruitment.applicant.EmploymentInfoViewModel",
        "iBOSe.store.recruitment.applicant.CompanyStore",
        "iBOSe.model.recruitment.applicant.CompanyModel",
        "iBOSe.store.recruitment.applicant.PositionStore",
        "iBOSe.model.recruitment.applicant.PositionModel",
        "Ext.toolbar.Paging"
    ],

    controller: "recruitment-applicant-employmentinfoview",
    viewModel: {
        type: "recruitment-applicant-employmentinfoview"
    },

    title: 'EMPLOYMENT INFORMATION',
	width: '100%', 
	height: '100%',
	'overflow-y': 'auto',
	'overflow-x': 'hidden',
	collapsible: true,
	defaults: {
		anchor: '100%',
		padding: '7 0 0 0'
	},
    defaultType: 'textfield',
	initComponent: function() {   
		this.items = [{
				xtype: 'displayfield',
				value: 'Positions Applied For:'
				
			},{
				xtype: 'container',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
						fieldLabel: 'First Choice Company',
						allowBlank: false,
						name: 'COMPANYFIRSTPRIORITY',
						//value: getURLParameter('companycode') || getURLParameter('company') || '',
						xtype: 'combobox',
						labelAlign: 'top',
						store: {
					    	type: 'ibosecompanystore'
					    },
						minChars: 1,
						editable: false,
						queryMode: 'remote',
						pageSize: 30,
						displayField: 'companyname',
						valueField: 'companycode',
						flex: 2
				},{
						fieldLabel: 'First Choice',
						allowBlank: false,
						name: 'POSITIONFIRSTPRIORITY',
						xtype: 'combobox',
						//value: getURLParameter('position') || getURLParameter('positioncode') || '',
						labelAlign: 'top',
						store: {
					    	type: 'ibosepositionstore'
					    },
					    queryMode: 'remote',
						minChars: 20,
						editable: false,
						pageSize: 30,
						displayField: 'positionname',
						valueField: 'positioncode',
						flex: 2
				}]
			},{
				xtype: 'container',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
						fieldLabel: 'Second Choice Company',
						name: 'COMPANYSECONDPRIORITY',
						xtype: 'combobox',
						labelAlign: 'top',
						flex: 2,
						store: {
					    	type: 'ibosecompanystore'
					    },
						minChars: 1,
						forceSelection: true,
						pageSize: 30,
						displayField: 'companyname',
						valueField: 'companycode'
				},{
						fieldLabel: 'Second Choice',
						name: 'POSITIONSECONDPRIORITY',
						xtype: 'combobox',
						labelAlign: 'top',
						flex: 2,
						store: {
					    	type: 'ibosepositionstore'
					    },
						minChars: 1,
						forceSelection: true,
						pageSize: 30,
						displayField: 'positionname',
						valueField: 'positioncode'
				}]
			},{
				xtype: 'container',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
						fieldLabel: 'Third Choice Company',
						name: 'COMPANYTHIRDPRIORITY',
						xtype: 'combobox',
						labelAlign: 'top',
						flex: 2,
						store: {
					    	type: 'ibosecompanystore'
					    },
						minChars: 1,
						forceSelection: true,
						pageSize: 30,
						displayField: 'companyname',
						valueField: 'companycode'
				},{
						fieldLabel: 'Third Choice',
						name: 'POSITIONTHIRDPRIORITY',
						xtype: 'combobox',
						labelAlign: 'top',
						flex: 2,
						store: {
					    	type: 'ibosepositionstore'
					    },
						minChars: 1,
						forceSelection: true,
						pageSize: 30,
						displayField: 'positionname',
						valueField: 'positioncode'
				}]
			},{
				xtype: 'container',
			
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'numberfield',
					name: 'EXPECTEDSALARY',
					fieldLabel: 'Expected Salary',
					value: 0,
					minValue: 0,
					maxValue: 1000000,
					width: 300
				},{
					xtype: 'numberfield',
					name: 'CURRENTSALARY',
					fieldLabel: 'Current Salary',
					padding: '0 0 0 50',
					value: 0,
					minValue: 0,
					maxValue: 1000000,
					width: 300
				}]
			},{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				
				items: [{
					xtype: 'displayfield',
					fieldLabel: 'Previously Employed with Filinvest Group of Companies?',
					labelWidth: 380
				},{
					xtype: 'radiofield',
					inputValue: 'N',
					labelWidth: 50,
					padding: '0 27 0 0',
					fieldLabel: 'No',
					name: 'PREVEMPLOYED'
				},{
					xtype: 'radiofield',
					inputValue: 'Y',
					fieldLabel: 'Yes',
					action: 'yesprevapplied',
					labelWidth: 50,
					action: 'PREVEMPLOYED',
					name: 'PREVEMPLOYED'
				}]
			},{
				xtype: 'container',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				
				items: [{
					xtype: 'container',
					width: '70%',
					layout: {
						type: 'hbox',
						align: 'left'
					},
					defaults: {
						padding: '0 7 0 0'
					},
					items: [{
						xtype: 'monthfield',
						format: 'F Y',
						name: 'PREVEMPLOYEDFROM',
						padding: '0 20 0 0',
						labelWidth: 50,
						fieldLabel: 'From',
						bind: {
							hidden: '{prevemployed}'
						},
						flex: 2
					},{
						xtype: 'monthfield',
						format: 'F Y',
						name: 'PREVEMPLOYEDTO',
						labelWidth: 50,
						fieldLabel: 'To',
						bind: {
							hidden: '{prevemployed}'
						},
						flex: 2
					}]
				}]
			},{
				xtype: 'container',
			
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'container',
					width: '100%',
					layout: {
						type: 'hbox',
						align: 'left'
					},
					defaults: {
						padding: '0 7 0 0'
					},
					items: [{
						xtype: 'displayfield',
					    fieldLabel: 'Previously Applied Here?',
						flex: 2
					},{
						xtype: 'radiofield',
						inputValue: 'N',
						fieldLabel: 'No',
						labelWidth: 50,
						name: 'PREVAPPLIED',
						margin: '0 10 0 0',
						flex: 1
					},{
						xtype: 'radiofield',
						inputValue: 'Y',
						labelWidth: 50,
						fieldLabel: 'Yes',
						name: 'PREVAPPLIED',
						action: 'PREVAPPLIED',
						//action: 'yesiapplied',
						margin: '0 10 0 0',
						flex: 3
					},{
						xtype: 'monthfield',
						name: 'PREVAPPLIEDLAST',
						format: 'F Y',
						fieldLabel: 'Last',
						bind: {
							hidden: '{prevappliedlast}'
						},
						labelWidth: 50,
						flex: 3
					},{
						xtype: 'datefield',
						name: 'DATEAVAILEMP',
						fieldLabel: 'Date Available for Employment',
						flex: 4,
						margin: '0 0 0 10'
					}]
				}]
			}],
			
			
		this.callParent(arguments);
	}
});
