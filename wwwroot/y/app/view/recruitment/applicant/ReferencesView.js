
Ext.define("iBOSe.view.recruitment.applicant.ReferencesView",{
    extend: "Ext.panel.Panel",
    xtype: "referencesview",
    requires: [
        "iBOSe.view.recruitment.applicant.ReferencesViewController",
        "iBOSe.view.recruitment.applicant.ReferencesViewModel"
    ],

    controller: "recruitment-applicant-referencesview",
    viewModel: {
        type: "recruitment-applicant-referencesview"
    },

    title: 'REFERENCES',
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
					align: 'stretch'
				},
				defaults: {
					padding: '0 7 0 0'
				},
				items: [{
					xtype: 'displayfield',
					value: '<b>Name*</b>',
					flex: 2
				},{
					xtype: 'displayfield',
					value: '<b>Occupation*</b>',
					flex: 2
				},{
					xtype: 'displayfield',
					value: '<b>Company*</b>',
					flex: 2
				},{
					xtype: 'displayfield',
					value: '<b>Contact Number*</b>',
					flex: 1
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
					xtype: 'textfield',
					name: 'REFERENCENAME1',
					allowBlank: false,
					maxLength: 50,
					flex: 2
				},{
					xtype: 'textfield',
					name: 'REFERENCEOCCUPATION1',
					allowBlank: false,
					maxLength: 50,
					flex: 2
				},{
					xtype: 'textfield',
					name: 'REFERENCECOMPANY1',
					allowBlank: false,
					maxLength: 50,
					flex: 2
				},{
					xtype: 'numberfield',
					name: 'REFERENCECONTACT1',
					allowBlank: false,
					maxLength: 15,
					flex: 1
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
					xtype: 'textfield',
					name: 'REFERENCENAME2',
					allowBlank: false,
					maxLength: 50,
					flex: 2
				},{
					xtype: 'textfield',
					name: 'REFERENCEOCCUPATION2',
					allowBlank: false,
					maxLength: 50,
					flex: 2
				},{
					xtype: 'textfield',
					name: 'REFERENCECOMPANY2',
					allowBlank: false,
					maxLength: 50,
					flex: 2
				},{
					xtype: 'numberfield',
					name: 'REFERENCECONTACT2',
					allowBlank: false,
					maxLength: 15,
					flex: 1
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
					xtype: 'textfield',
					name: 'REFERENCENAME3',
					allowBlank: false,
					maxLength: 50,
					flex: 2
				},{
					xtype: 'textfield',
					name: 'REFERENCEOCCUPATION3',
					allowBlank: false,
					maxLength: 50,
					flex: 2
				},{
					xtype: 'textfield',
					name: 'REFERENCECOMPANY3',
					allowBlank: false,
					maxLength: 50,
					flex: 2
				},{
					xtype: 'numberfield',
					name: 'REFERENCECONTACT3',
					allowBlank: false,
					maxLength: 15,
					flex: 1
				}]
			}],
			
		this.callParent(arguments);
	}
});
