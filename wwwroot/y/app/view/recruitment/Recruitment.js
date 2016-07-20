
Ext.define("iBOSe.view.recruitment.Recruitment",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.recruitment.RecruitmentController",
        "iBOSe.view.recruitment.RecruitmentModel"
    ],
    xtype: "iboserecruitment",
    title: "eRecruitment",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "recruitment-recruitment",
    viewModel: {
        type: "recruitment-recruitment"
    },

    html: "Hello, eRecruitment!!"
});
