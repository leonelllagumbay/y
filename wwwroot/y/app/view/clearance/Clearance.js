
Ext.define("iBOSe.view.clearance.Clearance",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.clearance.ClearanceController",
        "iBOSe.view.clearance.ClearanceModel"
    ],
    xtype: "iboseclearance",
    title: "eClearance",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "clearance-clearance",
    viewModel: {
        type: "clearance-clearance"
    },

    html: "Hello, eClearance!!"
});
