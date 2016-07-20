
Ext.define("iBOSe.view.banking.PrintChecks",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.banking.PrintChecksController",
        "iBOSe.view.banking.PrintChecksModel"
    ],
    xtype: "iboseprintchecks",
    title: "ePrintChecks",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "banking-printchecks",
    viewModel: {
        type: "banking-printchecks"
    },

    html: "Hello, ePrintChecks!!"
});
