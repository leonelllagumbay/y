
Ext.define("iBOSe.view.recruitment.applicant.TrainingsView",{
    extend: "Ext.panel.Panel",
    xtype: "trainingsandseminarview",
    requires: [
        "iBOSe.view.recruitment.applicant.TrainingsViewController",
        "iBOSe.view.recruitment.applicant.TrainingsViewModel",
        "iBOSe.view.recruitment.applicant.TrainingsItemView"
    ],

    controller: "recruitment-applicant-trainingsview",
    viewModel: {
        type: "recruitment-applicant-trainingsview"
    },

    title: 'TRAININGS AND SEMINARS',
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
					value: '<b>Topic</b>',
					flex: 1
				},{
					xtype: 'displayfield',
					value: '<b>Date</b>',
					flex: 1
				},{
					xtype: 'displayfield',
					value: '<b>Organizer</b>',
					flex: 1
				}]
				
			},{
				xtype: 'button',
				action: 'trainingandseminars',
				text: 'Add',
				margin: 7,
				padding: 7
			}],
			
		this.callParent(arguments);
	}
});
