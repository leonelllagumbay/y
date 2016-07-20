
Ext.define("iBOSe.view.recruitment.applicant.PersonnalInfoView",{
    extend: "Ext.panel.Panel",
    xtype: "personalinfoview",
    requires: [
        "iBOSe.view.recruitment.applicant.PersonnalInfoViewController",
        "iBOSe.view.recruitment.applicant.PersonnalInfoViewModel",
        "iBOSe.store.recruitment.applicant.GenderStore",
        "iBOSe.model.recruitment.applicant.GenderModel",
        "iBOSe.store.recruitment.applicant.CivilStatusStore",
        "iBOSe.model.recruitment.applicant.CivilStatusModel",
        "iBOSe.model.vtype.recruitment.TinFormat",
        "iBOSe.model.vtype.recruitment.PhilHealthFormat",
        "iBOSe.model.vtype.recruitment.PagIbigFormat",
        "iBOSe.model.vtype.recruitment.SSSFormat"
    ],

    controller: "recruitment-applicant-personnalinfoview",
    viewModel: {
        type: "recruitment-applicant-personnalinfoview"
    },

    title: 'PERSONAL INFORMATION',
	width: '100%', 
	height: '100%',
	'overflow-y': 'auto',
	'overflow-x': 'hidden',
	defaults: {
		anchor: '100%',
		padding: '7 0 0 0'
	},
    defaultType: 'textfield',
    collapsible: true,
	initComponent: function() {   
		this.items = [{
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
					xtype: 'textfield',
					fieldLabel: 'Last name*',
					name: 'LASTNAME',
					allowBlank: false,
					maxLength: 30,
					labelAlign: 'top',
					flex: 2
				},{
					xtype: 'textfield',
					name: 'FIRSTNAME',
					fieldLabel: 'First name*',
					allowBlank: false,
					maxLength: 30,
					labelAlign: 'top',
					flex: 2
				},{
					xtype: 'textfield',
					name: 'MIDDLENAME',
					fieldLabel: 'Middle name*',
					allowBlank: false,
					maxLength: 30,
					labelAlign: 'top',
					flex: 2
				},{
					xtype: 'textfield',
					name: 'SUFFIX',
					fieldLabel: 'Suffix',
					maxLength: 10,
					labelAlign: 'top',
					flex: 1
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
					xtype: 'textfield',
					name: 'PRESENTADDRESSPOSTAL',
					allowBlank: false,
					maxLength: 250,
					fieldLabel: 'Present Address and Postal Code*',
					labelAlign: 'top',
					flex: 6
				},{
					xtype: 'radiofield',
					name: 'PRESENTADDRESSOWN',
					fieldLabel: 'Owned',
					inputValue: 'Owned',
					labelAlign: 'top',
					flex: 1
				},{
					xtype: 'radiofield',
					name: 'PRESENTADDRESSOWN',
					fieldLabel: 'Living with relatives',
					inputValue: 'Living with relatives',
					labelAlign: 'top',
					flex: 2
				},{
					xtype: 'radiofield',
					name: 'PRESENTADDRESSOWN',
					fieldLabel: 'Rented',
					inputValue: 'Rented',
					labelAlign: 'top',
					flex: 1
				},{
					xtype: 'radiofield',
					name: 'PRESENTADDRESSOWN',
					fieldLabel: 'Others',
					inputValue: ' ',
					labelAlign: 'top',
					flex: 1,
					listeners: {
						change: 'onPresentOtherChange'
					}
				},{
					xtype: 'textfield',
					name: 'PRESENTADDRESSOWN',
					fieldLabel: 'Others, specify',
					bind: {
						hidden: '{presentaddressselected}'
					},
					maxLength: 15,
					labelAlign: 'top',
					flex: 3
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
					xtype: 'textfield',
					name: 'PROVINCIALADDRESSPOSTAL',
					allowBlank: false,
					maxLength: 250,
					fieldLabel: 'Probationary Address and Postal Code*',
					labelAlign: 'top',
					flex: 6
				},{
					xtype: 'radiofield',
					name: 'PROVINCEADDRESSOWN',
					fieldLabel: 'Owned',
					inputValue: 'Owned',
					labelAlign: 'top',
					flex: 1
				},{
					xtype: 'radiofield',
					name: 'PROVINCEADDRESSOWN',
					fieldLabel: 'Living with relatives',
					inputValue: 'Living with relatives',
					labelAlign: 'top',
					flex: 2
				},{
					xtype: 'radiofield',
					name: 'PROVINCEADDRESSOWN',
					fieldLabel: 'Rented',
					inputValue: 'Rented',
					labelAlign: 'top',
					flex: 1
				},{
					xtype: 'radiofield',
					name: 'PROVINCEADDRESSOWN',
					fieldLabel: 'Others',
					inputValue: ' ',
					labelAlign: 'top',
					flex: 1,
					listeners: {
						change: 'onProbationaryOtherChange'
					}
				},{
					xtype: 'textfield',
					name: 'PROVINCEADDRESSOWN',
					fieldLabel: 'Others, specify',
					maxLength: 15,
					labelAlign: 'top',
					flex: 3,
					bind: {
						hidden: '{probationaryaddresssel}'
					}
				}]
			},{
				xtype: 'panel',
				width: '100%',
				layout: {
					type:'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'numberfield',
					fieldLabel: 'Cellphone Number*',
					name: 'CELLPHONENUMBER', 
					labelWidth: 130,
					allowBlank: false,
					maxLength: 15,
					width: 400,
					flex: 2
				},{
					xtype: 'numberfield',
					name: 'LANDLINENUMBER',
					fieldLabel: 'Landline Number',
					maxLength: 15,
					padding: '0 0 0 50',
					labelWidth: 130,
					width: 400,
					flex: 2
				},{
					xtype: 'textfield',
					name: 'EMAILADDRESS',
					emptyText: 'myemail@someone.com',
					allowBlank: false,
					maxLength: 50,
					padding: '0 0 0 50',
					labelWidth: 130,
					width: 400,
					fieldLabel: 'Email Address*',
					vtype: 'email',
					flex: 2
				}]
			},{
				xtype: 'panel',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'datefield',
					fieldLabel: 'Date of Birth*',
					name: 'DATEOFBIRTH',
					allowBlank: false,
					labelAlign: 'top',
					listeners: {
						change: 'onDateOfBirthChange'
					},
					flex: 3
				},{
					xtype: 'textfield',
					name: 'PLACEOFBIRTH',
					allowBlank: false,
					maxLength: 100,
					fieldLabel: 'Place of Birth*',
					labelAlign: 'top',
					flex: 4
				},{
					xtype: 'numberfield',
					name: 'AGE',
					readOnly: true,
					fieldLabel: '<span title="Please provide birth date to update this field.">Age*</span>',
					labelAlign: 'top',
					allowBlank: false,
					value: 0,
					minValue: 0,
					maxValue: 99,
					flex: 1
				},{
					xtype: 'combobox',
					editable: false,
					fieldLabel: 'Gender*',
					name: 'GENDER',
					allowBlank: false,
					labelAlign: 'top',
					queryMode: 'remote',
					store: {
				    	type: 'ibosegenderstore'
				    },
					displayField: 'gendername',
					valueField: 'gendercode',
					flex: 2
					
				},{
					xtype: 'combobox',
					editable: false,
					fieldLabel: 'Civil Status*',
					id: 'cciivviillstatusid',
					name: 'CIVILSTATUS',
					allowBlank: false,
					labelAlign: 'top',
					store: {
				    	type: 'ibosecivilstatusstore'
				    },
				    queryMode: 'remote',
					displayField: 'civilstatusname',
					valueField: 'civilstatuscode',
					listeners: {
						change: 'onCivilStatusChange'
					},
					flex: 2
				}]
			},{
				xtype: 'panel',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'combobox',
					editable: true,
					fieldLabel: 'Citizenship*',
					name: 'CITIZENSHIP',
					allowBlank: false,
					labelAlign: 'top',
					//store: 'recruitment.applicationonline.citizenshipstore',
					store: {
				    	type: 'iboseschoolstore'
				    },
					displayField: 'citizenshipname',
					valueField: 'citizenshipcode',
					flex: 3
				},{
					xtype: 'textfield',
					editable: true,
					fieldLabel: 'ACR No. ',
					name: 'ACRNUMBER',
					maxLength: 15,
					padding: '0 0 0 50',
					labelAlign: 'top',
					flex: 3
				},{
					xtype: 'combobox',
					editable: true,
					fieldLabel: 'Religion',
					padding: '0 0 0 50',
					name: 'RELIGION',
					labelAlign: 'top',
					//store: 'recruitment.applicationonline.religionstore',
					store: {
				    	type: 'iboseschoolstore'
				    },
					displayField: 'religionname',
					valueField: 'religioncode',
					flex: 3
				}]
			},{
				xtype: 'panel',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'textfield',
					fieldLabel: 'SSS <i>(XX-XXXXXXX-X)</i>',
					name: 'SSSNUMBER',
					labelAlign: 'top',
					allowBlank: true,
					vtype: 'sssformat',
					emptyText: 'XX-XXXXXXX-X',
					flex: 2
				},{
					xtype: 'textfield',
					name: 'TINNUMBER',
					padding: '0 0 0 50',
					fieldLabel: 'TIN <i>(XXX-XXX-XXX)</i>',
					labelAlign: 'top',
					allowBlank: true,
					vtype: 'tinformat',
					emptyText: 'XXX-XXX-XXX',
					flex: 2
				},{
					xtype: 'textfield',
					name: 'PHILHEALTHNUMBER',
					fieldLabel: 'PhilHealth <i>(XX-XXXXXXXXX-X)</i>',
					padding: '0 0 0 50',
					labelAlign: 'top',
					allowBlank: true,
					vtype: 'phformat',
					emptyText: 'XX-XXXXXXXXX-X',
					flex: 2
				},{
					xtype: 'textfield',
					name: 'PAGIBIGNUMBER',
					padding: '0 0 0 50',
					fieldLabel: 'PAG-IBIG <i>(XXXX-XXXX-XXXX)</i>',
					labelAlign: 'top',
					allowBlank: true,
					vtype: 'pagibigformat',
					emptyText: 'XXXX-XXXX-XXXX',
					flex: 2
				}]
			},{
				xtype: 'panel',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'left'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'textfield',
					fieldLabel: 'Height',
					name: 'HEIGHT', 
					maxLength: 15,
					labelWidth: 40,
					flex: 5
				},{
					xtype: 'radiofield',
					name: 'HEIGHT',
					fieldLabel: 'cm',
					inputValue: 'cm',
					labelAlign: 'top',
					flex: 1
				},{
					xtype: 'radiofield',
					name: 'HEIGHT',
					fieldLabel: 'in',
					inputValue: 'in',
					labelAlign: 'top',
					flex: 1
				},{
					xtype: 'textfield',
					name: 'WEIGHT',
					fieldLabel: 'Weight',
					labelWidth: 50,
					padding: '0 0 0 30',
					maxLength: 15,
					flex: 5
				},{
					xtype: 'radiofield',
					name: 'WEIGHT',
					fieldLabel: 'lb',
					inputValue: 'lb',
					labelAlign: 'top',
					flex: 1
				},{
					xtype: 'radiofield',
					name: 'WEIGHT',
					fieldLabel: 'kg',
					inputValue: 'kg',
					labelAlign: 'top',
					flex: 1
				},{
					xtype: 'textfield',
					name: 'BLOODTYPE',
					fieldLabel: 'Blood Type',
					labelWidth: 65,
					padding: '0 0 0 30',
					maxLength: 2,
					flex: 6
				},{
					xtype: 'textfield',
					labelAlign: 'right',
					name: 'LANGUAGESPOKEN',
					fieldLabel: 'Languages and Dialects Spoken/Written',
					maxLength: 50,
					flex: 11
				}]
			}],
			
		this.callParent(arguments);
	}
});
