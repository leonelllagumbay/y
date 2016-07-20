
Ext.define("iBOSe.view.recruitment.MRFStatus",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.recruitment.MRFStatusController",
        "iBOSe.view.recruitment.MRFStatusModel"
    ],
    xtype: "ibosemrfstatus",
    title: "eMRFStatus",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "recruitment-mrfstatus",
    viewModel: {
        type: "recruitment-mrfstatus"
    },

    html: "Hello, eMRFStatus!!"
});
