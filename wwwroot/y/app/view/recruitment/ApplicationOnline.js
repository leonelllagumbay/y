
Ext.define("iBOSe.view.recruitment.ApplicationOnlines",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.recruitment.ApplicationOnlineController",
        "iBOSe.view.recruitment.ApplicationOnlineModel",
        "iBOSe.view.recruitment.applicant.AdditionalInfoView",
        "iBOSe.view.recruitment.applicant.EducationalBackgroundView",
        "iBOSe.view.recruitment.applicant.EmploymentInfoView",
        "iBOSe.view.recruitment.applicant.ExtraCurricularView",
        "iBOSe.view.recruitment.applicant.FamilyBackgroundView",
        "iBOSe.view.recruitment.applicant.FooterView",
        "iBOSe.view.recruitment.applicant.InstructionView",
        "iBOSe.view.recruitment.applicant.OtherDetailsView",
        "iBOSe.view.recruitment.applicant.PersonnalInfoView",
        "iBOSe.view.recruitment.applicant.ReferencesView",
        "iBOSe.view.recruitment.applicant.SourceView",
        "iBOSe.view.recruitment.applicant.SpecialSkillsView",
        "iBOSe.view.recruitment.applicant.TrainingsView",
        "iBOSe.view.recruitment.applicant.EmploymentHistoryView"
    ],
    xtype: "iboseapplicationonline",
    title: "EMPLOYMENT APPLICATION FORM",
    titleAlign: "center",
    buttonAlign: 'center',
    padding: "0 0 20 0",
    height: "100%",
    closable: true,
    collapsible: true,
    defaults: {
    	margin: "37 0 0 0"
    },
    controller: "recruitment-applicationonline",
    viewModel: {
        type: "recruitment-applicationonline"
    },

    items: [{
    	xtype: "instructionview"
    },{
    	xtype: "employmentinfoview"
    },{
    	xtype: "personalinfoview"
    },{
    	xtype: "educationalbackgroundview"
    },{
    	xtype: "familybackgroundview"
    },{
    	xtype: "additionalinfoview"
    },{
    	xtype: "employmenthistoryview"
    },{
    	xtype: "extracurricularview"
    },{
    	xtype: "specialskillsview"
    },{
    	xtype: "trainingsandseminarview"
    },{
    	xtype: "sourceview"
    },{
    	xtype: "referencesview"
    },{
    	xtype: "otherdetailsview"
    },{
    	xtype: "footerview"
    }],
    
    buttons: [{
		type: 'submit',
		name: 'submitonlineapp',
		action: 'submitonlineapp',
		text: '<b>Submit</b>',
		padding: '5 25 5 25',
		id: 'buttonsubmitid'
	}]
});
