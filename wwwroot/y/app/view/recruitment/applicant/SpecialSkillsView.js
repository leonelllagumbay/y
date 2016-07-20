
Ext.define("iBOSe.view.recruitment.applicant.SpecialSkillsView",{
    extend: "Ext.panel.Panel",
    xtype: "specialskillsview",
    requires: [
        "iBOSe.view.recruitment.applicant.SpecialSkillsViewController",
        "iBOSe.view.recruitment.applicant.SpecialSkillsViewModel",
        "iBOSe.store.recruitment.applicant.LevelOfExpertiseStore",
        "iBOSe.model.recruitment.applicant.LevelOfExpertiseModel",
        "iBOSe.view.recruitment.applicant.SpecialSkillsItemView"
    ],

    controller: "recruitment-applicant-specialskillsview",
    viewModel: {
        type: "recruitment-applicant-specialskillsview"
    },

    title: 'SPECIAL SKILLS',
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
					value: '<b>Equipment … Software and Others you are familiar with:</b>',
					flex: 6
				},{
					xtype: 'displayfield',
					value: '<b>Years of Experience</b>',
					hidden: true,
					flex: 1
				},{
					xtype: 'displayfield',
					value: '<b>Level of Expertise</b>',
					flex: 3
				}]
			},{
				xtype: 'specialskillsitemview'
			},{
				xtype: 'button',
				action: 'specialskills',
				text: 'Add',
				padding: 7,
				margin: 7
			}],
			
			
		this.callParent(arguments);
	}
});
