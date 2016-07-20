
Ext.define("iBOSe.view.banking.WriteChecks",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.banking.WriteChecksController",
        "iBOSe.view.banking.WriteChecksModel"
    ],
    xtype: "ibosewritechecks",
    title: "eWriteChecks",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "banking-writechecks",
    viewModel: {
        type: "banking-writechecks"
    },

    html: "Hello, eWriteChecks!!"
});
