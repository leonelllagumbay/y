
Ext.define("iBOSe.view.banking.RecordDeposits",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.banking.RecordDepositsController",
        "iBOSe.view.banking.RecordDepositsModel"
    ],
    xtype: "iboserecorddeposits",
    title: "eRecordDeposits",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "banking-recorddeposits",
    viewModel: {
        type: "banking-recorddeposits"
    },

    html: "Hello, eRecordDeposits!!"
});
