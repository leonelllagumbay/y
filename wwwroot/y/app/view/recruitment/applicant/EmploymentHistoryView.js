
Ext.define("iBOSe.view.recruitment.applicant.EmploymentHistoryView",{
    extend: "Ext.panel.Panel",
    xtype: "employmenthistoryview",
    requires: [
        "iBOSe.view.recruitment.applicant.EmploymentHistoryViewController",
        "iBOSe.view.recruitment.applicant.EmploymentHistoryViewModel",
        "iBOSe.view.recruitment.applicant.EmploymentHistoryItemView"
    ],

    controller: "recruitment-applicant-employmenthistoryview",
    viewModel: {
        type: "recruitment-applicant-employmenthistoryview"
    },

    title: 'EMPLOYMENT HISTORY',
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
				value: 'Fill-up the following legibly. Start from the most recent employment.'
			},{
				xtype: 'tabpanel',
				
				items: [{
					xtype: 'employmenthistoryitemview'
				}]
			},{
				xtype: 'button',
				action: 'addemploymenthistory',
				text: 'Add',
				padding: 7,
				margin: 7
			}],
				
		this.callParent(arguments);
	}
});
