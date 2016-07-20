
Ext.define("iBOSe.view.recruitment.JobPosting",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.recruitment.JobPostingController",
        "iBOSe.view.recruitment.JobPostingModel"
    ],
    xtype: "ibosejobposting",
    title: "eJobPosting",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "recruitment-jobposting",
    viewModel: {
        type: "recruitment-jobposting"
    },

    html: "Hello, eJobPosting!!"
});
