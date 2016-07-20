
Ext.define("iBOSe.view.recruitment.applicant.FamilyBackgroundView",{
    extend: "Ext.panel.Panel",
    xtype: "familybackgroundview",
    requires: [
        "iBOSe.view.recruitment.applicant.FamilyBackgroundViewController",
        "iBOSe.view.recruitment.applicant.FamilyBackgroundViewModel",
        "iBOSe.view.recruitment.applicant.FamilyBackgroundChildView",
        "iBOSe.view.recruitment.applicant.FamilyBackgroundSiblingView"
    ],

    controller: "recruitment-applicant-familybackgroundview",
    viewModel: {
        type: "recruitment-applicant-familybackgroundview"
    },

    title: 'FAMILY BACKGROUND',
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
					xtype: 'displayfield',
					flex: 5,
					value: '<b>Name</b>'
				},{
					xtype: 'displayfield',
					flex: 1,
					value: '<b>Age</b>'
				},{
					xtype: 'displayfield',
					flex: 3,
					value: '<b>Occupation</b>'
				},{
					xtype: 'displayfield',
					flex: 3,
					value: '<b>Company or School</b>'
				},{
					xtype: 'displayfield',
					flex: 2,
					value: '<b>Contact Number</b>'
				},{
					xtype: 'displayfield',
					flex: 2,
					value: '<b>Birthday</b>'
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
					flex: 5,
					name: 'FATHERFULLNAME',
					fieldLabel: 'Father*',
					allowBlank: false,
					maxLength: 50
				},{
					xtype: 'numberfield',
					flex: 1,
					name: 'FATHERAGE',
					id: 'FATHERAGEID',
					allowBlank: false,
					minValue: 0,
					maxValue: 99
				},{
					xtype: 'textfield',
					flex: 3,
					name: 'FATHEROCCUPATION',
					allowBlank: false,
					maxLength: 50
				},{
					xtype: 'textfield',
					flex: 3,
					name: 'FATHERCOMPANY',
					allowBlank: false,
					maxLength: 50
				},{
					xtype: 'numberfield',
					flex: 2,
					name: 'FATHERCONTACTNO',
					allowBlank: false,
					maxLength: 15
				},{
					xtype: 'datefield',
					flex: 2,
					name: 'FATHERBIRTHDAY',
					allowBlank: true
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
					xtype: 'checkboxfield',
					flex: 5,
					name: 'FATHERDECEASED',
					fieldLabel: 'Deceased?',
					labelAlign: 'right',
					uncheckedValue: 'N',
					value: 'Y',
					maxLength: 50
				}]
			},{
				xtype: 'container',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'center'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'textfield',
					flex: 5,
					name: 'MOTHERFULLNAME',
					allowBlank: false,
					maxLength: 50,
					fieldLabel: 'Mother*'
				},{
					xtype: 'numberfield',
					flex: 1,
					name: 'MOTHERAGE',
					id: 'MOTHERAGEID',
					allowBlank: false,
					minValue: 0,
					maxValue: 99
				},{
					xtype: 'textfield',
					flex: 3,
					name: 'MOTHEROCCUPATION',
					allowBlank: false,
					maxLength: 50
				},{
					xtype: 'textfield',
					flex: 3,
					name: 'MOTHERCOMPANY',
					allowBlank: false,
					maxLength: 50
				},{
					xtype: 'numberfield',
					flex: 2,
					name: 'MOTHERCONTACTNO',
					allowBlank: false,
					maxLength: 15
				},{
					xtype: 'datefield',
					flex: 2,
					name: 'MOTHERBIRTHDAY',
					allowBlank: true
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
					xtype: 'checkboxfield',
					flex: 5,
					name: 'MOTHERDECEASED',
					fieldLabel: 'Deceased?',
					labelAlign: 'right',
					uncheckedValue: 'N',
					value: 'Y',
					maxLength: 50
				}]
			},{
				xtype: 'container',
				id: 'spousepanelidid',
				width: '100%',
				layout: {
					type: 'hbox',
					align: 'center'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'checkboxfield',
					name: 'SPOUSEDECEASED',
					uncheckedValue: 'N',
					hidden: true
				},{
					xtype: 'textfield',
					id: 'spouseididone',
					flex: 5,
					name: 'SPOUSEFULLNAME',
					fieldLabel: 'Spouse*',
					emptyText: '(if married)',
					allowBlank: false,
					maxLength: 50
				},{
					xtype: 'numberfield',
					id: 'spouseididtwo',
					flex: 1,
					name: 'SPOUSEAGE',
					id: 'SPOUSEAGEID',
					allowBlank: false,
					minValue: 0,
					maxValue: 99
				},{
					xtype: 'textfield',
					id: 'spouseididthree',
					flex: 3,
					name: 'SPOUSEOCCUPATION',
					allowBlank: false,
					maxLength: 50
				},{
					xtype: 'textfield',
					id: 'spouseididfour',
					flex: 3,
					name: 'SPOUSECOMPANY',
					allowBlank: false,
					maxLength: 50
				},{
					xtype: 'numberfield',
					flex: 2,
					name: 'SPOUSECONTACTNO',
					maxLength: 15
				},{
					xtype: 'datefield',
					flex: 2,
					name: 'SPOUSEBIRTHDAY',
					allowBlank: true
				}]
			},{
				xtype: 'button',
				id: 'buttonchildone',
				text: 'Add a child',
				padding: 7,
				margin: 7,
				action: 'addchild'
			},{
				xtype: 'button',
				id: 'buttonbroone',
				text: 'Add Sibling',
				padding: 7,
				margin: 7,
				action: 'addsibling'
			},{
				xtype: 'displayfield',
				value: 'In case of emergency, please notify:'
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
					xtype: 'container',
					layout: {
						type: 'vbox',
						align: 'left'
					},
					defaults: {
						padding: '0 7 0 0'
					},
					items: [{
						xtype: 'textfield',
						name: 'INCASEEMERNAME',
						allowBlank: false,
						maxLength: 100,
						fieldLabel: 'Name*',
						width: 400
					},{
						xtype: 'textfield',
						name: 'INCASEEMERRELATION',
						allowBlank: false,
						maxLength: 30,
						fieldLabel: 'Relationship*',
						width: 400
					}]
				},{
					xtype: 'container',
					layout: {
						type: 'vbox',
						align: 'left'
					},
					defaults: {
						padding: '0 7 0 0'
					},
					items: [{
						xtype: 'numberfield',
						padding: '0 0 0 100',
						labelWidth: 150,
						name: 'INCASEEMERCELLNUM',
						allowBlank: false,
						maxLength: 15,
						fieldLabel: 'Cellphone Number*',
						width: 400
					},{
						xtype: 'numberfield',
						padding: '0 0 0 100',
						labelWidth: 150,
						name: 'INCASEEMERTELNUM',
						allowBlank: false,
						maxLength: 15,
						fieldLabel: 'Telephone Number*',
						width: 400
					}]
				}]
			},{
				xtype: 'displayfield',
				value: 'Relatives/Friends Working in Filinvest Group of Companies:'
			},{
				xtype: 'panel',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'displayfield',
					flex: 1,
					value: '<b>Name</b>'
				},{
					xtype: 'displayfield',
					flex: 1,
					value: '<b>Company\'s Name or Occupation</b>'
				},{
					xtype: 'displayfield',
					flex: 1,
					value: '<b>Degree of Afinity</b>'
				}]
			},{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'textfield',
					name: 'RELWORKINNAMEONE',
					maxLength: 30,
					flex: 1
				},{
					xtype: 'textfield',
					name: 'RELWORKINCOMPONE',
					maxLength: 50,
					flex: 1
				},{
					xtype: 'textfield',
					name: 'RELWORKINAFINITYONE',
					maxLength: 50,
					flex: 1
				}]
			},{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'textfield',
					name: 'RELWORKINNAMETWO',
					maxLength: 30,
					flex: 1
				},{
					xtype: 'textfield',
					name: 'RELWORKINCOMPTWO',
					maxLength: 50,
					flex: 1
				},{
					xtype: 'textfield',
					name: 'RELWORKINAFINITYTWO',
					maxLength: 50,
					flex: 1
				}]
			},{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'textfield',
					name: 'RELWORKINNAMETHREE',
					maxLength: 30,
					flex: 1
				},{
					xtype: 'textfield',
					name: 'RELWORKINCOMPTHREE',
					maxLength: 50,
					flex: 1
				},{
					xtype: 'textfield',
					name: 'RELWORKINAFINITYTHREE',
					maxLength: 50,
					flex: 1
				}]
			}],
		this.callParent(arguments);
	}
});
