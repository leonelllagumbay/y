
Ext.define("iBOSe.view.recruitment.applicant.AdditionalInfoView",{
    extend: "Ext.panel.Panel",
    xtype: "additionalinfoview",
    requires: [
        "iBOSe.view.recruitment.applicant.AdditionalInfoViewController",
        "iBOSe.view.recruitment.applicant.AdditionalInfoViewModel",
        "iBOSe.view.recruitment.applicant.AdditionalInfoGovExamView",
        "iBOSe.store.recruitment.applicant.ExamStore",
        "iBOSe.model.recruitment.applicant.ExamModel"
    ],

    controller: "recruitment-applicant-additionalinfoview",
    viewModel: {
        type: "recruitment-applicant-additionalinfoview"
    },

    title: 'ADDITIONAL INFORMATION',
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
					value: '<b>Government or Licensure Exam Passed</b>',
					flex: 1
				},{
					xtype: 'displayfield',
					value: '<b>Date Taken</b>',
					flex: 1
				},{
					xtype: 'displayfield',
					value: '<b>Rating</b>',
					flex: 1
				}]
				
			},{
				xtype: 'button',
				action: 'addgovexam',
				padding: 7,
				margin: 7,
				text: 'Add'
			},{
				xtype: 'textfield',
				cls: 'field-margin',
				name: 'BOARDEXAMRESULT',
				fieldLabel: 'Board Exam Results and Ratings',
				maxLength: 100,
				labelWidth: 300,
				width: 600
			},{
				xtype: 'textfield',
				cls: 'field-margin',
				name: 'LICENSECERT',
				fieldLabel: 'License and Certification of Present Profession',
				maxLength: 100,
				labelWidth: 300,
				width: 600
			},{
				xtype: 'textfield',
				cls: 'field-margin',
				name: 'LICENSENUMBER',
				fieldLabel: 'License Number',
				maxLength: 50,
				labelWidth: 300,
				width: 600
			}],  
		
		this.callParent(arguments);
	}
});
