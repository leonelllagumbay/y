
Ext.define("iBOSe.view.recruitment.applicant.OtherDetailsView",{
    extend: "Ext.panel.Panel",
    xtype: "otherdetailsview",
    requires: [
        "iBOSe.view.recruitment.applicant.OtherDetailsViewController",
        "iBOSe.view.recruitment.applicant.OtherDetailsViewModel"
    ],

    controller: "recruitment-applicant-otherdetailsview",
    viewModel: {
        type: "recruitment-applicant-otherdetailsview"
    },

    title: 'OTHER DETAILS',
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
					value: 'Have you ever had any serious physical or mental illness?',
					flex: 5
				},{
					xtype: 'radiofield',
					inputValue: 'Y',
					labelAlign: 'top',
					fieldLabel: 'Yes',
					name: 'HASOPILLNESS',
					flex: 1,
					listeners: {
						change: 'onOtherDetailsOneChange'
					}
				},{
					xtype: 'radiofield',
					inputValue: 'N',
					labelAlign: 'top',
					fieldLabel: 'No',
					name: 'HASOPILLNESS',
					flex: 1
				},{
					xtype: 'textfield',
					bind: {
						hidden: '{otherdetailsone}'
					},
					name: 'HASOPILLNESSNATURE',
					maxLength: 100,
					emptyText: 'If so, state nature',
					flex: 5
				}]
			},{
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
					value: 'Do you have any allergies? Please specify.',
					flex: 5
				},{
					xtype: 'radiofield',
					inputValue: 'Y',
					labelAlign: 'top',
					fieldLabel: 'Yes',
					name: 'HASDRUGSENSITIVE',
					flex: 1,
					listeners: {
						change: 'onOtherDetailsTwoChange'
					}
				},{
					xtype: 'radiofield',
					inputValue: 'N',
					labelAlign: 'top',
					fieldLabel: 'No',
					name: 'HASDRUGSENSITIVE',
					flex: 1
				},{
					xtype: 'textfield',
					name: 'HASDRUGSENSITIVENATURE',
					maxLength: 100,
					emptyText: 'If so, state nature',
					flex: 5,
					bind: {
						hidden: '{otherdetailstwo}'
					}
				}]
			},{
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
					value: 'Are you engaged in the use and trade of dangerous drugs?',
					flex: 5
				},{
					xtype: 'radiofield',
					inputValue: 'Y',
					labelAlign: 'top',
					fieldLabel: 'Yes',
					name: 'HASENGAGEDRUGS',
					flex: 1,
					listeners: {
						change: 'onOtherDetailsThreeChange'
					}
				},{
					xtype: 'radiofield',
					inputValue: 'N',
					labelAlign: 'top',
					fieldLabel: 'No',
					name: 'HASENGAGEDRUGS',
					flex: 1
				},{
					xtype: 'textfield',
					name: 'HASENGAGEDRUGSNATURE',
					maxLength: 100,
					emptyText: 'If so, state nature',
					flex: 5,
					bind: {
						hidden: '{otherdetailsthree}'
					}
				}]
			},{
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
					value: 'Are you engaged in any other businesses?',
					flex: 5
				},{
					xtype: 'radiofield',
					inputValue: 'Y',
					labelAlign: 'top',
					fieldLabel: 'Yes',
					name: 'HASINVOLVEBUSI',
					flex: 1,
					listeners: {
						change: 'onOtherDetailsFourChange'
					}
				},{
					xtype: 'radiofield',
					inputValue: 'N',
					labelAlign: 'top',
					fieldLabel: 'No',
					name: 'HASINVOLVEBUSI',
					flex: 1
				},{
					xtype: 'textfield',
					name: 'HASINVOLVEBUSINATURE',
					maxLength: 100,
					emptyText: 'If so, state nature',
					flex: 5,
					bind: {
						hidden: '{otherdetailsfour}'
					}
				}]
				
			},{
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
					value: 'Have you been dismissed or suspended in your previous employments?',
					flex: 5
				},{
					xtype: 'radiofield',
					inputValue: 'Y',
					labelAlign: 'top',
					fieldLabel: 'Yes',
					name: 'HASSUSPENDED',
					flex: 1,
					listeners: {
						change: 'onOtherDetailsFiveChange'
					}
				},{
					xtype: 'radiofield',
					inputValue: 'N',
					labelAlign: 'top',
					fieldLabel: 'No',
					name: 'HASSUSPENDED',
					flex: 1
				},{
					xtype: 'textfield',
					name: 'HASSUSPENDEDNATURE',
					maxLength: 100,
					emptyText: 'If so, state nature',
					flex: 5,
					bind: {
						hidden: '{otherdetailsfive}'
					}
				}]
			},{
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
					value: 'Have you ever been convicted in any administrative, civil or criminal case?',
					flex: 5
				},{
					xtype: 'radiofield',
					inputValue: 'Y',
					labelAlign: 'top',
					fieldLabel: 'Yes',
					name: 'HASCRIMINAL',
					flex: 1,
					listeners: {
						change: 'onOtherDetailsSixChange'
					}
				},{
					xtype: 'radiofield',
					inputValue: 'N',
					labelAlign: 'top',
					fieldLabel: 'No',
					name: 'HASCRIMINAL',
					flex: 1
				},{
					xtype: 'textfield',
					name: 'HASCRIMINALNATURE',
					maxLength: 100,
					emptyText: 'If so, state nature',
					flex: 5,
					bind: {
						hidden: '{otherdetailssix}'
					}
				}]
			}],
	
		this.callParent(arguments);
	}
});
