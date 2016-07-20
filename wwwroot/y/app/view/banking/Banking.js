
Ext.define("iBOSe.view.banking.Banking",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.banking.BankingController",
        "iBOSe.view.banking.BankingModel"
    ],
    xtype: "ibosebanking",
    title: "eBanking",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "banking-banking",
    viewModel: {
        type: "banking-banking"
    },

    html: "Hello, eBanking!!"
});
