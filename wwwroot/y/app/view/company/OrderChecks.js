
Ext.define("iBOSe.view.company.OrderChecks",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.company.OrderChecksController",
        "iBOSe.view.company.OrderChecksModel"
    ],
    xtype: "iboseorderchecks",
    title: "eOrderChecks",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "company-orderchecks",
    viewModel: {
        type: "company-orderchecks"
    },

    html: "Hello, eOrderChecks!!"
});
