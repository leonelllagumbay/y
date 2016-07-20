
Ext.define("iBOSe.view.recruitment.applicant.ExtraCurricularView",{
    extend: "Ext.panel.Panel",
    xtype: "extracurricularview",
    requires: [
        "iBOSe.view.recruitment.applicant.ExtraCurricularViewController",
        "iBOSe.view.recruitment.applicant.ExtraCurricularViewModel",
        "iBOSe.view.recruitment.applicant.ExtraCurricularItemView"
    ],

    controller: "recruitment-applicant-extracurricularview",
    viewModel: {
        type: "recruitment-applicant-extracurricularview"
    },

    title: 'EXTRA CURRICULAR',
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
					value: '<b>Name of Organization</b>',
					flex: 1
				},{
					xtype: 'displayfield',
					value: '<b>Inclusive Dates</b>',
					flex: 1
				},{
					xtype: 'displayfield',
					value: '<b>Highest Position Held</b>',
					flex: 1
				}]
				
			},{
				xtype: 'button',
				action: 'extracurricular',
				text: 'Add extra curricular',
				padding: 7,
				margin: 7
			}], 
			
		this.callParent(arguments);
	}
});
